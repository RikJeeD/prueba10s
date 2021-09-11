-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2021 a las 17:56:18
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aeropuerto_univalle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llegadas`
--

CREATE TABLE `llegadas` (
  `hora` time(6) NOT NULL,
  `desde` varchar(100) NOT NULL,
  `vuelo_no` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `llegadas`
--

INSERT INTO `llegadas` (`hora`, `desde`, `vuelo_no`, `estado`) VALUES
('10:35:00.000000', 'Colombia', 'A30', 'Aterrizando'),
('10:40:00.000000', 'Miami', 'A20', 'Entregando Equipaje'),
('13:00:00.000000', 'NewYork', 'A10', 'Esperado a las 13:30'),
('15:45:00.000000', 'Colombia', 'A40', 'Esperado a las 16:00'),
('18:25:00.000000', 'Colombia', 'A50', 'Esperado a las 19:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `hora` time(6) NOT NULL,
  `hacia` varchar(100) NOT NULL,
  `vuelo_no` varchar(100) NOT NULL,
  `puerta` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`hora`, `hacia`, `vuelo_no`, `puerta`, `estado`) VALUES
('11:00:00.000000', 'Chicago', 'B10', 'A14', 'A tiempo'),
('11:30:00.000000', 'New York', 'B20', 'G13', 'Retrasado'),
('12:00:00.000000', 'Manhathan', 'B90', 'Z17', 'A timepo'),
('11:00:00.000000', 'Chicago', 'B80', 'F13', 'A tiempo'),
('11:00:00.000000', 'Caracas', 'B50', 'A17', 'Retrasado'),
('11:00:00.000000', 'Somalia', 'B40', 'Y16', 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(100) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
