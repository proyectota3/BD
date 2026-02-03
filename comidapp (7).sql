-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2026 a las 23:40:24
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
(1, 'Acosta', '11111111', 'Efectivo'),
(2, 'Martinez', '22222222', 'Tarjeta'),
(3, 'De Leon', '33333333', 'Efectivo'),
(4, 'de Los Santos', '44444444', 'Efectivo'),
(29, '', '', NULL),
(30, '', '', NULL),
(31, '', '', NULL),
(32, '', '', NULL),
(33, '', '', NULL),
(34, 'Rodrigo De los santo', '57142394', 'Tarjeta'),
(35, '', '', NULL),
(36, '', '', NULL),
(37, '', '', NULL),
(38, '', '', NULL);

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
(9, 1, 1, 6, 1, '2025-12-30', '2025-12-16', 1, 'Efectivo', 1, 'Republica francesa 900'),
(10, 1, 1, 5, 1, '2025-12-31', '2025-12-16', 1, 'Efectivo', 0, NULL),
(11, 1, 1, 5, 1, '2026-01-18', '2025-12-16', 1, 'Efectivo', 1, 'Suecia 2024'),
(11, 1, 1, 12, 1, '2026-01-18', '2025-12-08', 1, 'Efectivo', 1, 'Suecia 2024'),
(12, 1, 1, 5, 1, '2026-01-23', '2025-12-16', 1, 'Efectivo', 0, NULL),
(13, 33, 2, 1, 1, '2026-01-26', '2025-12-16', 1, 'Tarjeta', 0, NULL),
(13, 33, 2, 5, 1, '2026-01-26', '2025-12-16', 1, 'Tarjeta', 0, NULL),
(14, 34, 1, 6, 1, '2026-01-30', '2025-12-16', 1, 'Tarjeta', 1, 'Republica francesa 900'),
(15, 34, 1, 5, 1, '2026-01-30', '2025-12-16', 1, 'Efectivo', 0, NULL),
(16, 34, 1, 5, 1, '2026-01-30', '2025-12-16', 1, 'Tarjeta', 1, 'Republica francesa 900'),
(17, 34, 1, 5, 1, '2026-01-30', '2025-12-16', 1, 'Tarjeta', 1, 'Estados unidos 1570'),
(18, 37, 1, 5, 1, '2026-01-30', '2025-12-16', 1, 'Tarjeta', 0, NULL),
(18, 37, 1, 13, 1, '2026-01-30', '2025-12-25', 1, 'Tarjeta', 0, NULL),
(19, 34, 1, 5, 1, '2026-02-03', '2025-12-16', 1, 'Efectivo', 0, NULL),
(19, 34, 1, 6, 1, '2026-02-03', '2025-12-16', 1, 'Efectivo', 0, NULL),
(19, 34, 1, 12, 1, '2026-02-03', '2025-12-08', 1, 'Efectivo', 0, NULL),
(20, 38, 1, 6, 1, '2026-02-03', '2025-12-16', 1, 'Tarjeta', 1, 'Andrés Lamas, 3634 ap 4');

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
(13, '210703920014', '2025-12-25', 'Pendiente', 'elnes SA', 'Estados unidos 1570', 'Rodrigodelossantos3101@gmail.com', '093754113'),
(14, '2107039200143', '2026-01-23', 'Pendiente', 'CYBE S.A', 'Estados unidos 1570', 'Rodrigodelossantos313401@gmail.com', '093754113');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudlocal`
--

CREATE TABLE `solicitudlocal` (
  `ID` int(11) NOT NULL,
  `IDEmp` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` varchar(30) NOT NULL DEFAULT 'Pendiente',
  `Nombre` varchar(60) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Delivery` tinyint(1) NOT NULL DEFAULT 0,
  `Foto` varchar(500) DEFAULT NULL,
  `ComentarioAdmin` varchar(255) DEFAULT NULL,
  `IDLocCreado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 123123),
(2, 222222222),
(3, 333333333),
(4, 444444444),
(34, 93754113);

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
(5, 2, 'Av Bulevar Artigas 1754', 'comidawow@gmail.com', 'Comida WOW', '$2y$10$ocgiF44iwiwFD2bPXpH66umwR.ub57hhuAwhA9Tbmfbtbl0Umyf5O', 0),
(6, 2, 'San Jose 1822', 'elpepecomida@gmail.com', 'El Pepe Comida', '$2y$10$iVetUt7Mteu3D1gVkwP2zOD4mYyrPyFu6vJPIEJRlELms8fQhYCM.', 0),
(7, 2, 'Camino Carrasco 5062', 'leapowersa@gmail.com', 'Lea Power Comida', '123', 0),
(29, 3, 'Republica francesa 900', 'ndelgado@cybe.com.uy', 'Nestor Delgado', '$2y$10$Q20BXsm6qq8.MX39PHA31uc263LQRppiXc09PFY.BN0plGyaK49zC', 0),
(30, 3, 'Republica francesa 900', 'insumostadium@gmail.com', 'Lucas Paez', '$2y$10$PFlWyND1SKJ0jFhQ7giz4e/BHYqqa4AqIZNvIejjviOPleoWCZC52', 0),
(31, 3, 'Estados unidos 1570', 'dlsfede4@gmail.com', 'Federico De los santos', '$2y$10$Ph/HFBE6vy2NUfveE4U7CuPmciQAoSG88sMKQFfNJ0jhmNMLXqXwO', 0),
(32, 3, 'chacabuco 2024', 'chacabuco20241@gmail.com', 'Nestor Gabriel Delgado', '$2y$10$Aft9Smjtn1E/uwjU7qErT.a23tBuwc1yvhlLvG0B7a370XXWql/4W', 0),
(33, 3, 'Suecia 2024', 'catenacciopia25@gmail.com', 'Maria Rodriguez', '$2y$10$pHk/oL2sIoEDpuZhKUuyZuJ1CtYdBS2k6pXTYnnSxEf45ctBFfoRC', 0),
(34, 3, 'Estados unidos 1570', 'Rodrigodelossantos3101@gmail.com', 'Rodrigo de los santos', '$2y$10$hk/.h6eOo9stbPko9WZ4iuFc/GFV8LSd.0zAnrP1a1HGY4wScMylu', 0),
(35, 3, 'Republica Francesa 900 esq Uruguayana', 'ngabrieel22@gmail.com', 'Gabriel Delgado', '$2y$10$ruLXUxRHK5B1uR6F.qvp4uUwyf9gLeyOd8OL.CdRprB7itLSTv4mC', 0),
(36, 3, 'Av Libertador 1723 apto 701', 'Nazita06@gmail.com', 'Nazarena Rodriguez', '$2y$10$WHBqpY/6R1mLh19PB.p7o.oUR9a7dfIUFep5x4XpVQ9LMc0odDBS6', 1),
(37, 3, 'Republica Francesa 900, CAPURRO', 'Lupaez2003@gmail.com', 'Insumos Stadium', '$2y$10$tEO6ERrm27LQAFTm2Oe.MOJsllb8mC6U4TlmJ5QYoMQRxmUmsOwum', 0),
(38, 3, 'Andrés Lamas, 3634 ap 4', 'lugonand@outlook.es', 'Gonzalo Peña', '$2y$10$Oxmdh2C0N0XdSrdLj2OaPunlsXwk5klHmxQSgmSeC5PF9Y0kRtlqO', 0);

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
(17, 2, 9, 100, 1, '2025-12-08', NULL),
(18, 2, 15, 100, 1, '2025-12-08', NULL),
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
(37, 1, 13, 70, 1, '2025-12-25', NULL),
(38, 4, 9, 70, 1, '2026-01-23', NULL),
(39, 4, 2, 70, 1, '2026-01-23', NULL);

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
-- Indices de la tabla `solicitudlocal`
--
ALTER TABLE `solicitudlocal`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_solocal_empresa` (`IDEmp`),
  ADD KEY `idx_solocal_estado` (`Estado`),
  ADD KEY `idx_solocal_loccreado` (`IDLocCreado`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `solicitudlocal`
--
ALTER TABLE `solicitudlocal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuariosweb`
--
ALTER TABLE `usuariosweb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `vende`
--
ALTER TABLE `vende`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
-- Filtros para la tabla `solicitudlocal`
--
ALTER TABLE `solicitudlocal`
  ADD CONSTRAINT `fk_solocal_empresa` FOREIGN KEY (`IDEmp`) REFERENCES `empresa` (`IDEmp`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_solocal_local` FOREIGN KEY (`IDLocCreado`) REFERENCES `local` (`ID`) ON DELETE SET NULL;

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
