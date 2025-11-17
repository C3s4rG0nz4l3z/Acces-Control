-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2025 a las 18:29:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlacces`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratista_in_house`
--

CREATE TABLE `contratista_in_house` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `fecha_actividad` date NOT NULL,
  `nombre_archivo` varchar(255) NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratista_in_house`
--

INSERT INTO `contratista_in_house` (`id`, `nombre_empresa`, `fecha_actividad`, `nombre_archivo`, `actividad`, `creado_en`) VALUES
(1, 'CESAR AUGUSTO GONZALEZ CIFUENTES', '0000-00-00', 'Captura de pantalla 2025-08-02 233345.png', 'trabajos en presidencia piso 9', '2025-11-17 21:07:30'),
(2, 'CESAR AUGUSTO GONZALEZ CIFUENTES', '0000-00-00', 'Captura de pantalla 2025-08-02 233345.png', 'trabajos en presidencia piso 9', '2025-11-17 21:10:25'),
(3, 'MARIA PAZ', '0000-00-00', 'Captura de pantalla 2024-01-23 132114.png', 'TrabajoS en salas TI', '2025-11-17 23:27:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratista_ocacional`
--

CREATE TABLE `contratista_ocacional` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `fecha_actividad` date NOT NULL,
  `nombre_archivo` varchar(255) NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratista_ocacional`
--

INSERT INTO `contratista_ocacional` (`id`, `nombre_empresa`, `fecha_actividad`, `nombre_archivo`, `actividad`, `creado_en`) VALUES
(1, 'CESAR AUGUSTO GONZALEZ CIFUENTES', '0000-00-00', 'asus.jpg', 'trabajos en terraza vip, pintura', '2025-11-17 21:15:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empresa`
--

CREATE TABLE `tipo_empresa` (
  `id` int(11) NOT NULL,
  `tipo_usuario` int(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_empresa`
--

INSERT INTO `tipo_empresa` (`id`, `tipo_usuario`, `fecha_registro`) VALUES
(1, 0, '2025-11-17 19:19:17'),
(2, 0, '2025-11-17 21:14:46'),
(3, 0, '2025-11-17 21:20:46'),
(14, 0, '2025-11-17 23:25:11'),
(15, 0, '2025-11-17 23:26:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `confirmar_contrasena` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contrasena`, `confirmar_contrasena`, `email`, `fecha_registro`) VALUES
(1, 'CESAR AUGUSTO GONZALEZ CIFUENTES', '12345678', '12345678', 'cesar_1984_31@hotmail.com', '2025-11-17 19:11:16'),
(2, 'MARIA PAZ', '98765432', '98765432', 'cesar_1984_34@hotmail.com', '2025-11-17 22:56:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitante`
--

CREATE TABLE `visitante` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `fecha_actividad` date NOT NULL,
  `nombre_archivo` varchar(255) NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitante`
--

INSERT INTO `visitante` (`id`, `nombre_empresa`, `fecha_actividad`, `nombre_archivo`, `actividad`, `creado_en`) VALUES
(1, 'CESAR AUGUSTO GONZALEZ CIFUENTES', '0000-00-00', 'Captura de pantalla 2024-08-23 114646.png', 'visita comercial', '2025-11-17 21:22:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contratista_in_house`
--
ALTER TABLE `contratista_in_house`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contratista_ocacional`
--
ALTER TABLE `contratista_ocacional`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indices de la tabla `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratista_in_house`
--
ALTER TABLE `contratista_in_house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contratista_ocacional`
--
ALTER TABLE `contratista_ocacional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `visitante`
--
ALTER TABLE `visitante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
