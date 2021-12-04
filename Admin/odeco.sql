-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2021 a las 04:22:51
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nro_formulario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `registros` (`id`, `nro_formulario`, `ubicacion`, `nombre_consumidor`, `tipo_reclamo`, `servicio`, `tipo_servicio`, `fecha_reclamo`, `tipo_resolucion`, `fecha_resolucion`, `notificacion`, `cumplimiento`) VALUES
(1, '143', 'NTEL/BN', 'SALABEIBA ICHU MORENO', 'PROBLEMAS LEGALES', 'MOVIL', 'VOZ', '20/09/2021', 'IMPROCEDENTE', '11/10/2021', '18/10/2021', ''),
(2, '5489', 'NTEL/CBA', 'PAMELA CRISTINA MEAVE TAPIA', 'OTROS', 'MOVIL', 'VOZ', '01/09/2021', 'IMPROCEDENTE', '22/09/2021', '29/09/2021', ''),
(3, '59138', 'NTEL/CC', 'CRISTIAN GABRIEL GRANADO ROJAS', 'OTROS', 'MOVIL', 'VOZ', '01/09/2021', 'IMPROCEDENTE', '22/09/2021', '29/09/2021', '12/10/2021'),
(4, '59139', 'NTEL/CC', 'ERLAN LEON SALAZAR', 'PROBLEMAS DE FACTURACION', 'MOVIL', 'VOZ', '01/09/2021', 'IMPROCEDENTE', '22/09/2021', '29/09/2021', ''),
(5, '59183', 'NTEL/CC', 'WILSON TABEDO ANTONIO PACO', 'DEFICIENTE SERVICIO', 'INTERNET FIJO', 'LTE FIJO', '03/09/2021', 'PARCIALMENTE PROCEDENTE', '24/09/2021', '01/10/2021', '14/10/2021'),
(6, '8808', 'NTEL/LPZ', 'KEVIN MAMANI ALVAREZ', 'PROBLEMAS LEGALES', 'MOVIL', 'VOZ', '28/09/2021', '-', '', '', ''),
(7, 'ATT 2714', 'NTEL/MR', 'PAOLA S. ROJAS FERNANDEZ', 'PROBLEMAS DE FACTURACION', 'MOVIL', 'VOZ', '02/09/2021', 'PROCEDENTE', '23/09/2021', '30/09/2021', '13/10/2021'),
(8, '775', 'NTEL/TJ', 'ESTEBAN MANUEL IRIARTE FLORES', 'OTROS', 'INTERNET FIJO', 'LTE FIJO', '03/09/2021', 'IMPROCEDENTE', '24/09/2021', '01/10/2021', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
