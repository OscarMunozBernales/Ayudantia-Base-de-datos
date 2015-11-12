-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-11-2015 a las 03:49:03
-- Versión del servidor: 5.5.46-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `Ayudantia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Departamento`
--

CREATE TABLE IF NOT EXISTS `Departamento` (
  `Numero` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Ubicacion` varchar(255) NOT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Departamento`
--

INSERT INTO `Departamento` (`Numero`, `Nombre`, `Ubicacion`) VALUES
(11, 'Quimica', 'H3'),
(22, 'Fisica', 'D1'),
(33, 'Informatica', 'I1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE IF NOT EXISTS `Empleado` (
  `Rut` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Jefe` int(11) DEFAULT NULL,
  `Sueldo` int(11) DEFAULT NULL,
  `Num_depto` int(11) DEFAULT NULL,
  PRIMARY KEY (`Rut`),
  KEY `Num_depto` (`Num_depto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`Rut`, `Nombre`, `Jefe`, `Sueldo`, `Num_depto`) VALUES
(11, 'Oscar Muñoz', 1, 700000, 33),
(22, 'ASTUDILLO OLLIG, LORETA ISABEL', 0, 450000, 11),
(33, 'GAETE FLORES, VICTOR ANDRES', 1, 850000, 22),
(44, 'JARAMILLO LARA, CRISTOBAL ANDRES', 1, 650000, 11),
(55, 'LEIVA DROGUIER, DANIEL ANDRES', 0, 550000, 11),
(66, 'MARTINEZ MALDONADO, CRISTOBAL', 0, 430000, 33),
(77, 'PEÑA ESPINOZA, IGNACIO ANDRES', 0, 760000, 33),
(88, 'SEPULVEDA ANGERSTEIN, JUAN PABLO', 0, 890000, 22),
(99, 'VASQUEZ CARES, BORIS IVAN', 0, 1000000, 11);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD CONSTRAINT `Empleado_ibfk_1` FOREIGN KEY (`Num_depto`) REFERENCES `Departamento` (`Numero`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
