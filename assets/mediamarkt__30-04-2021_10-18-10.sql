-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2021 a las 10:18:10
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mediamarkt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `codigo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `familia` int(11) NOT NULL,
  `cod_marca` int(8) NOT NULL,
  `cod_tamaño` int(8) NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `definicion` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `smart_tv` tinyint(1) NOT NULL,
  `android_tv` tinyint(1) NOT NULL,
  `medidas_sin_peana` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `usb` int(11) NOT NULL,
  `hdmi` int(11) NOT NULL,
  `wifi` tinyint(1) NOT NULL,
  `compatible` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`codigo`, `descripcion`, `familia`, `cod_marca`, `cod_tamaño`, `tipo`, `definicion`, `smart_tv`, `android_tv`, `medidas_sin_peana`, `color`, `usb`, `hdmi`, `wifi`, `compatible`, `precio`) VALUES
('32661hn', 'ODL', 1, 1, 1, 'LED', 'HD', 1, 0, '730 mm / 431 mm / 90 mm', 'Negro', 1, 3, 0, '', 119),
('32761HN-TAB', 'ODL', 1, 1, 1, 'LED', 'HD+', 0, 1, '73 cm / 43.2 cm / 8.3 cm', 'Negro', 1, 3, 0, '', 159),
('32HE5606', '', 1, 2, 1, 'LED', 'HD Ready', 1, 1, '73 cm / 43.5 cm / 0.8 cm', 'Negro', 1, 2, 1, '', 172),
('40fe5606', '200HZ PPI, TDT2', 1, 2, 2, 'LED', 'Full HD', 0, 1, '90.5 cm / 52.4 cm / 75 mm', 'Negro', 1, 2, 1, '', 249),
('43TU7125', 'Crystal UHD', 1, 3, 3, 'LED', '4K', 0, 1, '\"108 cm (43 \"\")\"', 'Gris', 2, 2, 1, 'Amazon Alexa', 319),
('50TU7125', 'Crystal UHD', 1, 3, 4, 'LED', '4K Real', 0, 0, '111.58 cm / 64.37 cm / 5.95 cm', 'Gris', 1, 2, 1, 'Google Assistant', 359),
('55p715', '', 1, 4, 5, 'LED', 'UHD', 1, 1, '122.7 cm / 71.7 cm / 7.8', 'Plata', 2, 3, 0, 'Google Assistant', 399),
('55TU7125', 'Crystal UHD', 1, 3, 5, 'LED', '4K', 1, 0, '123.05 cm / 70.72 cm / 5.95 cm', 'Gris', 1, 2, 1, 'Google Assistant', 419),
('55tu8505', '', 1, 3, 5, 'LED', '4K', 1, 0, '123 cm / 70.59 cm / 5.74 cm', 'Negro', 2, 3, 1, 'Google Assistant', 499),
('65tu7125', 'Crystal UHD', 1, 3, 6, 'LED', '4K Real', 1, 0, '144.8 cm / 82.9 cm / 5.95 cm', 'Gris', 2, 3, 1, 'Google Assistant', 599),
('75q60t', 'QLED 4K 2020', 1, 3, 7, 'QLED', '4K', 1, 0, '167 cm / 97 cm / 6 cm', 'Negro', 2, 3, 1, 'Google Assistant', 1199),
('75tu7125', 'Crystal UHD', 1, 3, 7, 'LED', '4K Real', 1, 0, '167.22 cm / 95.77 cm / 5.95 cm', 'Gris', 1, 2, 1, 'Google Assistant', 739),
('mitv43', 'Mi TV 4S UHD', 1, 5, 3, 'LED', '4K Real', 0, 1, '95.96 cm / 55.68 cm / 8.09 cm', 'Gris', 3, 3, 1, 'Google Assistant', 299),
('mitv55', 'Mi TV 4S UHD', 1, 5, 5, 'LED', '4K', 0, 1, '123.16 cm / 71.08 cm / 8.35 cm', 'Gris', 3, 3, 1, 'Google Assistant', 399),
('t4305', '', 1, 3, 1, 'LED', 'HD', 1, 0, '73.7 cm / 43.8 cm / 7.4 cm', 'Negro', 1, 2, 1, '', 192);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `codigo` int(11) NOT NULL,
  `familia` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`codigo`, `familia`) VALUES
(1, 'Televisores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `codigo` int(11) NOT NULL,
  `marca` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`codigo`, `marca`) VALUES
(1, 'OK'),
(2, 'Thomson'),
(3, 'Samsung'),
(4, 'TCL'),
(5, 'Xiaomi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `familia` int(11) NOT NULL,
  `marca` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tamaño` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `definicion` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `smart_tv` tinyint(1) NOT NULL,
  `android_tv` tinyint(1) NOT NULL,
  `medidas_sin_peana` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `usb` int(11) NOT NULL,
  `hdmi` int(11) NOT NULL,
  `wifi` tinyint(1) NOT NULL,
  `compatible` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `descripcion`, `familia`, `marca`, `tamaño`, `tipo`, `definicion`, `smart_tv`, `android_tv`, `medidas_sin_peana`, `color`, `usb`, `hdmi`, `wifi`, `compatible`, `precio`) VALUES
('32661hn', 'ODL', 1, 'OK', '32\"', 'LED', 'HD', 1, 0, '730 mm / 431 mm / 90 mm', 'Negro', 1, 3, 0, '', 119),
('32761HN-TAB', 'ODL', 1, 'OK', '32\"', 'LED', 'HD+', 0, 1, '73 cm / 43.2 cm / 8.3 cm', 'Negro', 1, 3, 0, '', 159),
('32HE5606', '', 1, 'Thomson', '32\"', 'LED', 'HD Ready', 1, 1, '73 cm / 43.5 cm / 0.8 cm', 'Negro', 1, 2, 1, '', 172),
('40fe5606', '200HZ PPI, TDT2', 1, 'Thomson', '40\"', 'LED', 'Full HD', 0, 1, '90.5 cm / 52.4 cm / 75 mm', 'Negro', 1, 2, 1, '', 249),
('43TU7125', 'Crystal UHD', 1, 'Samsung', '43\"', 'LED', '4K', 0, 1, '\"108 cm (43 \"\")\"', 'Gris', 2, 2, 1, 'Amazon Alexa', 319),
('50TU7125', 'Crystal UHD', 1, 'Samsung', '50\"', 'LED', '4K Real', 0, 0, '111.58 cm / 64.37 cm / 5.95 cm', 'Gris', 1, 2, 1, 'Google Assistant', 359),
('55p715', '', 1, 'TCL', '55\"', 'LED', 'UHD', 1, 1, '122.7 cm / 71.7 cm / 7.8', 'Plata', 2, 3, 0, 'Google Assistant', 399),
('55TU7125', 'Crystal UHD', 1, 'Samsung', '55\"', 'LED', '4K', 1, 0, '123.05 cm / 70.72 cm / 5.95 cm', 'Gris', 1, 2, 1, 'Google Assistant', 419),
('55tu8505', '', 1, 'Samsung', '55\"', 'LED', '4K', 1, 0, '123 cm / 70.59 cm / 5.74 cm', 'Negro', 2, 3, 1, 'Google Assistant', 499),
('65tu7125', 'Crystal UHD', 1, 'Samsung', '65\"', 'LED', '4K Real', 1, 0, '144.8 cm / 82.9 cm / 5.95 cm', 'Gris', 2, 3, 1, 'Google Assistant', 599),
('75q60t', 'QLED 4K 2020', 1, 'Samsung', '75\"', 'QLED', '4K', 1, 0, '167 cm / 97 cm / 6 cm', 'Negro', 2, 3, 1, 'Google Assistant', 1199),
('75tu7125', 'Crystal UHD', 1, 'Samsung', '75\"', 'LED', '4K Real', 1, 0, '167.22 cm / 95.77 cm / 5.95 cm', 'Gris', 1, 2, 1, 'Google Assistant', 739),
('mitv43', 'Mi TV 4S UHD', 1, 'Xiaomi', '43\"', 'LED', '4K Real', 0, 1, '95.96 cm / 55.68 cm / 8.09 cm', 'Gris', 3, 3, 1, 'Google Assistant', 299),
('mitv55', 'Mi TV 4S UHD', 1, 'Xiaomi', '55\"', 'LED', '4K', 0, 1, '123.16 cm / 71.08 cm / 8.35 cm', 'Gris', 3, 3, 1, 'Google Assistant', 399),
('t4305', '', 1, 'Samsung', '32\"', 'LED', 'HD', 1, 0, '73.7 cm / 43.8 cm / 7.4 cm', 'Negro', 1, 2, 1, '', 192);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamaño`
--

CREATE TABLE `tamaño` (
  `codigo` int(11) NOT NULL,
  `tamaño` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tamaño`
--

INSERT INTO `tamaño` (`codigo`, `tamaño`) VALUES
(1, '32\"'),
(2, '40\"'),
(3, '43\"'),
(4, '50\"'),
(5, '55\"'),
(6, '65\"'),
(7, '75\"');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `televisores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `televisores` (
`codigo` varchar(15)
,`descripcion` varchar(124)
,`precio` float
);

-- --------------------------------------------------------

--
-- Estructura para la vista `televisores`
--
DROP TABLE IF EXISTS `televisores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `televisores`  AS SELECT `articulos`.`codigo` AS `codigo`, concat('TV: ',`articulos`.`tipo`,' ',`tamaño`.`tamaño`,'-',`marca`.`marca`,' ',`articulos`.`descripcion`,' ',`articulos`.`definicion`,' ',if(`articulos`.`smart_tv`,'smart tv',''),' ',if(`articulos`.`android_tv`,'android tv',''),' ',`articulos`.`compatible`) AS `descripcion`, `articulos`.`precio` AS `precio` FROM ((`articulos` join `marca` on(`articulos`.`cod_marca` = `marca`.`codigo`)) join `tamaño` on(`articulos`.`cod_tamaño` = `tamaño`.`codigo`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `cod_marca` (`cod_marca`,`cod_tamaño`),
  ADD KEY `familia` (`familia`),
  ADD KEY `cod_tamaño` (`cod_tamaño`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tamaño`
--
ALTER TABLE `tamaño`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tamaño`
--
ALTER TABLE `tamaño`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`cod_marca`) REFERENCES `marca` (`codigo`),
  ADD CONSTRAINT `articulos_ibfk_2` FOREIGN KEY (`cod_tamaño`) REFERENCES `tamaño` (`codigo`),
  ADD CONSTRAINT `articulos_ibfk_3` FOREIGN KEY (`familia`) REFERENCES `familias` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
