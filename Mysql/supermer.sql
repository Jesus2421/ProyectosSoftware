-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.1.59-community - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para supermer
CREATE DATABASE IF NOT EXISTS `supermer` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `supermer`;


-- Volcando estructura para tabla supermer.asistentes
CREATE TABLE IF NOT EXISTS `asistentes` (
  `id_asistentes` int(11) NOT NULL AUTO_INCREMENT,
  `id_cama` int(11) DEFAULT NULL,
  `nombre_a` varchar(20) DEFAULT NULL,
  `apellido_a` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_asistentes`),
  KEY `id_cama` (`id_cama`),
  CONSTRAINT `FK_asistentes_camarero` FOREIGN KEY (`id_cama`) REFERENCES `camarero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.asistentes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `asistentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistentes` ENABLE KEYS */;


-- Volcando estructura para vista supermer.ate
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `ate` (
	`id_atendidos` INT(11) NOT NULL,
	`id_cliente` INT(11) NULL,
	`id_cama` INT(11) NULL,
	`id_medico` INT(11) NULL
) ENGINE=MyISAM;


-- Volcando estructura para tabla supermer.atendidos
CREATE TABLE IF NOT EXISTS `atendidos` (
  `id_atendidos` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `id_cama` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_atendidos`),
  KEY `id_cama` (`id_cama`),
  KEY `id_medico` (`id_medico`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_factura` (`id_factura`),
  CONSTRAINT `FK_atendidos_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK_atendidos_detelles_de_la_factura` FOREIGN KEY (`id_factura`) REFERENCES `detalles_de_la_factura` (`id_factura`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.atendidos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `atendidos` DISABLE KEYS */;
REPLACE INTO `atendidos` (`id_atendidos`, `id_cliente`, `id_factura`, `id_cama`, `id_medico`) VALUES
	(1, 1, NULL, NULL, 1);
/*!40000 ALTER TABLE `atendidos` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.autores
CREATE TABLE IF NOT EXISTS `autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.autores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.bodega
CREATE TABLE IF NOT EXISTS `bodega` (
  `id_estante` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(15) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.bodega: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;


-- Volcando estructura para vista supermer.cama
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `cama` (
	`id` INT(11) NOT NULL,
	`Nombre` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`Apellidos` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla supermer.camarero
CREATE TABLE IF NOT EXISTS `camarero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_aten` int(11) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_atendidos` (`id_aten`),
  CONSTRAINT `FK_camarero_atendidos` FOREIGN KEY (`id_aten`) REFERENCES `atendidos` (`id_atendidos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.camarero: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `camarero` DISABLE KEYS */;
/*!40000 ALTER TABLE `camarero` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.carrera
CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `id_alumno` int(11) DEFAULT NULL,
  `nombre_carrera` varchar(25) NOT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `id_alumno` (`id_alumno`),
  CONSTRAINT `FK_carrera_estudiante` FOREIGN KEY (`id_alumno`) REFERENCES `estudiante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.carrera: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;


-- Volcando estructura para vista supermer.cli
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `cli` (
	`id` INT(11) NOT NULL,
	`Nombre` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`Apellido` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`Observaciones` VARCHAR(30) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


-- Volcando estructura para tabla supermer.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Observaciones` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.cliente: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
REPLACE INTO `cliente` (`id`, `Nombre`, `Apellido`, `Observaciones`) VALUES
	(1, 'Juana', 'Perez', 'buena comida'),
	(2, 'Gerandin', 'Perez', 'Felicitaciones al chef'),
	(3, 'Andres', 'Idalgo', 'soy cliente frecuente');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.comp,aseg
CREATE TABLE IF NOT EXISTS `comp,aseg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_responsable` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `direccion` text,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_responsable` (`id_responsable`),
  CONSTRAINT `FK_comp,aseg_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `responsable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.comp,aseg: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comp,aseg` DISABLE KEYS */;
/*!40000 ALTER TABLE `comp,aseg` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_existencia` int(11) DEFAULT NULL,
  `id_productos` int(11) DEFAULT NULL,
  `id_repuestos` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `id_productos` (`id_productos`),
  KEY `id_repuestos` (`id_repuestos`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_existencia` (`id_existencia`),
  CONSTRAINT `FK_compra_bodega` FOREIGN KEY (`id_existencia`) REFERENCES `bodega` (`id_estante`),
  CONSTRAINT `FK_Compra_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK_compra_productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id`),
  CONSTRAINT `FK_compra_repuestos` FOREIGN KEY (`id_repuestos`) REFERENCES `repuestos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.compra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `id_cama` int(11) DEFAULT NULL,
  `id_nomi` int(11) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`id_contacto`),
  KEY `id_cama` (`id_cama`),
  KEY `id_nomi` (`id_nomi`),
  CONSTRAINT `FK_contacto_camarero` FOREIGN KEY (`id_cama`) REFERENCES `camarero` (`id`),
  CONSTRAINT `FK_contacto_nomina` FOREIGN KEY (`id_nomi`) REFERENCES `nomina` (`id_nomina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.contacto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(25) DEFAULT NULL,
  `Duracion` varchar(25) DEFAULT NULL,
  `precio` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.detalles_de_la_factura
CREATE TABLE IF NOT EXISTS `detalles_de_la_factura` (
  `id_detalles` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) DEFAULT NULL,
  `id_plato` int(11) DEFAULT NULL,
  `importe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalles`),
  KEY `id_factura` (`id_factura`),
  KEY `id_plato` (`id_plato`),
  CONSTRAINT `FK_detelles_de_la_factura_factura` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id`),
  CONSTRAINT `FK_detelles_de_la_factura_menu` FOREIGN KEY (`id_plato`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.detalles_de_la_factura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalles_de_la_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_de_la_factura` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cama` int(11) DEFAULT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `D_identidad` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cama` (`id_cama`),
  CONSTRAINT `FK_estudiante_camarero` FOREIGN KEY (`id_cama`) REFERENCES `camarero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.estudiante: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.factura
CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_camarero` int(11) DEFAULT NULL,
  `id_mesa` int(11) DEFAULT NULL,
  `fechafactura` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_factura_cliente` (`id_cliente`),
  KEY `id_camarero` (`id_camarero`),
  KEY `id_mesa` (`id_mesa`),
  CONSTRAINT `FK_factura_camarero` FOREIGN KEY (`id_camarero`) REFERENCES `camarero` (`id`),
  CONSTRAINT `FK_factura_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `FK_factura_mesa` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.factura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.investigacion_qui
CREATE TABLE IF NOT EXISTS `investigacion_qui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `diagnostico` varchar(20) DEFAULT NULL,
  `hospitalizacion` varchar(50) DEFAULT NULL,
  `tipo_anestecia` int(11) DEFAULT NULL,
  `quirofano` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `FK_investigacion_qui_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.investigacion_qui: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `investigacion_qui` DISABLE KEYS */;
/*!40000 ALTER TABLE `investigacion_qui` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.libros
CREATE TABLE IF NOT EXISTS `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_autor` int(25) DEFAULT NULL,
  `titulo` varchar(25) NOT NULL,
  `editorial` varchar(15) NOT NULL,
  `año` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `FK__autores` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.libros: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.materias
CREATE TABLE IF NOT EXISTS `materias` (
  `id_materias` int(11) NOT NULL AUTO_INCREMENT,
  `id_alumnos` int(11) DEFAULT NULL,
  `nombre_materia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_materias`),
  KEY `id_alumnos` (`id_alumnos`),
  CONSTRAINT `FK_materias_estudiante` FOREIGN KEY (`id_alumnos`) REFERENCES `estudiante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.materias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.medico
CREATE TABLE IF NOT EXISTS `medico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `cedula` varchar(9) DEFAULT NULL,
  `espacialidad` varchar(20) DEFAULT NULL,
  `ocupado` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `FK_medico_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.medico: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
REPLACE INTO `medico` (`id`, `id_paciente`, `nombre`, `apellido`, `cedula`, `espacialidad`, `ocupado`) VALUES
	(1, NULL, 'Pedro', 'Medicina', '9825123', 'internista', _binary 0x30),
	(2, NULL, 'Maria', 'Andrade', '18825123', 'nutricionista', _binary 0x30),
	(3, NULL, 'Santiago', 'Mendez', '19825123', 'gastrionterologo', _binary 0x30);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_plato` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.menu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.mesa
CREATE TABLE IF NOT EXISTS `mesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `N_puestos` int(11) DEFAULT NULL,
  `Ubicacion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.mesa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.nomina
CREATE TABLE IF NOT EXISTS `nomina` (
  `id_nomina` int(11) NOT NULL AUTO_INCREMENT,
  `sueldo` int(11) DEFAULT NULL,
  `prestaciones` int(11) DEFAULT NULL,
  `cestatiques` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nomina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.nomina: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
/*!40000 ALTER TABLE `nomina` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.notas
CREATE TABLE IF NOT EXISTS `notas` (
  `id_notas` int(11) NOT NULL AUTO_INCREMENT,
  `id_alumno` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `FK_notas_estudiante` FOREIGN KEY (`id_alumno`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `FK_notas_materias` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.notas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `fecha_N` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.paciente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `dirreccion` text,
  `telefono` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.personas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.prestamos
CREATE TABLE IF NOT EXISTS `prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_libro` int(11) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `id_camarero` int(11) DEFAULT NULL,
  `Fecha_salida` date DEFAULT NULL,
  `Fecha_entraga` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_libro` (`id_libro`),
  KEY `id_persona` (`id_persona`),
  KEY `id_camarero` (`id_camarero`),
  CONSTRAINT `FK_prestamos_camarero` FOREIGN KEY (`id_camarero`) REFERENCES `camarero` (`id`),
  CONSTRAINT `FK_prestamos_libros` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id`),
  CONSTRAINT `FK_prestamos_personas` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.prestamos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Serial_producto` varchar(20) DEFAULT NULL,
  `Nombre_pro` int(11) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.profesor
CREATE TABLE IF NOT EXISTS `profesor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_materia` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `D_identidad` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `FK_profesor_materias` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.profesor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.profesor_cursos
CREATE TABLE IF NOT EXISTS `profesor_cursos` (
  `is_PC` int(11) NOT NULL AUTO_INCREMENT,
  `id_profesor` int(11) DEFAULT NULL,
  `id_cursos` int(11) DEFAULT NULL,
  `id_asistente` int(11) DEFAULT NULL,
  PRIMARY KEY (`is_PC`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_asistentes` (`id_asistente`),
  CONSTRAINT `FK_profesor_cursos_asistentes` FOREIGN KEY (`id_asistente`) REFERENCES `asistentes` (`id_asistentes`),
  CONSTRAINT `FK__cursos` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_codigo`),
  CONSTRAINT `FK__profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.profesor_cursos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profesor_cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_cursos` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.repuestos
CREATE TABLE IF NOT EXISTS `repuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_re` varchar(20) DEFAULT NULL,
  `nombre_r` varchar(20) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.repuestos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `repuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `repuestos` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.responsable
CREATE TABLE IF NOT EXISTS `responsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `cedula` varchar(9) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `FK_responsable_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.responsable: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `responsable` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsable` ENABLE KEYS */;


-- Volcando estructura para tabla supermer.volumenes
CREATE TABLE IF NOT EXISTS `volumenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_libro` int(11) DEFAULT NULL,
  `determinado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `FK__libros` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla supermer.volumenes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `volumenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `volumenes` ENABLE KEYS */;


-- Volcando estructura para disparador supermer.Trg_despachados
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `Trg_despachados` AFTER DELETE ON `atendidos` FOR EACH ROW BEGIN
   declare id_deta,factu int;
   select id_detalles,id_factura into id_deta,factu
	from detalles_de_la_factura 
   where factu>=1;
   insert atendidos values (0,old.id_cliente,now(),'se ha despachado un cliente');
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador supermer.trg_medico
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_medico` AFTER INSERT ON `atendidos` FOR EACH ROW BEGIN
   declare id_medicox int;
   declare nombx varchar(20);
   declare ocupado binary(1);
   select id,nombre,ocupado into id_medicox,nombx,ocupado
   from medico
   where ocupado=0 limit 1;
   insert atendidos values (0,new.id_medico);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador supermer.Trig_atender
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `Trig_atender` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
  insert atendidos values (0,new.id);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para vista supermer.ate
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `ate`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `ate` AS SELECT * from atendidos ;


-- Volcando estructura para vista supermer.cama
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `cama`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `cama` AS SELECT * from camarero ;


-- Volcando estructura para vista supermer.cli
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `cli`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `cli` AS SELECT * from cliente ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
