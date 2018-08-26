-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2018 a las 02:32:23
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_condoto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donaciones`
--

CREATE TABLE `donaciones` (
  `id_donacion` int(11) NOT NULL,
  `nom_donante` varchar(15) DEFAULT NULL,
  `fec_donacion` date DEFAULT NULL,
  `tipo_donacion` varchar(15) DEFAULT NULL,
  `cant_donacion` varchar(15) DEFAULT NULL,
  `id_proyecto` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades_esp`
--

CREATE TABLE `enfermedades_esp` (
  `id_enf` int(11) NOT NULL,
  `tipo_enfermedad` varchar(15) DEFAULT NULL,
  `nivel_gravedad` int(1) DEFAULT NULL,
  `tratamiento` varchar(2) DEFAULT NULL,
  `medicamento` varchar(15) DEFAULT NULL,
  `id_familia` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id_familia` int(2) NOT NULL,
  `nucleo_familiar` varchar(20) DEFAULT NULL,
  `num_integrantes` int(2) DEFAULT NULL,
  `adultos_mayores` int(1) DEFAULT NULL,
  `mayores_18` int(1) DEFAULT NULL,
  `jovenes` int(1) DEFAULT NULL,
  `niños` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juntas`
--

CREATE TABLE `juntas` (
  `id_junta` int(11) NOT NULL,
  `nom_junta` varchar(15) DEFAULT NULL,
  `id_zona` int(2) DEFAULT NULL,
  `id_proyecto` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `tipo_proyecto` varchar(15) DEFAULT NULL,
  `nom_proyecto` varchar(15) DEFAULT NULL,
  `id_zona` int(2) DEFAULT NULL,
  `presupuesto` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riesgos`
--

CREATE TABLE `riesgos` (
  `tip_riesgo` varchar(15) NOT NULL,
  `c_alerta` varchar(10) DEFAULT NULL,
  `id_zona` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viviendas`
--

CREATE TABLE `viviendas` (
  `id_vivienda` int(11) NOT NULL,
  `direccion` varchar(15) DEFAULT NULL,
  `tipo_viv` varchar(15) DEFAULT NULL,
  `mat_pared` varchar(15) DEFAULT NULL,
  `mat_suelo` varchar(15) DEFAULT NULL,
  `num_pisos` int(1) DEFAULT NULL,
  `estrato` int(1) DEFAULT NULL,
  `id_zona` int(2) DEFAULT NULL,
  `id_familia` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id_zona` int(11) NOT NULL,
  `nom_zona` varchar(15) DEFAULT NULL,
  `id_vivienda` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `donaciones`
--
ALTER TABLE `donaciones`
  ADD PRIMARY KEY (`id_donacion`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `enfermedades_esp`
--
ALTER TABLE `enfermedades_esp`
  ADD PRIMARY KEY (`id_enf`),
  ADD KEY `id_familia` (`id_familia`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id_familia`);

--
-- Indices de la tabla `juntas`
--
ALTER TABLE `juntas`
  ADD PRIMARY KEY (`id_junta`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `id_zona` (`id_zona`);

--
-- Indices de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  ADD PRIMARY KEY (`tip_riesgo`),
  ADD KEY `id_zona` (`id_zona`);

--
-- Indices de la tabla `viviendas`
--
ALTER TABLE `viviendas`
  ADD PRIMARY KEY (`id_vivienda`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_familia` (`id_familia`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zona`),
  ADD KEY `id_vivienda` (`id_vivienda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `donaciones`
--
ALTER TABLE `donaciones`
  MODIFY `id_donacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enfermedades_esp`
--
ALTER TABLE `enfermedades_esp`
  MODIFY `id_enf` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id_familia` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juntas`
--
ALTER TABLE `juntas`
  MODIFY `id_junta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `viviendas`
--
ALTER TABLE `viviendas`
  MODIFY `id_vivienda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `donaciones`
--
ALTER TABLE `donaciones`
  ADD CONSTRAINT `donaciones_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`),
  ADD CONSTRAINT `donaciones_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `enfermedades_esp`
--
ALTER TABLE `enfermedades_esp`
  ADD CONSTRAINT `enfermedades_esp_ibfk_1` FOREIGN KEY (`id_familia`) REFERENCES `familias` (`id_familia`);

--
-- Filtros para la tabla `juntas`
--
ALTER TABLE `juntas`
  ADD CONSTRAINT `juntas_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `juntas_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`),
  ADD CONSTRAINT `juntas_ibfk_3` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `juntas_ibfk_4` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `riesgos`
--
ALTER TABLE `riesgos`
  ADD CONSTRAINT `riesgos_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `riesgos_ibfk_2` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`);

--
-- Filtros para la tabla `viviendas`
--
ALTER TABLE `viviendas`
  ADD CONSTRAINT `viviendas_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `viviendas_ibfk_2` FOREIGN KEY (`id_zona`) REFERENCES `zonas` (`id_zona`),
  ADD CONSTRAINT `viviendas_ibfk_3` FOREIGN KEY (`id_familia`) REFERENCES `familias` (`id_familia`);

--
-- Filtros para la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD CONSTRAINT `zonas_ibfk_1` FOREIGN KEY (`id_vivienda`) REFERENCES `viviendas` (`id_vivienda`),
  ADD CONSTRAINT `zonas_ibfk_2` FOREIGN KEY (`id_vivienda`) REFERENCES `viviendas` (`id_vivienda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
