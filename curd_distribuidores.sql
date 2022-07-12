-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2022 a las 17:18:07
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curd_distribuidores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distributors`
--

CREATE TABLE `distributors` (
  `id` int(11) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `nombre_completo` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `tel1` varchar(30) NOT NULL,
  `tel2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distributors`
--

INSERT INTO `distributors` (`id`, `fecha`, `nombre_completo`, `direccion`, `tel1`, `tel2`) VALUES
(1, '15 de Febrero del 2022', 'Kaesy Gutiérrez', 'Fracc. Villa Galaxia, 3419', '9834517', '9752311'),
(2, '23 de Marzo del 2022', 'Maria Lopez', 'Tauro 89 Villa Galaxia', '98836', '974749');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
