-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para optica
CREATE DATABASE IF NOT EXISTS `optica` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `optica`;


-- Volcando estructura para tabla optica.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL DEFAULT '0',
  `Apellido` varchar(100) NOT NULL DEFAULT '0',
  `Edad` int(11) NOT NULL DEFAULT '0',
  `tipo_lente` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla optica.usuarios: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `Nombre`, `Apellido`, `Edad`, `tipo_lente`) VALUES
	(1, 'Jesus Miguel ', 'Campos Correia', 26, 'tiene que usar lentes de gas permeable'),
	(2, 'Fernado ', 'Flores', 24, 'tiene que usar lentes suaves'),
	(3, 'Pedro Luis', 'Perez Prato', 43, 'tiene que usar lentes bifocales suaves'),
	(4, 'Ana Juana', 'Gonzales Perez', 40, 'tiene que usar lentes bifocales de gas permeable'),
	(5, 'Domingo ', 'Martines', 45, 'tiene que usar lentes suaves'),
	(6, 'Kevin Enrique', 'Pou Goncalves', 22, 'tiene que usar lentes suaves'),
	(7, 'Maria Angela', 'Vieira Pereira', 30, 'No puede usar lentes de contanto'),
	(8, 'Angy elena', 'Campos Correia', 30, 'tiene que usar lentes suaves');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
