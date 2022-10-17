-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 04:25:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `doc_resp` varchar(20) NOT NULL,
  `nom_resp` varchar(100) NOT NULL,
  `area` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `nombre`, `marca`, `modelo`, `serial`, `doc_resp`, `nom_resp`, `area`) VALUES
(1, 'Electrocardiografo', 'Mindray ', 'Beneheart R3', '4A185', '123456789', 'Juan Pablo', 0),
(2, 'Resonador Magnetico', 'Siemens', 'Lumen 3T', '1N198', '987654321', 'David', 0),
(3, 'Maquina de Anestesia ', 'Drager ', 'Primus', 'MA210', '123459876', 'Sara', 0),
(4, 'Ultrasonido', 'General Electric', 'LOGIQ', 'JF9871', '123456789', 'Juan Pablo', 0),
(5, 'Estetoscopio', 'Littman', 'CORE', 'ES2076', '123459876', 'Sara', 0),
(6, 'Camilla', 'Los Pinos', 'Vital PL4', 'LS1012', '987654321', 'David', 0),
(7, 'Escritorio', 'Homecenter', 'Lufeia', 'EH6541', '123456789', 'Juan Pablo', 1),
(8, 'Mesa de Noche', 'Byblo ', 'Trivot', 'TR1532', '987654321', 'David', 1),
(9, 'Toma Grado Medico', 'Leviton', '125V', 'LV8921', '123459876', 'Sara', 1),
(10, 'Portatil', 'ASUS', 'TUF FX', 'AR212', '123456789', 'Juan Pablo', 2),
(11, 'Impresora', 'Epson', 'Ecotank', 'EE2345', '987654321', 'David', 2),
(12, 'Tablet', 'Apple', 'Ipad 8', 'AI3845', '123459876', 'Sara', 2),
(13, 'Pintura roja', 'Pintuco', 'xhfhau218', '67698798', '123459876', 'Sara Rios', 3),
(14, 'Mouse de computador', 'Red Dragon', 'Impact', 'M908', '123456789', 'Juan Pablo Gallo', 3),
(15, 'Oximetro', 'Ibaste', 'Braun', 'BI765', '987654321', 'David Ruiz', 3),
(16, 'Bocina', 'JBL', 'Bluetooth bose', 'BTJ1093X', '987654321', 'David Ruiz', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsables`
--

CREATE TABLE `responsables` (
  `id` int(2) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `responsables`
--

INSERT INTO `responsables` (`id`, `documento`, `nombre`, `apellido`, `correo`) VALUES
(0, '123456789', 'Juan Pablo', 'Gallo', 'gallo@gmail.com'),
(1, '987654321', 'David', 'Ruiz', 'david@gmail.com'),
(3, '123459876', 'Sara', 'Rios', 'sara@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `responsables`
--
ALTER TABLE `responsables`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
