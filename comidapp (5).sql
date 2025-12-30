-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-12-2025 a las 00:45:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comidapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Codigo`, `Nombre`) VALUES
(1, 'Hamburguesa completa'),
(2, 'Hamburguesa simple'),
(3, 'Pancho'),
(4, 'Pancho largo'),
(5, 'Bauru'),
(6, 'Chorizo al pan'),
(7, 'Hungara'),
(8, 'Kebab'),
(9, 'Coca Cola'),
(10, 'Coca Cola Zero'),
(11, 'Coca Cola Light'),
(12, 'Fanta'),
(13, 'Sprite'),
(14, 'Sprite Zero'),
(15, 'Agua con gas'),
(16, 'Agua sin gas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IDCli` int(11) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `CICli` varchar(8) NOT NULL,
  `FormaDePago` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IDCli`, `Apellido`, `CICli`, `FormaDePago`) VALUES
(1, 'Acosta', '11111111', 'Tarjeta'),
(2, 'Martinez', '22222222', 'Tarjeta'),
(3, 'De Leon', '33333333', 'Efectivo'),
(4, 'de Los Santos', '44444444', 'Efectivo'),
(29, '', '', NULL),
(30, '', '', NULL),
(31, '', '', NULL),
(32, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `NumFactura` int(11) NOT NULL,
  `IDCli` int(11) NOT NULL,
  `IDLoc` int(11) NOT NULL,
  `CodigoArt` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `FechaIniPrecio` date NOT NULL,
  `Valida` tinyint(1) NOT NULL DEFAULT 1,
  `FormaPago` varchar(20) NOT NULL DEFAULT 'Efectivo',
  `Delivery` tinyint(1) NOT NULL DEFAULT 0,
  `DireccionEntrega` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`NumFactura`, `IDCli`, `IDLoc`, `CodigoArt`, `Cantidad`, `Fecha`, `FechaIniPrecio`, `Valida`, `FormaPago`, `Delivery`, `DireccionEntrega`) VALUES
(1, 1, 1, 5, 1, '2025-12-17', '2025-12-16', 1, 'Efectivo', 0, NULL),
(2, 4, 2, 1, 1, '2025-12-17', '2025-12-16', 1, 'Efectivo', 0, NULL),
(2, 4, 2, 4, 1, '2025-12-17', '2025-12-16', 1, 'Efectivo', 0, NULL),
(3, 1, 1, 5, 1, '2025-12-19', '2025-12-16', 1, 'Efectivo', 1, 'Estados unidos 1570'),
(4, 1, 1, 5, 1, '2025-12-23', '2025-12-16', 1, 'Tarjeta', 1, 'Republica francesa 900'),
(4, 1, 1, 12, 1, '2025-12-23', '2025-12-08', 1, 'Tarjeta', 1, 'Republica francesa 900'),
(5, 29, 1, 5, 1, '2025-12-23', '2025-12-16', 1, 'Efectivo', 1, 'Republica francesa 900'),
(5, 29, 1, 12, 1, '2025-12-23', '2025-12-08', 1, 'Efectivo', 1, 'Republica francesa 900'),
(6, 30, 1, 6, 1, '2025-12-23', '2025-12-16', 1, 'Efectivo', 0, NULL),
(6, 30, 1, 12, 1, '2025-12-23', '2025-12-08', 1, 'Efectivo', 0, NULL),
(7, 31, 2, 2, 1, '2025-12-26', '2025-12-16', 1, 'Efectivo', 0, NULL),
(7, 31, 2, 5, 1, '2025-12-26', '2025-12-16', 1, 'Efectivo', 0, NULL),
(8, 1, 1, 13, 1, '2025-12-26', '2025-12-25', 1, 'Tarjeta', 1, 'Suecia 2024'),
(8, 1, 1, 14, 1, '2025-12-26', '2025-12-25', 1, 'Tarjeta', 1, 'Suecia 2024'),
(9, 1, 1, 6, 1, '2025-12-30', '2025-12-16', 1, 'Efectivo', 1, 'Republica francesa 900');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `IDEmp` int(11) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Validacion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`IDEmp`, `RUT`, `Direccion`, `Mail`, `Nombre`, `Validacion`) VALUES
(5, '11111111111', 'Av Bulevar Artigas 1754', 'comidawow@gmail.com', 'Comida WOW', 1),
(6, '22222222222', 'San Jose 1822', 'elpepecomida@gmail.com', 'El Pepe Comida', 0),
(7, '33333333333', 'Camino Carrasco 5062', 'leappowersa@gmail.com', 'Lea Power Comida', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `ID` int(11) NOT NULL,
  `IDEmp` int(11) NOT NULL,
  `Foto` varchar(500) DEFAULT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Delivery` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `local`
--

INSERT INTO `local` (`ID`, `IDEmp`, `Foto`, `Direccion`, `Nombre`, `Delivery`) VALUES
(1, 5, 'https://lh3.googleusercontent.com/p/AF1QipPuEzx2guj16GDlfn8LRTVaa41rzDVon8tmeNQW=s680-w680-h510', 'Colonia 1399', 'Carrito Ale', 1),
(2, 5, 'https://lh3.googleusercontent.com/p/AF1QipODIRVufmYeocCFwuVaIesJVicvMcWDOCfbqifa=s680-w680-h510', 'Rambla Presidente Charles de Gaulle', 'Hamburgueseria El Condor', 0),
(3, 5, 'https://lh3.googleusercontent.com/p/AF1QipNzSGumcVfsNv9cPOFsFAzZptx3wATY1_UgbfKF=s680-w680-h510', 'Avenida Jose Belloni 4603', 'El Carro Naranja', 1),
(4, 5, 'https://lh3.googleusercontent.com/p/AF1QipOTnOZQWr-RwHoAywp11pDSui5JZB5HbiAcuJ19=s680-w680-h510', 'Avenida Jose Belloni 4575', 'El Carrito de Jorge', 0),
(5, 6, '', 'Camino Carrasco 6713', 'Carrito Delicias Caseras', 1),
(6, 6, '', 'Rambla Edinson 2501', 'Carrito Puerto Madero', 0),
(7, 6, 'https://lh3.googleusercontent.com/p/AF1QipOTkfM15SnovCyntN6E2dFC_CweTqJdQkiIB-DA=s680-w680-h510', 'Colonia 1152', 'Carrito El Italiano', 1),
(8, 6, 'https://static.where-e.com/Uruguay/Montevideo_Department/Carrito-Los-Carlitos_68a4eb9d8c0a0edbb668eeaf99fbb8c5.jpg', 'Cuareim 1652', 'Carrito Los Carlitos', 0),
(9, 7, 'https://lh3.googleusercontent.com/p/AF1QipMl-QThA1iMS9g_ZBS2yaJf2G1t2DvcEmh9TVKb=s680-w680-h510', 'Avenida Libertador 1436', 'El Macanudo', 1),
(10, 7, 'https://lh3.googleusercontent.com/p/AF1QipNnDr2AWtkcj9TP7QeinA3ICVI09OMffujaonen=s680-w680-h510', 'General Pablo Galarza', 'Carrito Rosita', 0),
(11, 7, 'https://lh3.googleusercontent.com/p/AF1QipNtevGGGRZEOY0FV3IPYaeYu9fdGm_gheJKTxRr=s680-w680-h510', 'Pablo de Maria', 'Carrito Lalo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `nombreRol`, `descripcion`) VALUES
(1, 'Administrador', 'Acceso completo'),
(2, 'Empresa', 'Usuario empresa'),
(3, 'Cliente', 'Usuario cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `ID` int(11) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`ID`, `RUT`, `Fecha`, `Estado`, `Nombre`, `Direccion`, `Mail`, `Telefono`) VALUES
(1, '11111111111', '2023-07-01', 'Validada', '', '', '', ''),
(2, '22222222222', '2023-07-01', 'Validada', '', '', '', ''),
(3, '33333333333', '2023-07-01', 'Validada', '', '', '', ''),
(12, '21070230019', '2025-12-23', 'Pendiente', 'el oga sa', 'republica', 'eloga@gmail.com', '0945642321'),
(13, '210703920014', '2025-12-25', 'Pendiente', 'elnes SA', 'Estados unidos 1570', 'Rodrigodelossantos3101@gmail.com', '093754113');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonoscliente`
--

CREATE TABLE `telefonoscliente` (
  `IDCli` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefonoscliente`
--

INSERT INTO `telefonoscliente` (`IDCli`, `Telefono`) VALUES
(1, 111111111),
(2, 222222222),
(3, 333333333),
(4, 444444444);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonosempresa`
--

CREATE TABLE `telefonosempresa` (
  `IDEmp` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefonosempresa`
--

INSERT INTO `telefonosempresa` (`IDEmp`, `Telefono`) VALUES
(5, 555555555),
(6, 666666666),
(7, 777777777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosweb`
--

CREATE TABLE `usuariosweb` (
  `ID` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `DebeCambiarPass` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuariosweb`
--

INSERT INTO `usuariosweb` (`ID`, `idRol`, `Direccion`, `Mail`, `Nombre`, `pass`, `DebeCambiarPass`) VALUES
(1, 3, '18 de Julio 3284', 'agustin@gmail.com', 'Agustin Acosta', '$2y$10$z7EmdsZnGl5FjUd0ikLGZuQiVZqRwZxpDfg2GgMmcgc9xhJodHiHy', 0),
(2, 3, '8 de Octubre 2722', 'martin@gmail.com', 'Martin Martinez', '123', 0),
(3, 3, 'Colonia 2523', 'santiago@gmail.com', 'Santiago De Leon', '123', 0),
(4, 3, 'Durazno 1320', 'rodrigo@gmail.com', 'Rodrigo de Los Santos', '$2y$10$S8bJ6RBI9Wn46R5HlNqy/.u6Um2t4YWLD4xgBWUgTiGdK3Ql8Pzhy', 0),
(5, 2, 'Av Bulevar Artigas 1754', 'comidawow@gmail.com', 'Comida WOW', '$2y$10$LX3JIax6FO6wxqUEechRieULEQlKV390YpbzLBTxgxC7589.GRsOe', 0),
(6, 2, 'San Jose 1822', 'elpepecomida@gmail.com', 'El Pepe Comida', '$2y$10$iVetUt7Mteu3D1gVkwP2zOD4mYyrPyFu6vJPIEJRlELms8fQhYCM.', 0),
(7, 2, 'Camino Carrasco 5062', 'leapowersa@gmail.com', 'Lea Power Comida', '123', 0),
(29, 3, 'Republica francesa 900', 'ndelgado@cybe.com.uy', 'Nestor Delgado', '$2y$10$Q20BXsm6qq8.MX39PHA31uc263LQRppiXc09PFY.BN0plGyaK49zC', 0),
(30, 3, 'Republica francesa 900', 'insumostadium@gmail.com', 'Lucas Paez', '$2y$10$PFlWyND1SKJ0jFhQ7giz4e/BHYqqa4AqIZNvIejjviOPleoWCZC52', 0),
(31, 3, 'Estados unidos 1570', 'dlsfede4@gmail.com', 'Federico De los santos', '$2y$10$Ph/HFBE6vy2NUfveE4U7CuPmciQAoSG88sMKQFfNJ0jhmNMLXqXwO', 0),
(32, 3, 'chacabuco 2024', 'chacabuco20241@gmail.com', 'Nestor Gabriel Delgado', '$2y$10$Aft9Smjtn1E/uwjU7qErT.a23tBuwc1yvhlLvG0B7a370XXWql/4W', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vende`
--

CREATE TABLE `vende` (
  `ID` int(11) NOT NULL,
  `IDLoc` int(11) NOT NULL,
  `CodigoArt` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT 1,
  `FechaIniPrecio` date NOT NULL,
  `FechaFinPrecio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vende`
--

INSERT INTO `vende` (`ID`, `IDLoc`, `CodigoArt`, `Precio`, `Activo`, `FechaIniPrecio`, `FechaFinPrecio`) VALUES
(17, 2, 9, 100, 0, '2025-12-08', NULL),
(18, 2, 15, 100, 0, '2025-12-08', NULL),
(19, 3, 15, 100, 1, '2025-12-08', NULL),
(21, 1, 12, 90, 1, '2025-12-08', NULL),
(22, 5, 6, 175, 1, '2025-12-08', NULL),
(23, 1, 6, 180, 1, '2025-12-16', NULL),
(24, 1, 4, 100, 1, '2025-12-16', NULL),
(26, 1, 5, 190, 1, '2025-12-16', NULL),
(27, 2, 2, 90, 1, '2025-12-16', NULL),
(28, 2, 1, 150, 1, '2025-12-16', NULL),
(29, 2, 5, 190, 1, '2025-12-16', NULL),
(30, 2, 4, 80, 1, '2025-12-16', NULL),
(31, 3, 5, 180, 1, '2025-12-16', NULL),
(32, 3, 4, 190, 1, '2025-12-16', NULL),
(33, 3, 1, 120, 1, '2025-12-16', NULL),
(34, 3, 2, 100, 1, '2025-12-16', NULL),
(35, 3, 6, 120, 1, '2025-12-16', NULL),
(36, 1, 14, 70, 1, '2025-12-25', NULL),
(37, 1, 13, 70, 1, '2025-12-25', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCli`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`NumFactura`,`CodigoArt`),
  ADD KEY `idx_compra_cliente` (`IDCli`),
  ADD KEY `idx_compra_vende` (`IDLoc`,`CodigoArt`,`FechaIniPrecio`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`IDEmp`),
  ADD UNIQUE KEY `RUT` (`RUT`);

--
-- Indices de la tabla `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDEmp` (`IDEmp`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`ID`,`RUT`),
  ADD KEY `RUT` (`RUT`);

--
-- Indices de la tabla `telefonoscliente`
--
ALTER TABLE `telefonoscliente`
  ADD PRIMARY KEY (`IDCli`,`Telefono`);

--
-- Indices de la tabla `telefonosempresa`
--
ALTER TABLE `telefonosempresa`
  ADD PRIMARY KEY (`IDEmp`,`Telefono`);

--
-- Indices de la tabla `usuariosweb`
--
ALTER TABLE `usuariosweb`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uq_usuariosweb_mail` (`Mail`),
  ADD KEY `fk_usuariosweb_roles` (`idRol`);

--
-- Indices de la tabla `vende`
--
ALTER TABLE `vende`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uq_vende_loc_art_fecha` (`IDLoc`,`CodigoArt`,`FechaIniPrecio`),
  ADD KEY `idx_vende_local` (`IDLoc`),
  ADD KEY `idx_vende_articulo` (`CodigoArt`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `local`
--
ALTER TABLE `local`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuariosweb`
--
ALTER TABLE `usuariosweb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `vende`
--
ALTER TABLE `vende`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`IDCli`) REFERENCES `usuariosweb` (`ID`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_compra_cliente` FOREIGN KEY (`IDCli`) REFERENCES `cliente` (`IDCli`),
  ADD CONSTRAINT `fk_compra_vende` FOREIGN KEY (`IDLoc`,`CodigoArt`,`FechaIniPrecio`) REFERENCES `vende` (`IDLoc`, `CodigoArt`, `FechaIniPrecio`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`IDEmp`) REFERENCES `usuariosweb` (`ID`);

--
-- Filtros para la tabla `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `local_ibfk_1` FOREIGN KEY (`IDEmp`) REFERENCES `empresa` (`IDEmp`);

--
-- Filtros para la tabla `telefonoscliente`
--
ALTER TABLE `telefonoscliente`
  ADD CONSTRAINT `telefonoscliente_ibfk_1` FOREIGN KEY (`IDCli`) REFERENCES `cliente` (`IDCli`);

--
-- Filtros para la tabla `telefonosempresa`
--
ALTER TABLE `telefonosempresa`
  ADD CONSTRAINT `telefonosempresa_ibfk_1` FOREIGN KEY (`IDEmp`) REFERENCES `empresa` (`IDEmp`);

--
-- Filtros para la tabla `usuariosweb`
--
ALTER TABLE `usuariosweb`
  ADD CONSTRAINT `fk_usuariosweb_roles` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `vende`
--
ALTER TABLE `vende`
  ADD CONSTRAINT `fk_vende_articulos` FOREIGN KEY (`CodigoArt`) REFERENCES `articulos` (`Codigo`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vende_local` FOREIGN KEY (`IDLoc`) REFERENCES `local` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
