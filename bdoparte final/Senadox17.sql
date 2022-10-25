/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `senado2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `senado2`;

CREATE TABLE IF NOT EXISTS `apellido` (
  `id_ap` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(30) NOT NULL DEFAULT '0',
  `id_bloque` int(10) NOT NULL DEFAULT 0,
  `id_provincia` int(10) NOT NULL,
  `id_voh` int(10) NOT NULL,
  PRIMARY KEY (`id_ap`),
  KEY `FK_apellido_provincias` (`id_provincia`),
  KEY `FK_apellido_voh` (`id_voh`),
  KEY `FK_apellido_bloque` (`id_bloque`),
  CONSTRAINT `FK_apellido_bloque` FOREIGN KEY (`id_bloque`) REFERENCES `bloque` (`id_bloq`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_apellido_provincias` FOREIGN KEY (`id_provincia`) REFERENCES `provincias` (`id_prov`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_apellido_voh` FOREIGN KEY (`id_voh`) REFERENCES `voh` (`id_voh`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;

REPLACE INTO `apellido` (`id_ap`, `apellidos`, `id_bloque`, `id_provincia`, `id_voh`) VALUES
	(3, 'ÁLVAREZ RIVERO', 2, 6, 1),
	(4, 'ANDRADA', 5, 6, 2),
	(5, 'ÁVILA', 1, 4, 2),
	(6, 'BASUALDO', 8, 7, 1),
	(7, 'BENSUSÁN', 9, 8, 2),
	(8, 'BLANCO', 5, 9, 1),
	(9, 'CATALFAMO', 6, 6, 2),
	(10, 'CLOSS', 8, 5, 1),
	(11, 'CORNEJO', 1, 2, 2),
	(12, 'CORPACCI', 5, 1, 1),
	(13, 'COSTA', 2, 3, 1),
	(14, 'CREXELL', 2, 5, 1),
	(15, 'DE ANGELI', 3, 4, 1),
	(16, 'DI TULLIO', 1, 7, 1),
	(17, 'DOÑATE', 7, 8, 2),
	(18, 'DURÉ', 7, 9, 2),
	(19, 'ESPÍNOLA', 6, 6, 2),
	(20, 'FAMA', 8, 5, 2),
	(21, 'FERNÁNDEZ SAGASTI', 9, 1, 2),
	(22, 'FIAD', 3, 5, 2),
	(23, 'GARCÍA LARRABURU', 3, 6, 1),
	(24, 'GIACOPPO', 1, 3, 1),
	(25, 'GIMÉNEZ', 2, 2, 2),
	(26, 'GONZÁLEZ', 9, 1, 1),
	(27, 'GONZÁLEZ', 5, 7, 2),
	(28, 'GONZÁLEZ RIOLLO', 8, 8, 1),
	(29, 'GUERRA', 8, 9, 2),
	(30, 'HUALA', 8, 6, 1),
	(31, 'IANNI', 4, 5, 2),
	(32, 'JUEZ', 4, 4, 1),
	(33, 'JURI', 6, 5, 2),
	(34, 'KRONEBERGER', 5, 6, 1),
	(35, 'KUEIDER', 6, 5, 2),
	(36, 'LEAVY', 6, 5, 1),
	(37, 'LEDESMA ABDALA DE ZAMORA', 4, 5, 1),
	(38, 'LEWANDOWSKI', 5, 5, 1),
	(39, 'LINARES', 5, 2, 1),
	(40, 'LÓPEZ VALVERDE', 5, 3, 1),
	(41, 'LOSADA', 4, 1, 2),
	(42, 'LOUSTEAU', 8, 4, 2),
	(43, 'MARTÍNEZ', 8, 5, 2),
	(44, 'MAYANS', 4, 8, 2),
	(45, 'MENDOZA', 5, 9, 2),
	(46, 'MONTENEGRO', 6, 22, 1),
	(47, 'NEDER', 3, 15, 2),
	(48, 'OLALLA', 2, 4, 1),
	(49, 'PARRILLI', 1, 18, 2),
	(50, 'PETCOFF NAIDENOFF', 7, 5, 1),
	(51, 'PILATTI VERGARA', 5, 16, 2),
	(52, 'RECALDE', 8, 10, 1),
	(53, 'RODAS', 7, 21, 2),
	(54, 'RODRÍGUEZ', 9, 20, 1),
	(55, 'RODRÍGUEZ SAÁ', 6, 19, 2),
	(56, 'ROMERO', 5, 19, 1),
	(57, 'SAPAG', 4, 19, 1),
	(58, 'SCARPÍN', 3, 17, 1),
	(59, 'SCHIAVONI', 1, 17, 1),
	(60, 'SNOPEK', 2, 17, 1),
	(61, 'SOLARI  QUINTANA', 3, 11, 2),
	(62, 'TAGLIAFERRI', 4, 10, 2),
	(63, 'TAPIA', 5, 6, 2),
	(64, 'TERENZI', 8, 5, 2),
	(65, 'TORELLO', 7, 8, 2),
	(66, 'TORRES', 9, 9, 1),
	(67, 'UÑAC', 8, 7, 2),
	(68, 'VALENZUELA', 2, 20, 1),
	(69, 'VEGA', 1, 20, 2),
	(70, 'VIGO', 5, 20, 1),
	(71, 'VISCHI', 5, 16, 2),
	(72, 'WERETILNECK', 5, 21, 1),
	(73, 'YEDLIN', 5, 15, 1),
	(74, 'ZIMMERMANN', 5, 15, 1);

CREATE TABLE IF NOT EXISTS `bloque` (
  `id_bloq` int(10) NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_bloq`),
  KEY `desc` (`desc`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

REPLACE INTO `bloque` (`id_bloq`, `desc`) VALUES
	(2, 'CAMBIO FEDERAL'),
	(8, 'CORDOBA FEDERAL'),
	(5, 'FRENTE DEL PRO'),
	(4, 'FRENTE NACIONAL Y POPULAR'),
	(7, 'HAY FUTURO ARGENTINA'),
	(9, 'JUNTOS SOMOS RIO NEGRO'),
	(6, 'MISIONES'),
	(3, 'UNIDAD CIUDADANA'),
	(1, 'UNION CIVICA RADICAL');

CREATE TABLE IF NOT EXISTS `provincias` (
  `id_prov` int(10) NOT NULL AUTO_INCREMENT,
  `desc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

REPLACE INTO `provincias` (`id_prov`, `desc`) VALUES
	(1, 'Buenos Aires'),
	(2, 'Catamarca'),
	(3, 'Chaco'),
	(4, 'Chubut'),
	(5, 'Córdoba'),
	(6, 'Corrientes'),
	(7, 'Entre Ríos'),
	(8, 'Formosa'),
	(9, 'Jujuy'),
	(10, 'La Pampa'),
	(11, 'La Rioja'),
	(12, 'Mendoza'),
	(13, 'Misiones'),
	(14, 'Neuquén'),
	(15, 'Río Negro'),
	(16, 'Salta'),
	(17, 'San Juan'),
	(18, 'San Luis'),
	(19, 'Santa Cruz'),
	(20, 'Santa Fe'),
	(21, 'Santiago del Estero'),
	(22, 'Tierra del Fuego'),
	(23, 'Tucumán');

CREATE TABLE IF NOT EXISTS `voh` (
  `id_voh` int(10) NOT NULL AUTO_INCREMENT,
  `desc` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_voh`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

REPLACE INTO `voh` (`id_voh`, `desc`) VALUES
	(1, 'v'),
	(2, 'h');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
