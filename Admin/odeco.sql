-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2021 a las 23:46:25
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `odeco`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllByClaimAndOperator` (IN `op` VARCHAR(50))  SELECT  (
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-01-01' AND '2021-01-31'
) AS 'Enero',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-02-01' AND '2021-02-31'
) AS 'Febrero',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-03-01' AND '2021-03-31'
) AS 'Marzo',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-04-01' AND '2021-04-31'
) AS 'Abril',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-05-01' AND '2021-05-31'
) AS 'Mayo',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-06-01' AND '2021-06-31'
) AS 'Junio',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-07-01' AND '2021-07-31'
) AS 'Julio',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-08-01' AND '2021-08-31'
) AS 'Agosto',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-09-01' AND '2021-09-31'
) AS 'Septiembre',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-10-01' AND '2021-10-31'
) AS 'OCtubre',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-11-01' AND '2021-11-31'
) AS 'Noviembre',
(
    SELECT COUNT(*)
    FROM   registros
    WHERE operador = op AND
	 STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN '2021-12-01' AND '2021-12-31'
) AS 'Diciembre'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nro_formulario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operador` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_consumidor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_reclamo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servicio` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_servicio` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_reclamo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_resolucion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_resolucion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notificacion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cumplimiento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nro_formulario`, `operador`, `ubicacion`, `nombre_consumidor`, `tipo_reclamo`, `servicio`, `tipo_servicio`, `fecha_reclamo`, `tipo_resolucion`, `fecha_resolucion`, `notificacion`, `cumplimiento`) VALUES
(1, '143', 'VIVA', 'NTEL/BN', 'SALABEIBA ICHU MORENO', 'PROBLEMAS LEGALES', 'MOVIL', 'VOZ', '20/02/2021', 'IMPROCEDENTE', '11/10/2021', '18/10/2021', ''),
(2, '5489', 'TIGO', 'NTEL/CBA', 'PAMELA CRISTINA MEAVE TAPIA', 'OTROS', 'MOVIL', 'VOZ', '01/04/2021', 'IMPROCEDENTE', '22/09/2021', '29/09/2021', ''),
(3, '59138', 'ENTEL', 'NTEL/CC', 'CRISTIAN GABRIEL GRANADO ROJAS', 'OTROS', 'MOVIL', 'VOZ', '01/09/2021', 'IMPROCEDENTE', '22/09/2021', '29/09/2021', '12/10/2021'),
(4, '59139', 'AXS', 'NTEL/CC', 'ERLAN LEON SALAZAR', 'PROBLEMAS DE FACTURACION', 'MOVIL', 'VOZ', '01/09/2021', 'IMPROCEDENTE', '22/09/2021', '29/09/2021', ''),
(5, '59183', 'VIVA', 'NTEL/CC', 'WILSON TABEDO ANTONIO PACO', 'DEFICIENTE SERVICIO', 'INTERNET FIJO', 'LTE FIJO', '03/02/2021', 'PARCIALMENTE PROCEDENTE', '24/09/2021', '01/10/2021', '14/10/2021'),
(6, '8808', 'VIVA', 'NTEL/LPZ', 'KEVIN MAMANI ALVAREZ', 'PROBLEMAS LEGALES', 'MOVIL', 'VOZ', '28/09/2021', '-', '', '', ''),
(7, 'ATT 2714', 'TIGO', 'NTEL/MR', 'PAOLA S. ROJAS FERNANDEZ', 'PROBLEMAS DE FACTURACION', 'MOVIL', 'VOZ', '02/09/2021', 'PROCEDENTE', '23/09/2021', '30/09/2021', '13/10/2021'),
(8, '775', 'AXS', 'NTEL/TJ', 'ESTEBAN MANUEL IRIARTE FLORES', 'OTROS', 'INTERNET FIJO', 'LTE FIJO', '03/04/2021', 'IMPROCEDENTE', '24/09/2021', '01/10/2021', ''),
(9, '777', 'VIVA', 'NTEL/TJ', 'CLAUDIA VALENTINA ALANDIA NAVAJAS', 'MALA ATENCION', 'MOVIL', 'VOZ', '08/09/2021', 'PROCEDENTE', '29/09/2021', '06/10/2021', '19/10/2021'),
(10, '780', 'ENTEL', 'NTEL/TJ', 'MARCELO ANTONIO ZAMORA TOLEDO', 'OTROS', 'MOVIL', 'VOZ', '27/07/2021', 'PROCEDENTE', '01/10/2021', '08/10/2021', '21/10/2021');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
