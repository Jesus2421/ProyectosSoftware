/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para bibloteca
CREATE DATABASE IF NOT EXISTS `bibloteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bibloteca`;


-- Volcando estructura para tabla bibloteca.autor
CREATE TABLE IF NOT EXISTS `autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(12) DEFAULT NULL,
  `Apellido` varchar(12) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Cedula` varchar(9) DEFAULT NULL,
  `Correo` varchar(20) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Especialidad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bibloteca.autor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;


-- Volcando estructura para tabla bibloteca.autorelibros
CREATE TABLE IF NOT EXISTS `autorelibros` (
  `id_Autorelibros` int(11) NOT NULL AUTO_INCREMENT,
  `id_Autor` int(11) NOT NULL,
  `id_libros` int(11) NOT NULL,
  `Editorial` varchar(15) DEFAULT NULL,
  `ISBM` int(11) DEFAULT NULL,
  `Año` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Autorelibros`),
  KEY `id_Autor` (`id_Autor`),
  KEY `id_libros` (`id_libros`),
  CONSTRAINT `FK_autorelibros_autor` FOREIGN KEY (`id_Autor`) REFERENCES `autor` (`id`),
  CONSTRAINT `FK_autorelibros_libros` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bibloteca.autorelibros: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `autorelibros` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorelibros` ENABLE KEYS */;


-- Volcando estructura para tabla bibloteca.camarero
CREATE TABLE IF NOT EXISTS `camarero` (
  `id_Camarero` int(11) NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(9) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(20) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Direccion` longtext,
  `Fecha_N` date DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_Camarero`),
  UNIQUE KEY `Cedula_UNIQUE` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bibloteca.camarero: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `camarero` DISABLE KEYS */;
/*!40000 ALTER TABLE `camarero` ENABLE KEYS */;


-- Volcando estructura para tabla bibloteca.libros
CREATE TABLE IF NOT EXISTS `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bibloteca.libros: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;


-- Volcando estructura para tabla bibloteca.prestamos
CREATE TABLE IF NOT EXISTS `prestamos` (
  `id_Prestamos` int(11) NOT NULL AUTO_INCREMENT,
  `id_autorlibros` int(11) NOT NULL,
  `id_camarero` int(11) NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  PRIMARY KEY (`id_Prestamos`),
  KEY `id_autorlibros` (`id_autorlibros`),
  KEY `id_camarero` (`id_camarero`),
  CONSTRAINT `FK_prestamos_autorelibros` FOREIGN KEY (`id_autorlibros`) REFERENCES `autorelibros` (`id_Autorelibros`),
  CONSTRAINT `FK_prestamos_camarero` FOREIGN KEY (`id_camarero`) REFERENCES `camarero` (`id_Camarero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bibloteca.prestamos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;


-- Volcando estructura para disparador bibloteca.trg_insertcama
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_insertcama` BEFORE INSERT ON `camarero` FOR EACH ROW BEGIN
   insert log values (0,new.Cedula,new.Nombre, new.Apellido,new.Telefono,new.Direccion,new.Fecha_N,new.Sexo);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador bibloteca.trg_insertdatos
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_insertdatos` BEFORE INSERT ON `autor` FOR EACH ROW BEGIN
   insert log values (0,new.Nombre, new.Apellido,new.Telefono,new.Cedula,new.Correo,new.Sexo,new.Especialidad);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
