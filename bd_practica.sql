-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2021 a las 04:32:45
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_practica`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSULTAMULTITABLA` ()  SELECT empleado.nombre, cliente.nombre FROM empleado, cliente  WHERE id_empleado = 2 AND id_cliente = 2$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSULTAMULTITABLA2` ()  SELECT area.nom_area, producto.nombre FROM area, producto  WHERE id_area = 2 AND area = 2$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(8) NOT NULL,
  `num_trabajadores` int(3) DEFAULT NULL,
  `nom_area` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `num_trabajadores`, `nom_area`) VALUES
(1, 2, 'licencias'),
(2, 2, 'hardware'),
(3, 1, 'ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombre` varchar(30) DEFAULT NULL,
  `a_paterno` varchar(30) DEFAULT NULL,
  `a_materno` varchar(30) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `id_cliente` int(8) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_afiliacion` date DEFAULT NULL,
  `num_compras` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombre`, `a_paterno`, `a_materno`, `telefono`, `id_cliente`, `fecha_nacimiento`, `fecha_afiliacion`, `num_compras`) VALUES
('Roberto', 'Hernandez', 'Perez', 3378541698, 1, '2004-01-10', '2020-05-15', 3),
('Melissa', 'Paredes', 'Cisneros', 3326987415, 2, '2002-09-05', '2019-10-24', 5),
('Cristina', 'Robles', 'Hernandez', 3363578951, 3, '1998-05-17', '2016-02-20', 2),
('Javier', 'Mendoza', 'Perez', 3320147898, 4, '2000-05-18', '2019-08-21', 5),
('Guillermo', 'Sanchez', 'Gonzales', 3325417874, 5, '1990-09-15', '2020-04-20', 6),
('Ximena', 'Salcedo', 'Olvera', 3365214789, 6, '2001-09-10', '2018-10-19', 3),
('Sergio', 'Martinez', 'Jimenez', 3326547895, 7, '2000-04-19', '2019-08-03', 6),
('Susana', 'Hernandez', 'Lopez', 3310951214, 8, '1962-05-24', '2018-09-15', 4),
('Estela', 'Barajas', 'Lozano', 3351478596, 9, '2002-05-23', '2018-12-07', 9);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cliente_datos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `cliente_datos` (
`nombre` varchar(30)
,`nom_area` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `nombre` varchar(30) DEFAULT NULL,
  `a_paterno` varchar(30) DEFAULT NULL,
  `a_materno` varchar(30) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `id_empleado` int(8) NOT NULL,
  `area` int(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`nombre`, `a_paterno`, `a_materno`, `telefono`, `id_empleado`, `area`, `fecha_nacimiento`, `fecha_ingreso`) VALUES
('Jaime', 'Garcia', 'Mayorga', 3317986967, 1, 1, '2001-09-18', '2017-08-15'),
('Antonio', 'Vina', 'Hernandez', 3320347075, 2, 2, '2002-01-18', '2016-01-18'),
('Leonardo', 'Rodriguez', 'Padilla', 3326798603, 3, 1, '2002-05-22', '2018-10-15'),
('Erick', 'Arenas', 'Amezquita', 3319739599, 4, 3, '2002-08-03', '2017-12-10'),
('Izcali', 'Landeros', 'Espinoza', 3319595263, 5, 2, '2002-03-21', '2019-05-30');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `empleadoconventas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `empleadoconventas` (
`nom_area` varchar(30)
,`nombre` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_cliente`
--

CREATE TABLE `empleado_cliente` (
  `no_atencion` bigint(10) NOT NULL,
  `id_empleado` int(8) DEFAULT NULL,
  `id_cliente` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado_cliente`
--

INSERT INTO `empleado_cliente` (`no_atencion`, `id_empleado`, `id_cliente`) VALUES
(18100313, 3, 1),
(18100314, 3, 6),
(18100315, 3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_ventas`
--

CREATE TABLE `empleado_ventas` (
  `num_venta` int(6) NOT NULL,
  `id_empleado` int(8) DEFAULT NULL,
  `folio` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado_ventas`
--

INSERT INTO `empleado_ventas` (`num_venta`, `id_empleado`, `folio`) VALUES
(100, 3, 18100097),
(101, 3, 18100098);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `usuario` varchar(30) NOT NULL,
  `id_empleado` int(8) DEFAULT NULL,
  `contrasena` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`usuario`, `id_empleado`, `contrasena`) VALUES
('Antonio', 2, 'adios123'),
('Erick', 4, 'mmpatas123'),
('Izcali', 5, 'eldeverde69'),
('Jaime', 1, 'hola123'),
('Leonardo', 3, 'gallinero123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `sku` bigint(13) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` int(6) DEFAULT NULL,
  `area` int(8) DEFAULT NULL,
  `cantidad` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`sku`, `nombre`, `precio`, `area`, `cantidad`) VALUES
(123, 'Audifonos', 250, 3, 12),
(321, 'Bocina', 500, 2, 23),
(456, 'Rgb', 9, 3, 23);

--
-- Disparadores `producto`
--
DELIMITER $$
CREATE TRIGGER `area_distinta` BEFORE INSERT ON `producto` FOR EACH ROW BEGIN IF NEW.area >= 4 THEN
SET NEW.area=3;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `precio_producto` BEFORE UPDATE ON `producto` FOR EACH ROW BEGIN
IF NEW.precio < 0 THEN
SET NEW.precio = 0;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `folio` int(8) NOT NULL,
  `fecha` date DEFAULT NULL,
  `cliente` int(8) DEFAULT NULL,
  `producto` bigint(13) DEFAULT NULL,
  `vendedor` int(8) DEFAULT NULL,
  `costo_total` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`folio`, `fecha`, `cliente`, `producto`, `vendedor`, `costo_total`) VALUES
(18100097, '2020-02-12', 1, 1, 3, 5000),
(18100098, '2020-11-17', 2, 4846513, 3, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_producto`
--

CREATE TABLE `venta_producto` (
  `no_venta` int(8) NOT NULL,
  `sku` bigint(13) DEFAULT NULL,
  `folio` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta_producto`
--

INSERT INTO `venta_producto` (`no_venta`, `sku`, `folio`) VALUES
(201, 56512, 18100097),
(202, 4516323, 18100098);

-- --------------------------------------------------------

--
-- Estructura para la vista `cliente_datos`
--
DROP TABLE IF EXISTS `cliente_datos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cliente_datos`  AS SELECT `empleado`.`nombre` AS `nombre`, `area`.`nom_area` AS `nom_area` FROM (`empleado` join `area`) WHERE `empleado`.`area` = 2 AND `area`.`id_area` = 2 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `empleadoconventas`
--
DROP TABLE IF EXISTS `empleadoconventas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empleadoconventas`  AS SELECT `area`.`nom_area` AS `nom_area`, `producto`.`nombre` AS `nombre` FROM (`area` join `producto`) WHERE `area`.`id_area` = 2 AND `producto`.`area` = 2 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `areafk` (`area`);

--
-- Indices de la tabla `empleado_cliente`
--
ALTER TABLE `empleado_cliente`
  ADD PRIMARY KEY (`no_atencion`),
  ADD KEY `id_clientefk` (`id_cliente`),
  ADD KEY `id_empleadofk` (`id_empleado`);

--
-- Indices de la tabla `empleado_ventas`
--
ALTER TABLE `empleado_ventas`
  ADD PRIMARY KEY (`num_venta`),
  ADD KEY `fk_id_empleado` (`id_empleado`),
  ADD KEY `fkfolio` (`folio`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`usuario`),
  ADD KEY `id_empleado_FK` (`id_empleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD KEY `fk_area` (`area`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`folio`);

--
-- Indices de la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD PRIMARY KEY (`no_venta`),
  ADD KEY `fk_sku` (`sku`),
  ADD KEY `fk_folio` (`folio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `areafk` FOREIGN KEY (`area`) REFERENCES `area` (`id_area`);

--
-- Filtros para la tabla `empleado_cliente`
--
ALTER TABLE `empleado_cliente`
  ADD CONSTRAINT `id_clientefk` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `id_empleadofk` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `empleado_ventas`
--
ALTER TABLE `empleado_ventas`
  ADD CONSTRAINT `fk_id_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  ADD CONSTRAINT `fkfolio` FOREIGN KEY (`folio`) REFERENCES `ventas` (`folio`);

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `id_empleado_FK` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_area` FOREIGN KEY (`area`) REFERENCES `area` (`id_area`);

--
-- Filtros para la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD CONSTRAINT `fk_folio` FOREIGN KEY (`folio`) REFERENCES `ventas` (`folio`),
  ADD CONSTRAINT `fk_sku` FOREIGN KEY (`sku`) REFERENCES `producto` (`sku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
