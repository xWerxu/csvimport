-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: kubki-reklamowe_lan_db1
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voivodeship` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `admin_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_70C0C6E66352511C` (`admin_user_id`),
  CONSTRAINT `FK_70C0C6E66352511C` FOREIGN KEY (`admin_user_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'biuro@moloh.pl','Moloh','+48 71 798 13 88','http://www.moloh.pl','ul. Ułańska 48','Wrocław','52-213','dolnoslaskie',1,NULL),(2,'biuro@mega-media.com.pl','Mega-Media','52 33 06 177','http://www.mega-media.com.pl','ul. Sienkiewicza 3','Świecie','86-100','kujawsko-pomorskie',1,NULL),(3,'biuro2@planetareklamy.eu','Planeta Reklamy','+48 664 555 811','https://www.planetareklamy.eu','ul. Paryska 3/5','Łódź','92-319','lodzkie',1,NULL),(4,'biuro@awmarketing.eu','AW Marketing','+48 693 876 929','http://www.awmarketing.eu','ul. Krokusowa 3','Łódź','92-101','lodzkie',0,NULL),(5,'agnieszka.warkocka@btlforms.com.pl','BTL Forms','667 019 565','http://www.btlforms.com.pl','ul. Kołacińska 66','Warszawa','03-171','mazowieckie',1,NULL),(6,'darek.p@elwira.com.pl','Elwira','22 622 90 81','https://www.elwira.com.pl','ul. Szara 14','Warszawa','00-420','mazowieckie',1,NULL),(7,'dnabywaniec@goldenberry.com.pl','Goldenberry Group','+48 (22) 841 32 37','http://goldenberry.com.pl','ul. Transportowców 23','Warszawa','02-858','mazowieckie',1,NULL),(8,'maciej.wisniewski@imexgraf.pl','Imex Graf','511 777 469','http://www.imexgraf.pl','ul. Jagiellońska 92','Warszawa','00-992','mazowieckie',0,NULL),(9,'aneta.kuch@ksr.com.pl','KSR','22 59 64 300','http://www.krs.com.pl','ul. Jasna 1','Warszawa','00-013','mazowieckie',1,NULL),(10,'marek@sensumart.pl','Sensum Art.','+48 22 616 07 22','https://sensumart.pl','ul. Grochowska 282/32','Warszawa','03-841','mazowieckie',1,NULL),(11,'marek.migda@silverbird.pl','Silverbird','22 868 46 80','http://www.silverbird.pl','ul. Zagadki 21','Warszawa','02-227','mazowieckie',1,NULL),(12,'reklama@wiesta.pl','Wiesta','22 724 00 65','http://www.wiesta.pl','ul. Orzeszkowej 4/6','Grodzisk Mazowiecki','05-827','mazowieckie',0,NULL),(13,'sara@prestige.soluma.pl','Prestige','+48 530 936 003','https://www.prestige.soluma.pl','ul. Żurawia 13','Olsztyn','11-041','warminsko-mazurskie',1,NULL),(14,'biuro@tech-media.pl','Tech-Media','22 122 13 00','https://www.tech-media.pl','ul. Złota 59','Warszawa','00-120','mazowieckie',1,NULL),(15,'b.nowakowski@tomascon.com.pl','Tomascon','+48 (22) 824 40 88','http://www.tomascon.com.pl','ul. Racławicka 146','Warszawa','02-117','mazowieckie',1,NULL),(16,'s.bac@medianord.pl','Media Nord','58 781 51 01','http://www.medianord.pl','ul. Kotwiczna 24','Gdynia','81-578','pomorskie',1,NULL),(17,'fux@fux.pl','Fux','(32) 273 18 60','http://www.fux.pl','ul. Bojkowska 37L','Gliwice','44-100','slaskie',1,NULL),(18,'pozytywnie@tubastudio.pl','Tubastudio','512 125 550','https://www.tubastudio.pl','ul. Sławka 5/110','Katowice','40-833','slaskie',1,NULL),(19,'varius@varius.net.pl','Varius','602 358 626','http://www.varius.net.pl','ul. Krakowska 201','Bielsko-Biała','43-300','slaskie',1,NULL),(20,'faktury@grupakarta.com','Grupa Karta','61 22 33 250','http://www.grupakarta.pl','ul. Komunalna 5','Granowo','62-066','wielkopolskie',1,NULL),(21,'biuro@boragifts.pl','Bora','','','','Warszawa','','mazowieckie',1,NULL),(22,'jacek@lemonart.com.pl','Lemon Art ','','','','Poznań','','wielkopolskie',1,NULL),(23,'reklama@malamut.pl','Malamut','','','','Warszawa','','mazowieckie',1,NULL),(24,'biuro@o2reklama.pl','O2','','','','Leszno','','wielkopolskie',0,NULL),(25,'k.gajewska@papilliogroup.pl','Papillio','','','','Zielona Góra','','lubuskie',1,NULL),(26,'b.lorych@pbspolska.pl','PBS Polska','','','','Poznań','','wielkopolskie',1,NULL),(28,'sara@prestige.soluma.pl','Prestige','','','','Warszawa','','mazowieckie',1,NULL),(29,'maciek@rewkom.com.pl','Rewkom','','','','Lublin','','lubelskie',1,NULL);
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_block`
--

DROP TABLE IF EXISTS `bitbag_cms_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_321C84CF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_block`
--

LOCK TABLES `bitbag_cms_block` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_block_channels`
--

DROP TABLE IF EXISTS `bitbag_cms_block_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_block_channels` (
  `block_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`block_id`,`channel_id`),
  KEY `IDX_8417B073E9ED820C` (`block_id`),
  KEY `IDX_8417B07372F5A1AA` (`channel_id`),
  CONSTRAINT `FK_8417B07372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8417B073E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_block` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_block_channels`
--

LOCK TABLES `bitbag_cms_block_channels` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_block_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_block_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_block_products`
--

DROP TABLE IF EXISTS `bitbag_cms_block_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_block_products` (
  `block_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`block_id`,`product_id`),
  KEY `IDX_C4B9089FE9ED820C` (`block_id`),
  KEY `IDX_C4B9089F4584665A` (`product_id`),
  CONSTRAINT `FK_C4B9089F4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C4B9089FE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_block` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_block_products`
--

LOCK TABLES `bitbag_cms_block_products` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_block_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_block_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_block_sections`
--

DROP TABLE IF EXISTS `bitbag_cms_block_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_block_sections` (
  `block_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`block_id`,`section_id`),
  KEY `IDX_5C95115DE9ED820C` (`block_id`),
  KEY `IDX_5C95115DD823E37A` (`section_id`),
  CONSTRAINT `FK_5C95115DD823E37A` FOREIGN KEY (`section_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5C95115DE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_block` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_block_sections`
--

LOCK TABLES `bitbag_cms_block_sections` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_block_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_block_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_block_translation`
--

DROP TABLE IF EXISTS `bitbag_cms_block_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_block_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bitbag_cms_block_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_32897FDF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_32897FDF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_block` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_block_translation`
--

LOCK TABLES `bitbag_cms_block_translation` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_block_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_block_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_faq`
--

DROP TABLE IF EXISTS `bitbag_cms_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_faq`
--

LOCK TABLES `bitbag_cms_faq` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_faq_channels`
--

DROP TABLE IF EXISTS `bitbag_cms_faq_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_faq_channels` (
  `faq_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`faq_id`,`channel_id`),
  KEY `IDX_FF6D59AC81BEC8C2` (`faq_id`),
  KEY `IDX_FF6D59AC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_FF6D59AC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_FF6D59AC81BEC8C2` FOREIGN KEY (`faq_id`) REFERENCES `bitbag_cms_faq` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_faq_channels`
--

LOCK TABLES `bitbag_cms_faq_channels` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_faq_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_faq_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_faq_translation`
--

DROP TABLE IF EXISTS `bitbag_cms_faq_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_faq_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `question` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bitbag_cms_faq_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8B30DD2E2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8B30DD2E2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_faq` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_faq_translation`
--

LOCK TABLES `bitbag_cms_faq_translation` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_faq_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_faq_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_media`
--

DROP TABLE IF EXISTS `bitbag_cms_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DB2BB2E177153098` (`code`),
  UNIQUE KEY `UNIQ_DB2BB2E1B548B0F` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_media`
--

LOCK TABLES `bitbag_cms_media` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_media` DISABLE KEYS */;
INSERT INTO `bitbag_cms_media` VALUES (48,'dreampen','image','/media/image/d1/b0/fa1178834e018fc72d889a76f9e9.png','image/png',1),(49,'beoriginal','image','/media/image/2a/ad/47b17a338eb8cd2a6ea1ccadca99.png','image/png',1),(50,'adpen','image','/media/image/38/34/0b085f9d2887f6a9a6dc76632204.png','image/png',1),(51,'ritterpen','image','/media/image/35/18/0b389f9e59b5cd104d505f93a940.png','image/png',1),(52,'leccepen','image','/media/image/17/03/1dde1dfe0125f2570632da30c182.png','image/png',1),(53,'parker','image','/media/image/85/49/e75a900461cc3f363974e374f0c5.png','image/png',1),(54,'waterman','image','/media/image/fa/1d/3dba903b2dadfb342002b2130189.png','image/png',1),(55,'porceline','image','/media/image/9f/3f/331ac73f4e7d70fa4e587b2452e9.png','image/png',1),(56,'citron','image','/media/image/9e/63/8786a14e921faa3cec84cd78a650.png','image/png',1),(57,'upominki','image','/media/image/5e/94/51626b004c02ba9192870e9a0fe6.png','image/png',1),(58,'kando','image','/media/image/6f/7a/370ce53f5dd89da74057ea35b4e3.png','image/png',1),(59,'ies','image','/media/image/93/82/b3541214a7219bd0ee1e96c0e099.png','image/png',1),(60,'headwear','image','/media/image/b5/85/7112024f4f59e5ffe70a6f3944dc.png','image/png',1),(61,'awih','image','/media/image/8d/b2/491b7e260e03ea45ae01b9891cf4.png','image/png',1),(62,'thinkme','image','/media/image/82/13/1fd1714639db481d1bbac00d8720.png','image/png',1),(63,'notedeco','image','/media/image/e7/5a/d552fb77368f89b2285f119c9660.png','image/png',1),(64,'graph','image','/media/image/63/50/9620e43d8f051ea280f6dd95b62d.png','image/png',1),(65,'guapa','image','/media/image/0a/9c/1c4dca78f56238c3770c066acc79.png','image/png',1),(66,'about','image','/media/image/64/ff/b9a3f6dfb16e9f1fff461f2dfac7.jpeg','image/jpeg',1),(67,'about_image_1','image','/media/image/b4/cf/33675baed77cf8525ecb71ae1dbe.jpeg','image/jpeg',1),(68,'roll_up','image','/media/image/ee/3e/34e3d20b982767dd34565ed99efb.jpeg','image/jpeg',1),(69,'Chrysanthemum','image','/media/image/96/e1/469a159ad08194c2382ca3d8fad9.jpeg','image/jpeg',1);
/*!40000 ALTER TABLE `bitbag_cms_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_media_channels`
--

DROP TABLE IF EXISTS `bitbag_cms_media_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_media_channels` (
  `block_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`block_id`,`channel_id`),
  KEY `IDX_D109622EE9ED820C` (`block_id`),
  KEY `IDX_D109622E72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_D109622E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D109622EE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_media_channels`
--

LOCK TABLES `bitbag_cms_media_channels` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_media_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_media_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_media_products`
--

DROP TABLE IF EXISTS `bitbag_cms_media_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_media_products` (
  `media_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`media_id`,`product_id`),
  KEY `IDX_91A7DAC2EA9FDD75` (`media_id`),
  KEY `IDX_91A7DAC24584665A` (`product_id`),
  CONSTRAINT `FK_91A7DAC24584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_91A7DAC2EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `bitbag_cms_media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_media_products`
--

LOCK TABLES `bitbag_cms_media_products` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_media_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_media_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_media_sections`
--

DROP TABLE IF EXISTS `bitbag_cms_media_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_media_sections` (
  `media_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`media_id`,`section_id`),
  KEY `IDX_98BC300EA9FDD75` (`media_id`),
  KEY `IDX_98BC300D823E37A` (`section_id`),
  CONSTRAINT `FK_98BC300D823E37A` FOREIGN KEY (`section_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_98BC300EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `bitbag_cms_media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_media_sections`
--

LOCK TABLES `bitbag_cms_media_sections` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_media_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_media_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_media_translation`
--

DROP TABLE IF EXISTS `bitbag_cms_media_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_media_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `alt` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bitbag_cms_media_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1FEC58972C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1FEC58972C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_media_translation`
--

LOCK TABLES `bitbag_cms_media_translation` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_media_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_media_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_page`
--

DROP TABLE IF EXISTS `bitbag_cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_18F07F1B77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_page`
--

LOCK TABLES `bitbag_cms_page` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_page` DISABLE KEYS */;
INSERT INTO `bitbag_cms_page` VALUES (1,'about',1,'2019-01-04 10:40:33','2019-01-04 10:40:33'),(5,'na-kazda-okazje',1,'2019-09-03 14:11:26','2019-09-03 14:11:27');
/*!40000 ALTER TABLE `bitbag_cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_page_channels`
--

DROP TABLE IF EXISTS `bitbag_cms_page_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_page_channels` (
  `page_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`channel_id`),
  KEY `IDX_DCA4269C4663E4` (`page_id`),
  KEY `IDX_DCA426972F5A1AA` (`channel_id`),
  CONSTRAINT `FK_DCA426972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DCA4269C4663E4` FOREIGN KEY (`page_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_page_channels`
--

LOCK TABLES `bitbag_cms_page_channels` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_page_channels` DISABLE KEYS */;
INSERT INTO `bitbag_cms_page_channels` VALUES (1,1),(5,1);
/*!40000 ALTER TABLE `bitbag_cms_page_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_page_image`
--

DROP TABLE IF EXISTS `bitbag_cms_page_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_page_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C9C589EA7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_C9C589EA7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `bitbag_cms_page_translation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_page_image`
--

LOCK TABLES `bitbag_cms_page_image` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_page_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_page_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_page_products`
--

DROP TABLE IF EXISTS `bitbag_cms_page_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_page_products` (
  `page_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`product_id`),
  KEY `IDX_4D64FA85C4663E4` (`page_id`),
  KEY `IDX_4D64FA854584665A` (`product_id`),
  CONSTRAINT `FK_4D64FA854584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4D64FA85C4663E4` FOREIGN KEY (`page_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_page_products`
--

LOCK TABLES `bitbag_cms_page_products` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_page_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_page_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_page_sections`
--

DROP TABLE IF EXISTS `bitbag_cms_page_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_page_sections` (
  `block_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`block_id`,`section_id`),
  KEY `IDX_D548E347E9ED820C` (`block_id`),
  KEY `IDX_D548E347D823E37A` (`section_id`),
  CONSTRAINT `FK_D548E347D823E37A` FOREIGN KEY (`section_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D548E347E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_page_sections`
--

LOCK TABLES `bitbag_cms_page_sections` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_page_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_page_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_page_translation`
--

DROP TABLE IF EXISTS `bitbag_cms_page_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_page_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_when_linked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_when_linked` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bitbag_cms_page_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_FDD074A62C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_FDD074A62C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_page_translation`
--

LOCK TABLES `bitbag_cms_page_translation` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_page_translation` DISABLE KEYS */;
INSERT INTO `bitbag_cms_page_translation` VALUES (1,1,'o-nas','O nas','O nas',NULL,NULL,NULL,NULL,'<p>&nbsp;&nbsp;&nbsp; Z dumą stwierdzamy, że niemal każdy nasz dzień zaczynamy od kubka. Pomaga nam on wypędzić spod powiek resztki snu. P&oacute;źniej, gdy praca wypełnia nas po brzegi, ukojenie znajdujemy zn&oacute;w w kubku. Daje chwilowe oderwanie od wiru spraw do załatwienia. Do obiadu serwujemy sobie kolejny kubek i na koniec pracy r&oacute;wnież kubek. A wiele z rzeczy pomiędzy kubkami też jest kubkami, bo kubki to nasza praca!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.tech-media.pl/photos/oasis,butelka,ze,stali,nierdzewnej,540,ml.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Jesteśmy agencją reklamową, kt&oacute;ra od 2001 roku istnieje na rynku. Gdy zauważyliśmy, że tak dużym zainteresowaniem cieszą się kubki reklamowe, dla wygody naszych klient&oacute;w wyodrębniliśmy je spośr&oacute;d całej oferty gadżet&oacute;w reklamowych, tworząc to oto miejsce w sieci.<br />\r\nKubki, butelki czy bidony reklamowe, to tak szeroki temat, że m&oacute;gł stracić na wyrazistości w gąszczu innych produkt&oacute;w. Aby nikt nie przegapił potencjału naszych perełek, serwujemy je wprost pod wymagające oczy Gości na naszej stronie. W razie pytań, uwag czy wątpliwości &ndash; służymy pomocą!</p>\r\n\r\n<p>&nbsp;</p>','pl_PL'),(5,5,'na-kazda-okazje','Na każdą okazję','Na każdą okazję',NULL,NULL,NULL,NULL,'<p>test</p>','pl_PL');
/*!40000 ALTER TABLE `bitbag_cms_page_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_section`
--

DROP TABLE IF EXISTS `bitbag_cms_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_421D079777153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_section`
--

LOCK TABLES `bitbag_cms_section` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitbag_cms_section_translation`
--

DROP TABLE IF EXISTS `bitbag_cms_section_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitbag_cms_section_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bitbag_cms_section_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_F99CA8582C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_F99CA8582C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitbag_cms_section_translation`
--

LOCK TABLES `bitbag_cms_section_translation` WRITE;
/*!40000 ALTER TABLE `bitbag_cms_section_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitbag_cms_section_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'sad','asd','asd','Prośba o kontakt.','2019-09-09 11:48:16'),(2,'dsadsa','asdsdadsa','qadasdsda','dsadasdsa','2019-09-09 13:19:58'),(3,'super firma','505505505','asd@asd.asd','witam chcialbym kupic komputer','2019-09-09 13:30:26'),(4,'asd','asd','asd','Prośba o kontakt.','2019-09-10 08:58:49'),(5,'sadsda','sdadsasda','sdasdasdasda','Prośba o kontakt.','2019-09-10 09:01:16'),(6,'sad','asdassa','asd','Prośba o kontakt.','2019-09-10 09:02:03'),(7,'asd','asd','asd','Prośba o kontakt.','2019-09-10 09:05:01'),(8,'asd','asd','asd','Prośba o kontakt.','2019-09-10 09:07:50'),(9,'asd','asd','asd','Prośba o kontakt.','2019-09-10 09:09:52'),(10,'asd','asd','asd@asd.asd','Prośba o kontakt.','2019-09-10 09:11:37'),(11,'mlekovita','505550050','asd@asd.asd','witam chcialbym kupic krowe','2019-09-10 09:44:00'),(12,'mlekovita','505505505','asd@asd.asd','lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum','2019-09-10 09:47:00'),(13,'mlekovita','54040040','sad@SAasdsda.sadads','super fajnie witam panstwa','2019-09-10 09:49:02'),(14,'asdsda','asdsda','asdsdadsa','sdadsasda','2019-09-10 09:53:47'),(15,'Mlekovita','505505505','asd@asd.asd','Witam chciałbym kupic kubek w ksztalcie krowy','2019-09-10 09:56:27'),(16,'asd','54040040','asd@asd.asd','sadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsa','2019-09-10 09:59:25'),(17,'Jan','+48 250 250 250','jan@gmail.com','Prośba o kontakt.','2019-09-10 10:01:39'),(18,'Mlekovita','+48 250 250 250','kontakt@mlekovita.pl','Dziendobry chciałbym kupić fajny kubek','2019-09-10 10:03:07'),(19,'Jan Kowalski','505505505','asd@asd.asd','Prośba o kontakt.','2019-09-10 10:11:34'),(20,'Mlekovita','505505505','asd@asd.asd','Dzien dobry chcialbym kupic kubek','2019-09-10 10:12:04'),(21,'PPpppp','010102232','asdewq@wed.pl','Prośba o kontakt.','2021-06-08 11:17:00');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_7FC45F1DDE13F470` (`taxon_id`),
  CONSTRAINT `FK_7FC45F1DDE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
INSERT INTO `filter` VALUES (1,18,'a:2:{i:0;i:2;i:1;i:3;}');
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `admin_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3D0AE6DCE7927C74` (`email`),
  UNIQUE KEY `UNIQ_3D0AE6DC5E237E06` (`name`),
  UNIQUE KEY `UNIQ_3D0AE6DC6352511C` (`admin_user_id`),
  CONSTRAINT `FK_3D0AE6DC6352511C` FOREIGN KEY (`admin_user_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'mkostyla@happygifts.eu','Happy Gifts',1,NULL),(2,'mlibera@dreampen.pl','Dream Pen',1,NULL),(3,'julia.dolatowska@odblaski24.com.pl','Kando Plus',0,NULL),(4,'maciej.poprawski@maxim.com.pl','Maxim Ceramics',1,NULL),(5,'sylwia.roj@ritter-pen.pl','Ritter Pen',1,NULL),(6,'m.malczynski@exitogroup.pl','Exito Group',1,NULL),(7,'jj@notesy.pl','Notedeco',1,NULL),(8,'m.owczarska@citron.pl','Citron Group',1,NULL),(9,'ies@iespolska.pl','IES Polska',0,NULL),(10,'marcin@headwear.com.pl','Headwear',1,NULL),(11,'marketing@awih.com.pl','AWIH',1,NULL),(12,'martyna.s@slodkieupominki.pl','Słodkie Upominki',1,NULL),(13,'jacek@guapa.pl','Guapa',1,NULL),(14,'magda@telegraph.com.pl','Telegraph',1,NULL),(15,'biuro@prokres.pl','Newell Poland',1,NULL);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20170912085504'),('20170913125128'),('20171003103916'),('20180102140039'),('20190205101340'),('20190205131744'),('20190206092036'),('20190208103243'),('20190211134846'),('20190212084718'),('20190212124742'),('20190214143231'),('20190430101832'),('20190430104406'),('20190506085855'),('20190906072052'),('20190909094603');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tag` (
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `IDX_E3A6E39C4584665A` (`product_id`),
  KEY `IDX_E3A6E39CBAD26311` (`tag_id`),
  CONSTRAINT `FK_E3A6E39C4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E3A6E39CBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (1,59,'Jan','kowalski','','','','','','2019-09-12 14:25:19','2019-09-12 14:25:19','PL',NULL,NULL),(2,59,'Jan','kowalski','','','','','','2019-09-12 14:25:19','2019-09-12 14:25:19','PL',NULL,NULL),(3,61,'Anna','Dyńka','','','','','','2021-05-10 11:41:06','2021-05-10 11:41:06','PL',NULL,NULL),(4,61,'Anna','Dyńka','','','','','','2021-05-10 11:41:06','2021-05-10 11:41:06','PL',NULL,NULL),(5,61,'Anna','Dyńka','','','','','','2021-05-10 11:41:06','2021-05-10 11:41:06','PL',NULL,NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address_log_entries`
--

LOCK TABLES `sylius_address_log_entries` WRITE;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
INSERT INTO `sylius_address_log_entries` VALUES (1,'create','2019-09-12 14:25:19','1','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(2,'create','2019-09-12 14:25:19','2','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(3,'create','2021-05-10 11:41:06','3','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Anna\";s:8:\"lastName\";s:6:\"Dyńka\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(4,'create','2021-05-10 11:41:06','4','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Anna\";s:8:\"lastName\";s:6:\"Dyńka\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(5,'create','2021-05-10 11:41:06','5','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Anna\";s:8:\"lastName\";s:6:\"Dyńka\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL);
/*!40000 ALTER TABLE `sylius_address_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_access_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`),
  CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_access_token`
--

LOCK TABLES `sylius_admin_api_access_token` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`),
  CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_auth_code`
--

LOCK TABLES `sylius_admin_api_auth_code` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_client`
--

DROP TABLE IF EXISTS `sylius_admin_api_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_client`
--

LOCK TABLES `sylius_admin_api_client` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`),
  CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_refresh_token`
--

LOCK TABLES `sylius_admin_api_refresh_token` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `administrationRole_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88D5CC4D6557905D` (`administrationRole_id`),
  CONSTRAINT `FK_88D5CC4D6557905D` FOREIGN KEY (`administrationRole_id`) REFERENCES `sylius_rbac_administration_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` VALUES (3,'admin','admin',1,'j8pfq8w529kw4ckggcwsssc0cko4ook','IQQb9kjnWrnEYCkVaVnElGQav4/47UBEsrUfPNUL2rZdwptRAC11x6/axL9VnGCpqAuG4WmydkYOiQ0Fgz2ezQ==','2021-06-18 11:37:28',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','admin@techmedia.pl','admin@techmedia.pl','2019-01-02 17:36:10','2021-06-18 11:37:28',NULL,NULL,'pl_PL',8);
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (1,1,1,1,'PL_WEB','Kubki reklamowe','#000000',NULL,1,'kubkireklamowe.local','2019-01-02 17:35:58','2019-01-18 16:28:38',NULL,'order_items_based',NULL,0,0,1);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing`
--

LOCK TABLES `sylius_channel_pricing` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` VALUES (1,1,20199,20199,'PL_WEB'),(2,3,1500,1500,'PL_WEB'),(3,4,0,0,'PL_WEB'),(4,5,0,0,'PL_WEB');
/*!40000 ALTER TABLE `sylius_channel_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (1,'PL',1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (1,'PLN','2019-01-02 17:35:58','2019-01-02 17:35:58');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (58,NULL,NULL,'admin@techmedia.pl','admin@techmedia.pl','asd','asd',NULL,'u','2019-05-06 12:33:04','2019-05-06 12:33:05','123123123',0),(59,NULL,1,'dsadsasad@wp.pl','dsadsasad@wp.pl','asdasd','asdsda',NULL,'u','2019-05-20 15:59:32','2019-05-20 15:59:33','123123123',0),(60,NULL,NULL,'asd4156@wp.pl','asd4156@wp.pl',NULL,NULL,NULL,'u','2019-09-03 13:05:56','2019-09-03 13:05:56',NULL,0),(61,NULL,3,'a.dynka@tech-media.pl','a.dynka@tech-media.pl','Anna','Dyńka',NULL,'u','2021-05-10 11:41:06','2021-05-10 11:41:06','',0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_exchange_rate`
--

LOCK TABLES `sylius_exchange_rate` WRITE;
/*!40000 ALTER TABLE `sylius_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
INSERT INTO `sylius_gateway_config` VALUES (1,'Offline','offline','[]'),(2,'Offline','offline','[]');
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (1,'pl_PL','2019-01-02 17:35:58','2019-01-02 17:35:58');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext COLLATE utf8_unicode_ci NOT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachments` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9CDEADB2A` (`agency_id`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`),
  CONSTRAINT `FK_6196A1F9CDEADB2A` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (1,1,2,1,NULL,59,'000000054',NULL,'cancelled','2019-09-12 14:25:19',1,0,1500,'2019-09-12 14:23:27','2019-09-12 14:30:57','PLN','pl_PL','cart','cancelled','shipped','MC-L~KpAzD','127.0.0.1',NULL,'Jan kowalski','dsadsasad@wp.pl','','',NULL,NULL,'','','a:0:{}'),(2,NULL,NULL,1,NULL,NULL,NULL,NULL,'cart',NULL,0,0,0,'2019-09-13 09:31:26','2019-09-13 12:14:10','PLN','pl_PL','cart','cart','cart',NULL,NULL,NULL,'','','','',NULL,NULL,'','','a:0:{}'),(3,NULL,NULL,1,NULL,NULL,NULL,NULL,'cart',NULL,1,0,0,'2019-09-17 08:47:06','2019-09-17 08:47:14','PLN','pl_PL','cart','cart','cart',NULL,NULL,NULL,'','','','',NULL,NULL,'','','a:0:{}'),(4,NULL,NULL,1,NULL,NULL,NULL,NULL,'cart',NULL,2,0,3000,'2020-12-04 10:37:08','2020-12-04 10:37:23','PLN','pl_PL','cart','cart','cart',NULL,NULL,NULL,'','','','',NULL,NULL,'','','a:0:{}'),(5,NULL,NULL,1,NULL,NULL,NULL,NULL,'cart',NULL,0,0,0,'2020-12-10 11:24:33','2020-12-10 11:27:03','PLN','pl_PL','cart','cart','cart',NULL,NULL,NULL,'','','','',NULL,NULL,'','','a:0:{}'),(6,NULL,NULL,1,NULL,NULL,NULL,NULL,'cart',NULL,0,0,0,'2021-05-05 11:15:57','2021-05-05 11:16:19','PLN','pl_PL','cart','cart','cart',NULL,NULL,NULL,'','','','',NULL,NULL,'','','a:0:{}'),(7,4,5,1,NULL,61,'000000055',NULL,'new','2021-05-10 11:41:06',1,0,20199,'2021-05-10 11:40:44','2021-05-10 11:41:06','PLN','pl_PL','cart','authorized','shipped','9nR3Z7VPY3','192.168.30.183',NULL,'Anna Dyńka','a.dynka@tech-media.pl','','',NULL,NULL,'','','a:0:{}');
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (1,1,5,1,1500,1,0,1,0,NULL,NULL),(2,3,4,1,0,1,0,1,0,NULL,NULL),(3,4,3,1,1500,1,0,1,0,NULL,NULL),(4,4,3,1,1500,1,0,1,0,NULL,NULL),(7,7,1,1,20199,1,0,1,0,NULL,NULL);
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` VALUES (1,55,37);
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (1,1,1,'PLN',1500,'cart','[]','2019-09-12 14:23:27','2019-09-12 14:23:27'),(2,1,4,'PLN',3000,'cart','[]','2020-12-04 10:37:08','2020-12-04 10:37:23'),(5,1,7,'PLN',20199,'cart','[]','2021-05-10 11:40:45','2021-05-10 11:40:45');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_config_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (1,1,'cash_on_delivery',NULL,1,0,'2019-01-02 17:35:59','2019-01-02 17:35:59'),(2,2,'bank_transfer',NULL,1,1,'2019-01-02 17:35:59','2019-01-02 17:35:59');
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_channels`
--

LOCK TABLES `sylius_payment_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_channels` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `sylius_payment_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` VALUES (1,1,'Cash on delivery','Et repudiandae in velit.',NULL,'pl_PL'),(2,2,'Bank transfer','Deserunt rerum asperiores eius et non ad et recusandae.',NULL,'pl_PL');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  `manufacturer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  KEY `IDX_677B9B74A23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`),
  CONSTRAINT `FK_677B9B74A23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type`
--

LOCK TABLES `sylius_product_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type` DISABLE KEYS */;
INSERT INTO `sylius_product_association_type` VALUES (1,'similar_products','2019-01-02 17:36:03','2019-01-02 17:36:03');
/*!40000 ALTER TABLE `sylius_product_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type_translation`
--

LOCK TABLES `sylius_product_association_type_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_association_type_translation` VALUES (1,1,'Similar products','pl_PL');
/*!40000 ALTER TABLE `sylius_product_association_type_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (1,'flaga-ceny','text','text','a:0:{}','2019-09-11 12:46:39','2019-09-11 12:46:39',0),(2,'kolor','text','text','a:0:{}','2019-09-11 12:46:39','2019-09-11 12:46:39',1),(3,'dodatkowe-kolory','text','text','a:0:{}','2019-09-11 12:46:39','2019-09-11 12:46:39',2),(4,'model','text','text','a:0:{}','2019-09-12 13:36:18','2019-09-12 13:36:18',3),(5,'minimalne-zamowienie','text','text','a:0:{}','2019-09-12 15:19:03','2019-09-12 15:19:03',4);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (1,1,'Flaga ceny','pl_PL'),(2,2,'Kolor','pl_PL'),(3,3,'Dodatkowe kolory','pl_PL'),(4,4,'Model','pl_PL'),(5,5,'Minimalne zamówienie','pl_PL');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_value` VALUES (1,1,1,'pl_PL','Od',NULL,NULL,NULL,NULL,NULL,NULL),(2,1,2,'pl_PL','Zielony',NULL,NULL,NULL,NULL,NULL,NULL),(3,1,3,'pl_PL','czerwony, niebieski, zielony',NULL,NULL,NULL,NULL,NULL,NULL),(4,3,2,'pl_PL','Niebieski',NULL,NULL,NULL,NULL,NULL,NULL),(5,3,3,'pl_PL','czerwony, niebieski, zielony',NULL,NULL,NULL,NULL,NULL,NULL),(6,4,1,'pl_PL','Od',NULL,NULL,NULL,NULL,NULL,NULL),(7,4,2,'pl_PL','Zielony',NULL,NULL,NULL,NULL,NULL,NULL),(8,4,3,'pl_PL','czerwony, niebieski, zielony',NULL,NULL,NULL,NULL,NULL,NULL),(9,5,2,'pl_PL','Niebieski',NULL,NULL,NULL,NULL,NULL,NULL),(10,5,3,'pl_PL','czerwony, niebieski, zielony',NULL,NULL,NULL,NULL,NULL,NULL),(11,4,4,'pl_PL','M207A',NULL,NULL,NULL,NULL,NULL,NULL),(12,5,4,'pl_PL','M207B',NULL,NULL,NULL,NULL,NULL,NULL),(13,4,5,'pl_PL','5',NULL,NULL,NULL,NULL,NULL,NULL),(14,7,2,'pl_PL','Eko',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` VALUES (1,1),(3,1),(4,1),(5,1),(6,1),(7,1);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` VALUES (20,1,'thumbnail','9d/74/437511d1f8dce44623cb9e42448f.jpeg'),(21,3,'thumbnail','ab/c0/51dea20f1536f137c6c7868acbbb.jpeg'),(22,3,'main','a4/69/2c46c629e3a9b0e2a43cd19c6523.jpeg'),(51,4,'thumbnail','08/cd/6e8eecb919a957f77db8c0da69e1.jpeg'),(52,4,'main','a9/8a/b474ae68e855b2965240cff1fe48.jpeg'),(53,4,'main','df/58/2baa677822840fc8c7c67a24dc8e.jpeg'),(54,5,'thumbnail','95/1d/9eb9cf7b82bbb09d0c3ee615ea21.jpeg'),(55,5,'main','bb/20/9ae4977c66ed1e984392011e4f7d.jpeg'),(56,6,'thumbnail','73/9d/a967e543d2823f2aafff468454c0.jpeg'),(57,6,'main','a5/7a/378203942289b49a7a17e82b78f1.jpeg'),(58,7,'thumbnail','da/d9/c2a34bf868e87b3a3a49d553d9c4.jpeg');
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image_product_variants`
--

LOCK TABLES `sylius_product_image_product_variants` WRITE;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` DISABLE KEYS */;
INSERT INTO `sylius_product_image_product_variants` VALUES (20,1),(21,3),(22,3),(51,4),(52,4),(53,4),(54,5),(55,5);
/*!40000 ALTER TABLE `sylius_product_image_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` VALUES (1,1,18,0),(3,3,18,1),(4,4,18,2),(5,5,18,3);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (1,1,'Action','action','Super opis',NULL,NULL,NULL,'pl_PL'),(3,3,'Kolejny action','kolejny-action','Bardzo fajny i tani kubek reklamowy',NULL,NULL,NULL,'pl_PL'),(4,4,'Action','action-1','Super opis',NULL,NULL,NULL,'pl_PL'),(5,5,'Kolejny action','kolejny-action-1','Bardzo fajny i tani kubek reklamowy',NULL,NULL,NULL,'pl_PL'),(6,6,'Nowy','nowy','asdfsdfsdf','asdf sdaf sda sda fsa','asd fsdf sd sda sad','asd fsad fsad sad asd','pl_PL'),(7,7,'kubek eko','kubek-eko',NULL,NULL,NULL,NULL,'pl_PL');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (1,1,NULL,NULL,'maxim-1','2019-09-11 12:46:39','2019-09-11 12:46:39',0,1,0,0,0,NULL,NULL,NULL,NULL,0),(3,3,NULL,NULL,'maxim-2','2019-09-11 12:48:09','2019-09-11 12:48:09',0,1,0,0,0,NULL,NULL,NULL,NULL,0),(4,4,NULL,NULL,'maxim-3','2019-09-11 16:20:05','2019-09-11 16:20:05',0,1,0,0,0,NULL,NULL,NULL,NULL,0),(5,5,NULL,NULL,'maxim-4','2019-09-11 16:20:05','2019-09-11 16:20:05',0,1,0,0,0,NULL,NULL,NULL,NULL,0),(6,6,NULL,NULL,'4432234','2020-11-15 00:31:05','2020-11-15 00:31:05',0,1,0,0,0,NULL,NULL,NULL,NULL,1),(7,7,NULL,NULL,'kubek-eko','2021-06-08 11:35:03','2021-06-08 11:35:04',0,1,0,0,0,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_translation`
--

LOCK TABLES `sylius_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_translation` VALUES (1,1,'Action','pl_PL'),(3,3,'Kolejny action','pl_PL'),(4,4,'Action','pl_PL'),(5,5,'Kolejny action','pl_PL'),(6,6,NULL,'pl_PL'),(7,7,NULL,'pl_PL');
/*!40000 ALTER TABLE `sylius_product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_rbac_administration_role`
--

DROP TABLE IF EXISTS `sylius_rbac_administration_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_rbac_administration_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3333A12E5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_rbac_administration_role`
--

LOCK TABLES `sylius_rbac_administration_role` WRITE;
/*!40000 ALTER TABLE `sylius_rbac_administration_role` DISABLE KEYS */;
INSERT INTO `sylius_rbac_administration_role` VALUES (7,'Agency','{\"configuration\": \"{\\\"type\\\":\\\"configuration\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}'),(8,'Configurator','{\"rbac\": \"{\\\"type\\\":\\\"rbac\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"partners\": \"{\\\"type\\\":\\\"partners\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"bitbag_cms\": \"{\\\"type\\\":\\\"bitbag_cms\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"configuration\": \"{\\\"type\\\":\\\"configuration\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"taxon_filters\": \"{\\\"type\\\":\\\"taxon_filters\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"catalog_management\": \"{\\\"type\\\":\\\"catalog_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"customers_management\": \"{\\\"type\\\":\\\"customers_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"marketing_management\": \"{\\\"type\\\":\\\"marketing_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}'),(9,'Owner','{\"partners\": \"{\\\"type\\\":\\\"partners\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"bitbag_cms\": \"{\\\"type\\\":\\\"bitbag_cms\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"configuration\": \"{\\\"type\\\":\\\"configuration\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"taxon_filters\": \"{\\\"type\\\":\\\"taxon_filters\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"catalog_management\": \"{\\\"type\\\":\\\"catalog_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"customers_management\": \"{\\\"type\\\":\\\"customers_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"marketing_management\": \"{\\\"type\\\":\\\"marketing_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}'),(10,'Manufacturer','{\"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"catalog_management\": \"{\\\"type\\\":\\\"catalog_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}');
/*!40000 ALTER TABLE `sylius_rbac_administration_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `archived_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (1,NULL,1,NULL,'ups','a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:0;}}',1,'flat_rate',1,0,NULL,'2019-01-02 17:35:59','2019-01-04 15:36:15');
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_channels`
--

LOCK TABLES `sylius_shipping_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_channels` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_shipping_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (1,1,'UPS','Vel et deserunt maxime nam.','pl_PL');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` VALUES (39,58,'admin@techmedia.pl','admin@techmedia.pl',1,'dcvikfsihkgssck0wkwc8swc8occw8s','Ip88NwqdkTDdabACgcaiKwOdJu4TneS0RRFmdFGySVoeFKM6u7s2Hjh6F3fg3MWk0tO5wImIzwmcnBLtedERFg==','2019-05-06 12:41:11',NULL,NULL,NULL,'2019-05-06 00:00:00',0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-05-06 12:33:04','2019-05-06 12:41:11');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (1,1,NULL,'category',1,54,0,0,'2019-01-02 17:35:59','2019-01-02 17:35:59'),(17,1,1,'kubki-ceramika',4,5,1,0,'2019-07-10 15:48:02','2019-07-10 15:48:41'),(18,1,1,'filizanki',32,33,1,2,'2019-08-29 10:37:14','2019-08-29 10:37:14'),(19,1,1,'kubki-szklane',34,35,1,3,'2019-08-29 10:40:34','2019-08-29 10:40:34'),(20,1,1,'kubki-papierowe',36,37,1,4,'2019-08-29 10:41:05','2019-08-29 10:41:06'),(21,1,1,'kubki-termiczne',38,39,1,5,'2019-08-29 10:41:46','2019-08-29 10:41:46'),(22,1,1,'kubki-magiczne',40,41,1,6,'2019-08-29 10:42:15','2019-08-29 10:42:15'),(23,1,1,'zestawy',42,43,1,7,'2019-08-29 10:42:44','2019-08-29 10:42:45'),(24,1,1,'bidony-termosy-butelki',44,45,1,8,'2019-08-29 10:43:31','2019-08-29 10:43:31'),(25,1,1,'kufle',46,47,1,9,'2019-08-29 10:54:07','2019-08-29 10:54:07'),(26,1,1,'szklanki',48,49,1,10,'2019-08-29 11:02:09','2019-08-29 11:02:10'),(27,1,1,'akcesoria',50,51,1,11,'2019-08-29 11:02:38','2019-08-29 11:02:39'),(28,1,1,'pudelka',52,53,1,12,'2019-08-29 11:03:13','2019-08-29 11:03:13'),(29,1,1,'eko-kubki',2,3,1,1,'2021-06-08 11:33:27','2021-06-08 11:33:41');
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
INSERT INTO `sylius_taxon_image` VALUES (1,17,'icon','b9/9e/6e52dafcf9cc81682f2c3b86326d.svg'),(2,18,'icon','5a/83/55a704d118dfd37a6be4d54bd647.svg'),(3,19,'icon','f7/c5/36c066c48a585e7f8f3e6dcffd41.svg'),(4,20,'icon','c2/e4/27ca8c591b99ae585fb7c1321703.svg'),(5,21,'icon','17/f6/cd8f136a6253d8a0b72c1fd004ba.svg'),(6,22,'icon','16/05/0b2674aedc749ce12b814cec66c5.svg'),(7,23,'icon','c0/af/d3a1bd8c06c803a88745a03774e4.svg'),(8,24,'icon','ff/42/52b6163b0cdd83b4b9cb9fa2bf98.svg'),(9,25,'icon','d8/85/81666ff49c52e7e4869c1f9d041d.svg'),(10,26,'icon','b2/75/001ba265c2b93ea5bc14882f8cbb.svg'),(11,27,'icon','62/8b/101f5c94c69fd6e6157385edbb37.svg'),(12,28,'icon','e8/93/da5d98f63ce09eec79dff15ab8bd.svg');
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (1,1,'Kategorie','category','','pl_PL',NULL,NULL),(2,2,'Ceramika reklamowa','ceramika-reklamowa','\n\n','pl_PL',NULL,NULL),(3,3,'Słodycze reklamowe','slodycze-reklamowe','','pl_PL',NULL,NULL),(4,4,'Notesy reklamowe','notesy-reklamowe','','pl_PL',NULL,NULL),(5,5,'Odzież reklamowa','odziez-reklamowa','','pl_PL',NULL,NULL),(8,8,'Akcesoria samochodowe','akcesoria-samochodowe','','pl_PL',NULL,NULL),(9,9,'Czapki reklamowe','czapki-reklamowe','','pl_PL',NULL,NULL),(10,10,'Odblaski reklamowe','odblaski-reklamowe','','pl_PL',NULL,NULL),(11,11,'Elektronika reklamowa','elektronika-reklamowa','','pl_PL',NULL,NULL),(12,12,'Torby reklamowe','torby-reklamowe','','pl_PL',NULL,NULL),(13,13,'Długopisy reklamowe','dlugopisy-reklamowe','','pl_PL',NULL,NULL),(14,14,'Ekskluzywne pióra i długopisy reklamowe','ekskluzywne-piora-i-dlugopisy-reklamowe','','pl_PL',NULL,NULL),(15,15,'Kalendarze reklamowe','kalendarze-reklamowe','','pl_PL',NULL,NULL),(17,17,'Kubki ceramika','kubki-ceramika',NULL,'pl_PL',NULL,NULL),(18,18,'Filiżanki','filizanki',NULL,'pl_PL',NULL,NULL),(19,19,'Kubki szklane','kubki-szklane',NULL,'pl_PL',NULL,NULL),(20,20,'Kubki papierowe','category/kubki-papierowe',NULL,'pl_PL',NULL,NULL),(21,21,'Kubki termiczne','kubki-termiczne',NULL,'pl_PL',NULL,NULL),(22,22,'Kubki magiczne','kubki-magiczne',NULL,'pl_PL',NULL,NULL),(23,23,'Zestawy','zestawy',NULL,'pl_PL',NULL,NULL),(24,24,'Bidony, termosy, butelki','bidony-termosy-butelki',NULL,'pl_PL',NULL,NULL),(25,25,'Kufle','kufle',NULL,'pl_PL',NULL,NULL),(26,26,'Szklanki','szklanki',NULL,'pl_PL',NULL,NULL),(27,27,'Akcesoria','akcesoria',NULL,'pl_PL',NULL,NULL),(28,28,'Pudełka','pudelka',NULL,'pl_PL',NULL,NULL),(29,29,'Eko kubki','eko-kubki',NULL,'pl_PL',NULL,NULL);
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (1,'PL','Poland','country','all');
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (1,1,'PL');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-06 15:21:00
