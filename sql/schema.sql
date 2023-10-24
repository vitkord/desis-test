CREATE DATABASE  IF NOT EXISTS `bd_sistema_votacion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_sistema_votacion`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_sistema_votacion
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
INSERT INTO `candidato` VALUES (1,'Gabriel Boric'),(2,'Sebastian Pinera'),(3,'Michelle Bachelet'),(4,'Sebastián Sichel');
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comuna`
--

DROP TABLE IF EXISTS `comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comuna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_comuna` varchar(200) NOT NULL,
  `codigo_postal` int NOT NULL,
  `id_region` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comuna`
--

LOCK TABLES `comuna` WRITE;
/*!40000 ALTER TABLE `comuna` DISABLE KEYS */;
INSERT INTO `comuna` VALUES (11,'General Lagos',12001000,1),(12,'Putre',12501000,1),(13,'Camarones',15400100,1),(14,'Arica',10100100,1),(15,'Alto Hospicio',12011000,2),(16,'Pozo Almonte',12511000,2),(17,'Iquique',15401100,2),(18,'Pica',11141100,2),(19,'Camiña',11171100,2),(20,'Huara',11101100,2),(21,'Colchane',11151100,2),(22,'Antofagasta',22011000,3),(23,'Calama',22511000,3),(24,'Tocopilla',25401100,3),(25,'Mejillones',21141100,3),(26,'Maria Elena',21171100,3),(27,'Taltal',21101100,3),(28,'Sierra Gorda',21151100,3),(29,'San Pedro de Atacama',21151100,3),(30,'Ollagüe',21151100,3),(31,'Chañaral',22011000,4),(32,'Diego de Almagro',22511000,4),(33,'Caldera',25401100,4),(34,'Copiapo',21141100,4),(35,'Tierra Amarilla',21171100,4),(36,'Huasco',21101100,4),(37,'Freirina',21151100,4),(38,'Vallenar',21151100,4),(39,'Alto del Carmen',21151100,4),(40,'Andacollo',52011000,5),(41,'Coquimbo',52511000,5),(42,'La Serena',55401100,5),(43,'Ovalle',51141100,5),(44,'Rio Hurtado',51171100,5),(45,'Canela',51101100,5),(46,'Illapel',51151100,5),(47,'Los Vilos',51151100,5),(48,'Paihuano',51151100,5),(49,'Salamanca',51151100,5),(50,'Combarbalá',51151100,5),(51,'La Higuera',51151100,5),(52,'Montre Patria',51151100,5),(53,'Punitaqui',51151100,5),(54,'Vicuña',51151100,5),(55,'Santo Domingo',52011000,6),(56,'San Antonio',52511000,6),(57,'Cartagena',55401100,6),(58,'El Tabo',51141100,6),(59,'El Quisco',51171100,6),(60,'Casablanca',51101100,6),(61,'Algarrobo',51151100,6),(62,'Valparaiso',51151100,6),(63,'Viña del Mar',51151100,6),(64,'Quilpué',51151100,6),(65,'Villa Alemana',51151100,6),(66,'Limache',51151100,6),(67,'Olmué',51151100,6),(68,'Concón',51151100,6),(69,'Quillota',51151100,6),(70,'Hijuelas',51151100,6),(71,'La Cruz',51151100,6),(72,'La Calera',51151100,6),(73,'Quintero',51151100,6),(74,'Puchuncaví',51151100,6),(75,'Nogales',51151100,6),(76,'Zapallar',51151100,6),(77,'Papudo',51151100,6),(78,'La Ligua',51151100,6),(79,'Petorca',51151100,6),(80,'Cabildo',51151100,6),(81,'Catemu',51151100,6),(82,'Panquehue',51151100,6),(83,'Llayllay',51151100,6),(84,'Rinconada',51151100,6),(85,'San Felipe',51151100,6),(86,'Putaendo',51151100,6),(87,'Santa Maria',51151100,6),(88,'San Esteban',51151100,6),(89,'Calle Larga',51151100,6),(90,'Los Andes',51151100,6),(91,'Cerrillos',72011000,7),(92,'Cerro Navia',72511000,7),(93,'Conchalí',75401100,7),(94,'El Bosque',71141100,7),(95,'Estación Central',71171100,7),(96,'Huechuraba',71101100,7),(97,'Independencia',71151100,7),(98,'La Cisterna',71151100,7),(99,'La Florida',71151100,7),(100,'La Granja',71151100,7),(101,'La Pintana',71151100,7),(102,'La Reina',71151100,7),(103,'Las Condes',71151100,7),(104,'Lo Barnechea',71151100,7),(105,'Lo Espejo',71151100,7),(106,'Lo Prado',71151100,7),(107,'Macul',71151100,7),(108,'Maipú',71151100,7),(109,'Ñuñoa',71151100,7),(110,'Pedro Aguirre Cerda',71151100,7),(111,'Peñalolén',71151100,7),(112,'Providencia',71151100,7),(113,'Pudahuel',71151100,7),(114,'Quilicura',71151100,7),(115,'Quinta Normal',71151100,7),(116,'Recoleta',71151100,7),(117,'Renca',71151100,7),(118,'San Joaquin',71151100,7),(119,'San Miguel',71151100,7),(120,'San Ramón',71151100,7),(121,'Santiago',71151100,7),(122,'Vitacura',71151100,7),(123,'Puente Alto',71151100,7),(124,'San José de Maipo',71151100,7),(125,'Pirque',51151100,7),(126,'Talagante',51151100,7),(127,'San Bernardo',51151100,7),(128,'Calera de Tango',51151100,7),(129,'Buin',51151100,7),(130,'Paine',51151100,7),(131,'Colina',51151100,7),(132,'Lampa',51151100,7),(133,'Til-Til',51151100,7),(134,'Alhué',51151100,7),(135,'Curacaví',51151100,7),(136,'María Pinto',71151100,7),(137,'Melipilla',71151100,7),(138,'San Pedro',71151100,7),(139,'Rancagua',82011000,8),(140,'San Fernando',72511000,8),(141,'Rengo',75401100,8),(142,'San Vicente',71141100,8),(143,'Santa Cruz',71171100,8),(144,'Chimbarongo',71101100,8),(145,'Machalí',71151100,8),(146,'Graneros',71151100,8),(147,'Requinoa',71151100,8),(148,'Mostazal',71151100,8),(149,'Las Cabras',71151100,8),(150,'Pichidegua',71151100,8),(151,'Doñihue',71151100,8),(152,'Coltauco',71151100,8),(153,'Nancagua',71151100,8),(154,'Peumo',71151100,8),(155,'Chépica',71151100,8),(156,'Malloa',71151100,8),(157,'Pichilemu',71151100,8),(158,'Olivar',71151100,8),(159,'Quinta de tiltoco',71151100,8),(160,'Palmilla',71151100,8),(161,'Codegua',71151100,8),(162,'Peralillo',71151100,8),(163,'Placilla',71151100,8),(164,'Marchihue',71151100,8),(165,'Paredones',71151100,8),(166,'Coinco',71151100,8),(167,'Lolol',71151100,8),(168,'Litueche',71151100,8),(169,'Navidad',71151100,8),(170,'La Estrella',71151100,8),(171,'Pumanque',71151100,8),(172,'Talca',92011000,9),(173,'Curicó',92511000,9),(174,'Linares',95401100,9),(175,'Constitución',91141100,9),(176,'Cauquenes',91171100,9),(177,'Molina',91101100,9),(178,'Parral',91151100,9),(179,'San Javier',91151100,9),(180,'San Clemente',91151100,9),(181,'Longaví',91151100,9),(182,'Teño',91151100,9),(183,'Retiro',91151100,9),(184,'Colbún',91151100,9),(185,'Sagrada Familia',91151100,9),(186,'Maule',71151100,9),(187,'Yerbas Buenas',91151100,9),(188,'Villa Alegre',91151100,9),(189,'Romeral',71151100,9),(190,'Rio Claro',71151100,9),(191,'Curepto',91151100,9),(192,'Hualañé',91151100,9),(193,'Chanco',91151100,9),(194,'Rauco',91151100,9),(195,'Pencahue',91151100,9),(196,'San Rafael',91151100,9),(197,'Pelarco',91151100,9),(198,'Licantén',71151100,9),(199,'Pelluhue',71151100,9),(200,'Vichuquén',71151100,9),(201,'Empedrado',71151100,9),(202,'Cobquecura',98011000,10),(203,'Coelemu',98511000,10),(204,'Ninhue',95801100,10),(205,'Portezuelo',98141100,10),(206,'Quirihue',91171100,10),(207,'Ránquil',91101100,10),(208,'Trehuaco',91151100,10),(209,'Bulnes',91151100,10),(210,'Chillán Viejo',91151100,10),(211,'Chillán',91151100,10),(212,'El Carmen',91151100,10),(213,'Pemuco',91151100,10),(214,'Pinto',91151100,10),(215,'Quillón',91151100,10),(216,'San Ignacio',81151100,10),(217,'Yungay',91151100,10),(218,'Coihueco',91151100,10),(219,'Ñiquén',81158100,10),(220,'San Carlos',81151100,10),(221,'San Fabián',91151100,10),(222,'San Nicolás',91151100,10),(223,'Florida',98011000,11),(224,'Penco',98511000,11),(225,'Tomé',95801100,11),(226,'Talcahuano',98141100,11),(227,'Hualpén',91171100,11),(228,'Chiguayante',91101100,11),(229,'Concepción',91151100,11),(230,'Hualqui',91151100,11),(231,'Santa Juana',91151100,11),(232,'San Pedro de la Paz',91151100,11),(233,'Coronel',91151100,11),(234,'Lota',91151100,11),(235,'Arauco',91151100,11),(236,'Cañete',91151100,11),(237,'Contulmo',81151100,11),(238,'Curanilahue',91151100,11),(239,'Lebu',91151100,11),(240,'Los Álamos',81158100,11),(241,'Tirúa',81151100,11),(242,'Los Ángeles',91151100,11),(243,'Cabrero',91151100,11),(244,'Tucapel',91151100,11),(245,'Antuco',91151100,11),(246,'Quilleco',91151100,11),(247,'Santa Bárbara',91151100,11),(248,'Quilaco',91151100,11),(249,'Mulchén',91151100,11),(250,'Negrete',91151100,11),(251,'Nacimiento',91151100,11),(252,'Laja',91151100,11),(253,'San Rosendo',91151100,11),(254,'Alto Biobío',91151100,11),(255,'Yumbel',91151100,11),(256,'Carahue',98011000,12),(257,'Cholchol',98511000,12),(258,'Cunco',95801100,12),(259,'Curarrehue',98141100,12),(260,'Freire',91171100,12),(261,'Galvarino',91101100,12),(262,'Gorbea',91151100,12),(263,'Lautaro',91151100,12),(264,'Loncoche',91151100,12),(265,'Melipeuco',91151100,12),(266,'Nueva IMperial',91151100,12),(267,'Padre Las Casas',91151100,12),(268,'Perquenco',91151100,12),(269,'Pitrufquén',91151100,12),(270,'Pucón',81151100,12),(271,'Saavedra',91151100,12),(272,'Temuco',91151100,12),(273,'Teodoro Schmidt',81158100,12),(274,'Toltén',81151100,12),(275,'Vilcún',91151100,12),(276,'Villarica',91151100,12),(277,'Angol',91151100,12),(278,'Collipulli',91151100,12),(279,'Curacautín',91151100,12),(280,'Ercilla',91151100,12),(281,'Lonquimay',91151100,12),(282,'Los Sauces',91151100,12),(283,'Lumaco',91151100,12),(284,'Purén',91151100,12),(285,'Renaico',91151100,12),(286,'Traiguén',91151100,12),(287,'Victoria',91151100,12),(288,'Panguipulli',98011000,13),(289,'Futrono',98511000,13),(290,'Río Bueno',95801100,13),(291,'Lago Ranco',98141100,13),(292,'La Unión',91171100,13),(293,'Corral',91101100,13),(294,'Paillaco',91151100,13),(295,'Valdivia',91151100,13),(296,'Máfil',91151100,13),(297,'Lanco',91151100,13),(298,'Mariquina',91151100,13),(299,'Los Lagos',91151100,13),(300,'Ancud',98011000,14),(301,'Castro',98511000,14),(302,'Río Bueno',95801100,14),(303,'Chonchi',98141100,14),(304,'Curaco de Vélez',91171100,14),(305,'Dalcahue',91101100,14),(306,'Puqueldón',91151100,14),(307,'Queilén',91151100,14),(308,'Quemchi',91151100,14),(309,'Quellón',91151100,14),(310,'Quinchao',91151100,14),(311,'Calbuco',91151100,14),(312,'Cochamó',91151100,14),(313,'Fresia',91151100,14),(314,'Frutillar',91151100,14),(315,'Llanquihue',91151100,14),(316,'Los Muermos',91151100,14),(317,'Maullín',91151100,14),(318,'Puerto Montt',91151100,14),(319,'Puerto Varas',91151100,14),(320,'Osorno',91151100,14),(321,'Puerto Octay',91151100,14),(322,'Purranque',91151100,14),(323,'Puyehue',91151100,14),(324,'Rio Negro',91151100,14),(325,'San Juan de la Costa',91151100,14),(326,'San Pablo',91151100,14),(327,'Chaitén',91151100,14),(328,'Futaleufú',91151100,14),(329,'Hualaihué',91151100,14),(330,'Palena',91151100,14),(331,'Guaitecas',98011000,15),(332,'Cisnes',98511000,15),(333,'Lago Verde',95801100,15),(334,'Coyhaique',98141100,15),(335,'Aysén',91171100,15),(336,'Río Ibáñez',91101100,15),(337,'Chile Chico',91151100,15),(338,'Cochrane',91151100,15),(339,'O´Higgins',91151100,15),(340,'Tortel',91151100,15),(341,'Antártica',98011000,16),(342,'Cabo de Hornos',98511000,16),(343,'Laguna Blanca',95801100,16),(344,'Punta Arenas',98141100,16),(345,'Río Verde',91171100,16),(346,'San Gregorio',91101100,16),(347,'Porvenir',91151100,16),(348,'Primavera',91151100,16),(349,'Timaukel',91151100,16),(350,'Natales',91151100,16),(351,'Torres del Paine',91151100,16);
/*!40000 ALTER TABLE `comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_region` varchar(100) NOT NULL,
  `numero_region` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Arica y Parinacota',15),(2,'Tarapacá',1),(3,'Antofagasta',2),(4,'Atacama',3),(5,'Coquimbo',4),(6,'Valparaíso',5),(7,'Metropolitana de Santiago',13),(8,'Libertador General Bernardo OHiggins',6),(9,'Maule',7),(10,'Ñuble',16),(11,'Biobío',8),(12,'La Araucanía',9),(13,'Los Ríos',14),(14,'Los Lagos',10),(15,'Aysén del General Carlos Ibáñez del Campo',11),(16,'Magallanes y de la Antártica Chilena',12);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votantes`
--

DROP TABLE IF EXISTS `votantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(100) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `candidato` varchar(100) NOT NULL,
  `como_se_entero` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut` (`rut`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votantes`
--

LOCK TABLES `votantes` WRITE;
/*!40000 ALTER TABLE `votantes` DISABLE KEYS */;
INSERT INTO `votantes` VALUES (1,'Victor Duran','vitoco','19219241-2','vict.duran23@gmail.com','7','118','Gabriel Boric','Web, Redes Sociales');
/*!40000 ALTER TABLE `votantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_sistema_votacion'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_candidatos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`desis`@`localhost` PROCEDURE `sp_get_candidatos`()
BEGIN
  SELECT id, nombre_apellido
  FROM candidato;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_comunas_por_id_region` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`desis`@`localhost` PROCEDURE `sp_get_comunas_por_id_region`(IN idRegion INT)
BEGIN
  SELECT c.id as id_comuna, c.nombre_comuna, c.id_region, r.nombre_region
  FROM comuna c 
  INNER JOIN region r ON c.id_region = r.id
  where c.id_region = idRegion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_regiones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`desis`@`localhost` PROCEDURE `sp_get_regiones`()
BEGIN
  SELECT id, nombre_region from region;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24  2:45:15
