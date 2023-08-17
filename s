-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2023 a las 04:08:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `labotaroriosql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idart` int(11) NOT NULL,
  `titart` varchar(100) NOT NULL,
  `autart` varchar(100) NOT NULL,
  `ediart` varchar(300) NOT NULL,
  `precart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idart`, `titart`, `autart`, `ediart`, `precart`) VALUES
(1, 'redes cisco', 'Ernesto Arigasello', 'Alfaomega-Rama', 60000),
(2, 'Facebook y Twitter para adultos', 'veloso Claudio', 'Alfaomega', 52000),
(3, 'Creacion de un portal con php y mysql', 'Jacobo Pavon Puertas', 'Alfaomega-Rama', 40000),
(4, 'Administracion de sistemas operativos', 'Julio Gomez Lopez', 'Alfaomega-Rama', 55000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articuloxpedido`
--

CREATE TABLE `articuloxpedido` (
  `idped_artped` int(11) NOT NULL,
  `idart_artped` int(11) NOT NULL,
  `canart_artped` int(11) NOT NULL,
  `valven_artped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articuloxpedido`
--

INSERT INTO `articuloxpedido` (`idped_artped`, `idart_artped`, `canart_artped`, `valven_artped`) VALUES
(1, 3, 5, 40000),
(2, 1, 5, 65000),
(3, 2, 10, 55000),
(4, 1, 20, 65000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguramientos`
--

CREATE TABLE `aseguramientos` (
  `asecodigo` int(11) NOT NULL,
  `asefechainicio` date NOT NULL,
  `asefechaexpiracion` date NOT NULL,
  `asevalorasegurado` int(11) NOT NULL,
  `aseestado` varchar(30) DEFAULT NULL,
  `asecosto` int(11) NOT NULL,
  `aseplaca` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aseguramientos`
--

INSERT INTO `aseguramientos` (`asecodigo`, `asefechainicio`, `asefechaexpiracion`, `asevalorasegurado`, `aseestado`, `asecosto`, `aseplaca`) VALUES
(1, '2012-09-30', '2013-09-30', 30000000, 'vigente', 500000, 'FLL420'),
(2, '2012-09-27', '2013-09-27', 35000000, 'vigente', 600000, 'DKZ820'),
(3, '2011-09-28', '2012-09-28', 50000000, 'vencido', 800000, 'KJQ920');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automotores`
--

CREATE TABLE `automotores` (
  `autoplaca` varchar(6) NOT NULL,
  `automarca` varchar(30) NOT NULL,
  `autotipo` int(11) NOT NULL,
  `automodelo` int(11) NOT NULL,
  `autonumpasajeros` int(11) NOT NULL,
  `autocilindraje` int(11) NOT NULL,
  `autonumchasis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `automotores`
--

INSERT INTO `automotores` (`autoplaca`, `automarca`, `autotipo`, `automodelo`, `autonumpasajeros`, `autocilindraje`, `autonumchasis`) VALUES
('DKZ820', 'Renault Stepway', 1, 2008, 5, 1600, 'wywwzz157kk009d45'),
('FLL420', 'Chevrolet Corsa', 1, 2003, 5, 1400, 'wywzzz167kk009d25'),
('KJQ920', 'kia sportage', 2, 2009, 7, 2000, 'wywzzz157kk009d25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcli` varchar(11) NOT NULL,
  `nomcli` varchar(30) NOT NULL,
  `apecli` varchar(30) NOT NULL,
  `dircli` varchar(100) NOT NULL,
  `depcli` varchar(20) NOT NULL,
  `mescumpli` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcli`, `nomcli`, `apecli`, `dircli`, `depcli`, `mescumpli`) VALUES
('1098765789', 'Catalina', 'Zapata', 'Av el Libertado No 30-14', 'Cauca', 'Marzo'),
('13890234', 'Roger', 'Ariza', 'Carrera 30 No 13-45', 'Antioquia', 'Junio'),
('63502718', 'Maritza', 'Rojas', 'calle 34 No 14-45', 'Santander', 'Abril'),
('77191956', 'Juan Carlos', 'Arenas', 'Diagonal 23 No 12-34 Apto 101', 'Valle', 'Marzo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `comnit` varchar(11) NOT NULL,
  `comnombre` varchar(30) NOT NULL,
  `comanofun` int(11) NOT NULL,
  `comreplegal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compania`
--

INSERT INTO `compania` (`comnit`, `comnombre`, `comanofun`, `comreplegal`) VALUES
('800890890 2', 'Seguros Atlantida', 1998, 'Carlos Lopez'),
('899999999 1', 'Aseguradora Rojas', 1991, 'Luis Fernando Rojas'),
('899999999 5', 'Seguros de Estadio', 2001, 'Maria Margarita Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Codcurs` int(11) NOT NULL,
  `nomcurs` varchar(100) NOT NULL,
  `horascur` int(11) NOT NULL,
  `valorcur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Codcurs`, `nomcurs`, `horascur`, `valorcur`) VALUES
(149842, 'Fundamentos de Base de Datos', 40, 500000),
(250067, 'Fundamentos de SQL', 20, 700000),
(289011, 'Manejo de Mysql', 45, 550000),
(345671, 'Fundamentals of Oracle', 60, 3000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `docest` varchar(11) NOT NULL,
  `nomest` varchar(30) NOT NULL,
  `apeest` varchar(30) NOT NULL,
  `edadest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`docest`, `nomest`, `apeest`, `edadest`) VALUES
('1098098097', 'jonatan', 'Ardila', 17),
('1098765678', 'Carlos', 'Martinez', 19),
('63502720', 'Maria', 'Perez', 23),
('91245678', 'Carlos Jose', 'Lopez', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantexcurso`
--

CREATE TABLE `estudiantexcurso` (
  `codcur_estcur` int(11) NOT NULL,
  `docest_estcur` varchar(11) NOT NULL,
  `fecini_estcur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidentes`
--

CREATE TABLE `incidentes` (
  `incicodigo` int(11) NOT NULL,
  `incifecha` date NOT NULL,
  `inciplaca` varchar(6) NOT NULL,
  `incilugar` varchar(40) NOT NULL,
  `incicantheridos` int(11) NOT NULL,
  `incicanfatalidades` int(11) NOT NULL,
  `incicanautosinvolucrados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `incidentes`
--

INSERT INTO `incidentes` (`incicodigo`, `incifecha`, `inciplaca`, `incilugar`, `incicantheridos`, `incicanfatalidades`, `incicanautosinvolucrados`) VALUES
(1, '2012-09-30', 'DKZ820', 'Bucaramanga', 0, 0, 2),
(2, '2012-09-27', 'FLL420', 'Giron', 1, 0, 1),
(3, '2011-09-28', 'FLL420', 'Bucaramanga', 1, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idped` int(11) NOT NULL,
  `idcliped` varchar(11) NOT NULL,
  `fecped` date NOT NULL,
  `valped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idped`, `idcliped`, `fecped`, `valped`) VALUES
(1, '63502718', '2012-02-25', 120000),
(2, '77191956', '2012-04-30', 55000),
(3, '63502718', '2011-12-10', 260000),
(4, '1098765789', '2012-02-25', 1800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `docprof` varchar(11) NOT NULL,
  `nomprof` varchar(30) NOT NULL,
  `apeprof` varchar(30) NOT NULL,
  `cateprof` int(11) NOT NULL,
  `salprof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`docprof`, `nomprof`, `apeprof`, `cateprof`, `salprof`) VALUES
('1098765789', 'Alejandra', 'Torres', 4, 1100000),
('13826789', 'Maritza', 'Angarita', 1, 550000),
('63502720', 'Martha', 'Rojas', 2, 690000),
('91216904', 'Carlos', 'Perez', 3, 950000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposautomotores`
--

CREATE TABLE `tiposautomotores` (
  `auttipo` int(11) NOT NULL,
  `autnombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiposautomotores`
--

INSERT INTO `tiposautomotores` (`auttipo`, `autnombre`) VALUES
(1, 'Automotores'),
(2, 'Campero'),
(3, 'Camiones');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idart`);

--
-- Indices de la tabla `articuloxpedido`
--
ALTER TABLE `articuloxpedido`
  ADD PRIMARY KEY (`idped_artped`);

--
-- Indices de la tabla `aseguramientos`
--
ALTER TABLE `aseguramientos`
  ADD PRIMARY KEY (`asecodigo`);

--
-- Indices de la tabla `automotores`
--
ALTER TABLE `automotores`
  ADD PRIMARY KEY (`autoplaca`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcli`);

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`comnit`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Codcurs`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`docest`);

--
-- Indices de la tabla `estudiantexcurso`
--
ALTER TABLE `estudiantexcurso`
  ADD PRIMARY KEY (`codcur_estcur`,`docest_estcur`),
  ADD KEY `docest_estcur` (`docest_estcur`);

--
-- Indices de la tabla `incidentes`
--
ALTER TABLE `incidentes`
  ADD PRIMARY KEY (`incicodigo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idped`),
  ADD KEY `idcliped` (`idcliped`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`docprof`);

--
-- Indices de la tabla `tiposautomotores`
--
ALTER TABLE `tiposautomotores`
  ADD PRIMARY KEY (`auttipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aseguramientos`
--
ALTER TABLE `aseguramientos`
  MODIFY `asecodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Codcurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345672;

--
-- AUTO_INCREMENT de la tabla `incidentes`
--
ALTER TABLE `incidentes`
  MODIFY `incicodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idped` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articuloxpedido`
--
ALTER TABLE `articuloxpedido`
  ADD CONSTRAINT `articuloxpedido_ibfk_1` FOREIGN KEY (`idped_artped`) REFERENCES `articulo` (`idart`);

--
-- Filtros para la tabla `estudiantexcurso`
--
ALTER TABLE `estudiantexcurso`
  ADD CONSTRAINT `estudiantexcurso_ibfk_1` FOREIGN KEY (`codcur_estcur`) REFERENCES `curso` (`Codcurs`),
  ADD CONSTRAINT `estudiantexcurso_ibfk_2` FOREIGN KEY (`docest_estcur`) REFERENCES `estudiante` (`docest`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idcliped`) REFERENCES `cliente` (`idcli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
