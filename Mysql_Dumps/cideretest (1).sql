-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2023 a las 03:17:46
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
-- Base de datos: `cideretest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add usuario', 7, 'add_usuario'),
(26, 'Can change usuario', 7, 'change_usuario'),
(27, 'Can delete usuario', 7, 'delete_usuario'),
(28, 'Can view usuario', 7, 'view_usuario'),
(29, 'Can add registro', 8, 'add_registro'),
(30, 'Can change registro', 8, 'change_registro'),
(31, 'Can delete registro', 8, 'delete_registro'),
(32, 'Can view registro', 8, 'view_registro'),
(33, 'Can add auth group', 9, 'add_authgroup'),
(34, 'Can change auth group', 9, 'change_authgroup'),
(35, 'Can delete auth group', 9, 'delete_authgroup'),
(36, 'Can view auth group', 9, 'view_authgroup'),
(37, 'Can add auth group permissions', 10, 'add_authgrouppermissions'),
(38, 'Can change auth group permissions', 10, 'change_authgrouppermissions'),
(39, 'Can delete auth group permissions', 10, 'delete_authgrouppermissions'),
(40, 'Can view auth group permissions', 10, 'view_authgrouppermissions'),
(41, 'Can add auth permission', 11, 'add_authpermission'),
(42, 'Can change auth permission', 11, 'change_authpermission'),
(43, 'Can delete auth permission', 11, 'delete_authpermission'),
(44, 'Can view auth permission', 11, 'view_authpermission'),
(45, 'Can add auth user', 12, 'add_authuser'),
(46, 'Can change auth user', 12, 'change_authuser'),
(47, 'Can delete auth user', 12, 'delete_authuser'),
(48, 'Can view auth user', 12, 'view_authuser'),
(49, 'Can add auth user groups', 13, 'add_authusergroups'),
(50, 'Can change auth user groups', 13, 'change_authusergroups'),
(51, 'Can delete auth user groups', 13, 'delete_authusergroups'),
(52, 'Can view auth user groups', 13, 'view_authusergroups'),
(53, 'Can add auth user user permissions', 14, 'add_authuseruserpermissions'),
(54, 'Can change auth user user permissions', 14, 'change_authuseruserpermissions'),
(55, 'Can delete auth user user permissions', 14, 'delete_authuseruserpermissions'),
(56, 'Can view auth user user permissions', 14, 'view_authuseruserpermissions'),
(57, 'Can add cidere registro', 15, 'add_cidereregistro'),
(58, 'Can change cidere registro', 15, 'change_cidereregistro'),
(59, 'Can delete cidere registro', 15, 'delete_cidereregistro'),
(60, 'Can view cidere registro', 15, 'view_cidereregistro'),
(61, 'Can add cidere usuario', 16, 'add_cidereusuario'),
(62, 'Can change cidere usuario', 16, 'change_cidereusuario'),
(63, 'Can delete cidere usuario', 16, 'delete_cidereusuario'),
(64, 'Can view cidere usuario', 16, 'view_cidereusuario'),
(65, 'Can add django admin log', 17, 'add_djangoadminlog'),
(66, 'Can change django admin log', 17, 'change_djangoadminlog'),
(67, 'Can delete django admin log', 17, 'delete_djangoadminlog'),
(68, 'Can view django admin log', 17, 'view_djangoadminlog'),
(69, 'Can add django content type', 18, 'add_djangocontenttype'),
(70, 'Can change django content type', 18, 'change_djangocontenttype'),
(71, 'Can delete django content type', 18, 'delete_djangocontenttype'),
(72, 'Can view django content type', 18, 'view_djangocontenttype'),
(73, 'Can add django migrations', 19, 'add_djangomigrations'),
(74, 'Can change django migrations', 19, 'change_djangomigrations'),
(75, 'Can delete django migrations', 19, 'delete_djangomigrations'),
(76, 'Can view django migrations', 19, 'view_djangomigrations'),
(77, 'Can add django session', 20, 'add_djangosession'),
(78, 'Can change django session', 20, 'change_djangosession'),
(79, 'Can delete django session', 20, 'delete_djangosession'),
(80, 'Can view django session', 20, 'view_djangosession'),
(81, 'Can add relleno', 21, 'add_relleno'),
(82, 'Can change relleno', 21, 'change_relleno'),
(83, 'Can delete relleno', 21, 'delete_relleno'),
(84, 'Can view relleno', 21, 'view_relleno'),
(85, 'Can add tabla acciones', 22, 'add_tablaacciones'),
(86, 'Can change tabla acciones', 22, 'change_tablaacciones'),
(87, 'Can delete tabla acciones', 22, 'delete_tablaacciones'),
(88, 'Can view tabla acciones', 22, 'view_tablaacciones'),
(89, 'Can add tabla paginas', 23, 'add_tablapaginas'),
(90, 'Can change tabla paginas', 23, 'change_tablapaginas'),
(91, 'Can delete tabla paginas', 23, 'delete_tablapaginas'),
(92, 'Can view tabla paginas', 23, 'view_tablapaginas'),
(93, 'Can add tabla pag revisado', 24, 'add_tablapagrevisado'),
(94, 'Can change tabla pag revisado', 24, 'change_tablapagrevisado'),
(95, 'Can delete tabla pag revisado', 24, 'delete_tablapagrevisado'),
(96, 'Can view tabla pag revisado', 24, 'view_tablapagrevisado'),
(97, 'Can add tabla r busquedas', 25, 'add_tablarbusquedas'),
(98, 'Can change tabla r busquedas', 25, 'change_tablarbusquedas'),
(99, 'Can delete tabla r busquedas', 25, 'delete_tablarbusquedas'),
(100, 'Can view tabla r busquedas', 25, 'view_tablarbusquedas'),
(101, 'Can add tabla r crud', 26, 'add_tablarcrud'),
(102, 'Can change tabla r crud', 26, 'change_tablarcrud'),
(103, 'Can delete tabla r crud', 26, 'delete_tablarcrud'),
(104, 'Can view tabla r crud', 26, 'view_tablarcrud'),
(105, 'Can add tabla r transacciones', 27, 'add_tablartransacciones'),
(106, 'Can change tabla r transacciones', 27, 'change_tablartransacciones'),
(107, 'Can delete tabla r transacciones', 27, 'delete_tablartransacciones'),
(108, 'Can view tabla r transacciones', 27, 'view_tablartransacciones'),
(109, 'Can add tabla usuario', 28, 'add_tablausuario'),
(110, 'Can change tabla usuario', 28, 'change_tablausuario'),
(111, 'Can delete tabla usuario', 28, 'delete_tablausuario'),
(112, 'Can view tabla usuario', 28, 'view_tablausuario'),
(113, 'Can add datoscidereprov', 29, 'add_datoscidereprov'),
(114, 'Can change datoscidereprov', 29, 'change_datoscidereprov'),
(115, 'Can delete datoscidereprov', 29, 'delete_datoscidereprov'),
(116, 'Can view datoscidereprov', 29, 'view_datoscidereprov'),
(117, 'Can add proveedorescsv', 30, 'add_proveedorescsv'),
(118, 'Can change proveedorescsv', 30, 'change_proveedorescsv'),
(119, 'Can delete proveedorescsv', 30, 'delete_proveedorescsv'),
(120, 'Can view proveedorescsv', 30, 'view_proveedorescsv'),
(121, 'Can add regioneschile', 31, 'add_regioneschile'),
(122, 'Can change regioneschile', 31, 'change_regioneschile'),
(123, 'Can delete regioneschile', 31, 'delete_regioneschile'),
(124, 'Can view regioneschile', 31, 'view_regioneschile'),
(125, 'Can add tabla prov revisado', 32, 'add_tablaprovrevisado'),
(126, 'Can change tabla prov revisado', 32, 'change_tablaprovrevisado'),
(127, 'Can delete tabla prov revisado', 32, 'delete_tablaprovrevisado'),
(128, 'Can view tabla prov revisado', 32, 'view_tablaprovrevisado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datoscidereprov`
--

CREATE TABLE `datoscidereprov` (
  `id` int(11) NOT NULL,
  `Nombre_Proveedor` varchar(66) DEFAULT NULL,
  `Rut_proveedor` varchar(13) DEFAULT NULL,
  `Direccion` varchar(81) DEFAULT NULL,
  `Mail` varchar(40) DEFAULT NULL,
  `Contacto` varchar(75) DEFAULT NULL,
  `Telefono_Contacto` varchar(18) DEFAULT NULL,
  `Categoria` varchar(37) DEFAULT NULL,
  `Comuna` varchar(19) DEFAULT NULL,
  `Fecha_Creacion` varchar(41) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `datoscidereprov`
--

INSERT INTO `datoscidereprov` (`id`, `Nombre_Proveedor`, `Rut_proveedor`, `Direccion`, `Mail`, `Contacto`, `Telefono_Contacto`, `Categoria`, `Comuna`, `Fecha_Creacion`) VALUES
(1, '+Talentos Latam', '77344854-K', 'Avenida Pacifico 2401', 'contacto@mastalentos.cl', 'Sergio Medina - Capacitación | Prevención de Riesgos | Coaching Ejecutivo |', '971406447', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-18-2022 4:14:21 PM'),
(2, '3Fractal Mining Services', '15610515-5', 'Circunvalación 1313, las canteras', 'nameachi@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Tierra Amarilla', '9-3-2021 5:52:15 PM'),
(3, '898 Producción e Informática SpA', '77143469-K', 'Rodolfo Vega Gonzalez 727', 'contacto@estudio898.cl', 'CRISTIAN VERA', '982864747', 'Servicios de Consultoría e Ingeniería', 'Ovalle', '3-30-2021 12:11:02 PM'),
(4, 'A&C Ingeniería', '16688923-5', 'Pedro León Gallo # 490', 'sebastian.polanco@aycingenieria.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-29-2021 6:07:54 PM'),
(5, 'A&C Ingenieria SpA', '76197173-5', 'Pedro León Gallo 490', 'alexander.urdaneta@aycingenieria.cl', 'Alejandro Pinto', '+56962823962', 'Contratistas', 'La Serena', '9-9-2021 1:11:39 PM'),
(6, 'A&M CAPACITACION EN EQUIPOS Y MAQUINARIAS', '76551406-1', 'AMUNATEGUI 489  OF317', 'mmaluendav@aymcapacitacion.cl', 'Mauricio Maluenda Valenzuela', '+56997469360', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-27-2021 12:45:03 AM'),
(7, 'A2    Arquitectura + Construcción', '76703701-5', 'luis alberto aviles 1196', 'l.alvarez@a2construcciones.cl', 'leonardo alvarez peña', '+56985689726', 'Contratistas', 'Coquimbo', '4-17-2021 12:31:51 AM'),
(8, 'AAxiom Chile', '7365999-K', 'Avenida Balmaceda No 2885', 'sergio.moya@aaxiom.com', 'Monroe Lovelady', '00-1-530-615-8410', 'Equipos y Provisiones', 'La Serena', '11-29-2021 12:41:20 PM'),
(9, 'Abancay Lab 3D', '77232311-5', 'Francisco de Aguirre 02 Local   26 y 28b', 'abancay.vivero.boutique@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-14-2023 10:58:51 AM'),
(10, 'Abasnorth', '76391069-5', 'Las Barrancas 4712-A', 'manuel@abasnorth.com', 'Manuel F. Madrid', '+56988888759', 'Equipos y Provisiones', 'Copiapó', '11-26-2021 1:08:24 PM'),
(11, 'ABC COMPOSITES EIRL', '77044313-K', 'ALTOS DE LA HERRADURA, SITIO 6, GALPON 4', 'rhalfarob@gmail.com', 'Ricardo Alfaro Briones', '+56993468596', 'Contratistas', 'Coquimbo', '3-28-2021 2:47:36 PM'),
(12, 'ABM Soluciones Digitales', '16109412-9', 'Los Geranios 242', 'mlopez@abmsoluciones.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-21-2022 10:34:17 AM'),
(13, 'Acción Istas Consultores', '76845807-3', 'Avenida Canal las perdices 6752', 'info@accionistasconsultores.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Florida', '7-12-2022 11:35:25 AM'),
(14, 'Acelera Innova', '76433139-7', 'Enrique Blondell 3089', 'natalia@acelerainnova.cl', 'Natalia Reilich', '+56942225438', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-29-2021 1:11:35 PM'),
(15, 'Aceros Otero', '88855300-2', 'Av. Los Talleres 1571 Galpon 13, Barrio Industrial', 'tzeballos@acerosotero.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-16-2021 2:45:15 PM'),
(16, 'Acpro Solutions', '76803423-0', 'Colon 352', 'chile@acprosolutions.cl', 'Yerko Bogdanic', '+56991320180', 'Equipos y Provisiones', 'La Serena', '12-4-2023 9:10:28 AM'),
(17, 'Activation Geological Services SPA', '76547935-5', 'Av La Cantera 2270', 'fernandopizarro@ageological.com', 'Fernando Pizarro', '992748069', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '11-16-2021 11:08:18 AM'),
(18, 'Ad Hominem', '76135261-K', 'Santiago Baltra 295', 'pmunoz@adh.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-10-2021 3:10:08 PM'),
(19, 'Advance-x', '13887838-4', 'Avenida Guillermo Ulriksen 2821', 'ccollao@advance-x.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-19-2022 10:35:35 PM'),
(20, 'AEG Sustainability & Suppy Chain Equity', '12130171-7', 'MARIANO LATORRE 1243', 'escuderogallardo@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-25-2022 10:08:48 AM'),
(21, 'AGE SPA', '77234606-9', 'Guillermo Ulriksen 2821', 'Srodriguez@age-spa.cl', 'Jessica Gomez', '945567621', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-23-2021 2:25:02 PM'),
(22, 'Agencia en Mente', '77069709-3', 'Edificio Portal Amunátegui #785, oficina 404', 'c.acori@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '3-27-2021 6:29:01 PM'),
(23, 'Agencia m+d', '76509871-8', 'Brasil 431', 'francisco@agenciamd.cl', 'Francisco Labbé', '+56987296798', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-26-2021 12:48:04 PM'),
(24, 'Agencia m+e comunicaciones', '77202950-0', 'Balmaceda 441, oficina 22', 'contacto@m-e.cl', 'Carla Carvajal González', '+56944441463', 'Servicios de Soporte', 'La Serena', '8-10-2021 6:04:25 PM'),
(25, 'AGQ LABS', '96964370-7', 'Pintor Enrique Lobos 1760', 'cborie@agqlabs.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-29-2022 8:39:42 AM'),
(26, 'AGROSERVICE', '6015702-2', 'LOS CALICANTOS 4464', 'AGROSERVICELOSVILOS@GMAIL.COM', 'Luis Astudillo Olmos', '995789119', 'Contratistas', 'La Serena', '8-11-2021 11:44:56 AM'),
(27, 'Agua de la Montaña', '65085068-8', 'Alfonso N° 934', 'la.coopaguamont@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '7-4-2023 8:18:42 AM'),
(28, 'Agua Viva Norte E.I.R.L.', '76508057-6', 'r. wagenknecht # 1373', 'contacto@pro-lav.cl', 'Diego Zúñiga Olavarría', '+56993303218', 'Contratistas', 'La Serena', '5-4-2021 2:43:46 AM'),
(29, 'AGUALIBRE E.I.R.L.', '76492486-K', 'Gustavo Eiffel 5528', 'pablo.zuniga@agualibre.cl', 'Pablo Zuñiga', '982881559', 'Equipos y Provisiones', 'Maipú', '8-26-2021 5:56:20 PM'),
(30, 'Aguas el boldo', '76963545-9', 'Hijuela 3 el Boldo', 'Aguaselboldo@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Salamanca', '4-8-2021 12:24:23 AM'),
(31, 'Aguas Leben', '76410625-3', 'Parcela 155 Vegas Norte', 'fsilva@leben.cl', 'Francisca Silva', '512677940', 'Equipos y Provisiones', 'La Serena', '11-17-2021 9:50:54 AM'),
(32, 'Aguasin SpA', '76377649-2', 'Panamericana Norte 18900', 'Ccontrerasr@aguasin.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Lampa', '7-20-2022 2:42:17 PM'),
(33, 'Agüeda SPA', '76538737-K', 'San Genaro calle seis casa 1324 Renca', 'agueda@lluviasolidaoficialchile.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Renca', '4-26-2021 10:00:11 AM'),
(34, 'AGUNSA Minería', '16142275-4', 'Andres Bello 2687, piso 15', 'tomas.valenzuela@agunsa.com', 'SIN CONTACTO', '', 'Contratistas', 'Las Condes', '11-16-2021 2:27:26 PM'),
(35, 'Akator SpA', '77550482-K', 'Colon 352 ofc 426 la serena', 'akatorgerencia@gmail.com', 'SIN CONTACTO', '9 61550902', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-25-2022 12:54:01 PM'),
(36, 'Aldea Oro', '76608958-5', 'avenida luis miranda 18   Sanidad', 'nicolas.neira@aldeaoro.cl', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '7-13-2023 1:38:35 PM'),
(37, 'ALMARC CHILE LTDA', '76234422-K', 'AVENIDA LA CANTERA 2212', 'marco.aceituno@almarc-chile.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '3-28-2021 1:31:01 PM'),
(38, 'ALO RENTAL', '77983880-3', 'La Cantera 2260', 'sebastian.vega@alo-group.com', 'Sebastian Vega Faull', '+56945367965', 'Equipos y Provisiones', 'Coquimbo', '12-2-2023 5:49:08 PM'),
(39, 'ALPES INGENIERIA', '76631005-2', 'Calle Quilimarí 520', 'p.fuentes@alpesingeneiria.cl', 'Pedro Fuentes', '983117785', 'Servicios de Consultoría e Ingeniería', 'Los Vilos', '7-19-2023 7:57:59 PM'),
(40, 'Alsur Diseño', '10496704-3', 'Los Arrayanes 425', 'info@alsurdiseno.cl', 'German Baeza P', '+56996365193', 'Contratistas', 'La Serena', '5-25-2021 10:12:04 PM'),
(41, 'ALTO SpA', '76676279-4', 'Avenida Ignacio Silva 209 oficina N°1', 'jpfigueroa@altospa.cl', 'Vasti Ossandón Lillo', '+56 9 4216 1049', 'Contratistas', 'Illapel', '11-23-2023 11:27:02 AM'),
(42, 'Amrentacar and service', '76564767-3', 'Avenida del mar 2450', 'Contacto@amrentacar.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '3-26-2021 12:35:35 PM'),
(43, 'AMS Ltda', '7366833-6', 'La Fragua 1247, Barrio Industrial, Coquimbo', 'morenoaldoivan@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-26-2022 1:34:16 PM'),
(44, 'Anastasia Inteligencia Artificial', '76748756-8', 'Cerro El Plomo 5630 Piso 9', 'fvicencio@anastasia.ai', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Vitacura', '3-25-2021 4:51:45 PM'),
(45, 'Anda Asesorias', '13762321-8', 'Federico Arcos 599 Puertas Del Mar', 'contacto@anda-asesorias.cl', 'Asesorias Empresariales', '984313340', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-30-2023 5:12:34 PM'),
(46, 'APG Transportes y Servicios', '6934950-1', 'Vial Recabarren 0864', 'apg.servicio@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Illapel', '7-20-2023 12:10:43 PM'),
(47, 'APRO LTDA', '86887200-4', 'La Fragua 1261 Barrio Industrial Coquimbo', 'rolando.almeyda@apro.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '3-29-2021 4:21:21 PM'),
(48, 'APROQUIM LTDA', '78114140-2', 'Los Lúcumos 1258', 'vergara.vitalichm@gmail.com', 'Milena Vergara Vitalich', '995934531', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-28-2021 6:53:28 PM'),
(49, 'AquariaLeben', '77379975-K', 'Máximo Mera 931', 'Pmeneses@aquarialeben.cl', 'Ingeniero Proyectos', '996175923', 'Equipos y Provisiones', 'La Serena', '7-24-2023 10:26:34 PM'),
(50, 'Aquasolar Superfoods', '76956580-9', 'Avenida Los Talleres 1620', 'Alfonso@aquasolar.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-24-2021 3:32:02 PM'),
(51, 'AR Energias', '77577664-1', 'Gabriel Castillo 35 andacollo', 'Ar.energiaenmovimientos@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '8-26-2023 10:16:17 AM'),
(52, 'Arafrut Casuto', '9304215-8', 'Simón Bolívar 10', 'Arafrut@gmail.com', 'Humberto Araya Morgado', '990871271', 'Equipos y Provisiones', 'Andacollo', '3-3-2021 9:32:01 AM'),
(53, 'ARAMET EIRL', '76690205-7', 'Blanca Castillo 171', 'paraya@aramet.cl', 'Pablo Araya Mardones', '931162032', 'Equipos y Provisiones', 'Ovalle', '7-14-2022 7:19:20 PM'),
(54, 'ARD Solutions', '76767817-7', 'Av Pacífico 3011', 'renzo.peirano@ardsolutions.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '8-23-2021 2:19:05 PM'),
(55, 'Arpha Servicios SpA', '77426483-3', 'Independencia 0826', 'contacto@difusioninmobiliaria.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Illapel', '1-2-2023 4:48:18 PM'),
(56, 'Arqa Constructora', '52004250-4', 'Avda Los Talleres # 1640', 'administracion@arqa.cl', 'Ana Belen Vargas', '994500075', 'Contratistas', 'Coquimbo', '4-13-2021 3:39:33 PM'),
(57, 'Arqchoapa Consultores', '77109189-K', 'José Miguel Carrera 40, El Tambo', 'avasquez@arqchoapa.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-12-2023 1:19:33 PM'),
(58, 'Arqley Consultores y Asesores', '77094496-1', 'Libertad 587, of. 608 B, La Serena.', 'ctirado@arqley.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '10-26-2022 10:56:17 AM'),
(59, 'Arretec Ltda', '76319979-7', 'Gran via 13 Tranquilla- Salamanca', 'arretec@gmail.com', 'Gustavo Arredondo Cortés', '+56984647473', 'Contratistas', 'Salamanca', '5-14-2021 1:31:28 AM'),
(60, 'Arriendo de generadores,compresores, maquinaria', '15047291-1', 'Arturo Pérez cantó 129', 'claudiovinetsias@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Salamanca', '12-4-2023 6:41:15 PM'),
(61, 'Artech SpA', '76566386-5', 'ROOSEVELT 981', 'contacto@artech.cl', 'Administración', '512477751', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '8-17-2021 1:54:33 PM'),
(62, 'Asdasdio', '77777777-7', 'Av falsa 123', 'asd@asd.cl', 'SIN CONTACTO', '', 'Contratistas', 'Vicuña', '3-24-2021 9:35:19 PM'),
(63, 'Asertivos Comunicaciones', '77382179-8', 'Avenida El Bosque 1475', 'HOLA@ASERTIVOS.CL', 'Alicia Acuña Galleguillos', '+56994614778', 'Servicios de Soporte', 'La Serena', '7-4-2023 3:35:50 PM'),
(64, 'Asesorías Ambientales', '17603183-2', 'Avenida Las Parcelas 816, torre peralillo, depto 41', 'dulloa@asesoriasambientales.cl', 'Diego Ulloa Opitz', '+56978635746', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-5-2021 8:48:06 AM'),
(65, 'ASESORIAS MINERAS GR', '15032594-3', 'Avenida los pescadores 5341', 'mariajose.guzmanrojas@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-25-2022 12:09:38 PM'),
(66, 'Astrotransportes limitada', '76838528-9', 'Calle el jardin', 'Flavioperezp@astrotransportes.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-20-2023 4:32:18 PM'),
(67, 'atacama grafica', '13175369-1', 'Luis marre 2462', 'alx.valenzuela@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Copiapó', '12-2-2023 4:49:37 PM'),
(68, 'atacama mining service spa', '13645482-K', 'san jose 411', 'dcarrasco@atacamams.cl', 'SIN CONTACTO', '', 'Contratistas', 'Copiapó', '11-30-2023 10:10:26 PM'),
(69, 'ATECH SpA', '77159691-6', 'Las Begonias 873', 'felixjesusnilob@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '10-22-2021 11:49:51 AM'),
(70, 'Atelcura LTDA', '76631964-5', 'Matadero N°930, Andacollo', 'icepeda@atcmantenimientos.cl', 'Ivan Cepeda Barraza', '+569 83335368', 'Contratistas', 'Andacollo', '4-20-2023 11:45:28 AM'),
(71, 'Ater Servicios E.i.r.l', '76823536-8', 'PARCELA 123, LOTE 2 ETAPA 123', 'ater01@hotmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '6-15-2022 11:35:48 PM'),
(72, 'ATR2 SPA', '10938496-8', 'PROVIDENCIA 472 4, SALAMANCA', 'atr2.spa@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '11-27-2023 3:54:15 PM'),
(73, 'AUDITORIAS MINERAS', '9459602-5', 'Av. Pacífico 4899, D-66', 'ibacache.sauer@gmail.com', 'ALEJANDRO IBACACHE SAUER', '+ 569 9886 3656', 'Contratistas', 'La Serena', '3-20-2021 10:30:45 AM'),
(74, 'Auka Huasi Ltda.', '76159249-1', 'Camino al club militar 115 casa 8', 'aukahuasi@gmail.com', 'Juan Luis Manso V.', '+56998283969', 'Contratistas', 'San Pedro de La Paz', '4-23-2021 1:37:21 PM'),
(75, 'AUTOMOTRIZ HANSHING', '76086102-2', 'BALMACEDA 4408', 'AUTOMOTRIZ@HANSHING.CL', 'Automotriz Hanshing', '+56987745631', 'Equipos y Provisiones', 'La Serena', '3-12-2021 2:30:52 PM'),
(76, 'AyC Spa.', '76941159-3', 'JUAN ANTONIO RÍOS 411 LA SERENA', 'apinto@aycservicios.cl', 'Andrés Pinto Folchi', '+569 7  331 8377', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-15-2022 12:16:40 PM'),
(77, 'B&G MINING', '76645838-6', '568 Calle Polaris', 'geo.edgonzalez@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-8-2023 2:20:38 AM'),
(78, 'Balmin spa', '11677268-K', 'Profesor Jorge Alfaro Ramirez  4901', 'Gcbalmace@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-1-2023 1:32:20 PM'),
(79, 'Bbac Autocontrol sanitario rural', '76601956-0', 'Avda Costanera 5415 d 414', 'contacto@phgestiontransversal.cl', 'Pilar Honorato G.', '975544293', 'Equipos y Provisiones', 'Coquimbo', '6-23-2021 6:06:42 PM'),
(80, 'Becken Consultores Ltda.', '76687735-4', 'JJ Perez 421', 'contacto@beckenconsultores.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '5-12-2021 11:15:58 AM'),
(81, 'Becker Mining Systems', '76018394-6', 'Avenida El Alfafal 471, Bodega 73', 'Ignacio.zuniga@becker-mining.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Lampa', '6-24-2022 4:37:44 PM'),
(82, 'Benjamín Pérez Segovia Andrés', '20654430-9', 'Calle pasaje salto del itata', 'benjaminperezgraviton@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-22-2023 1:21:31 PM'),
(83, 'BGE Ingeniería y Servicios', '77216333-9', 'Huérfanos 779 Depto 705', 'contacto@bge.cl', 'Roberto Godoy Cisternas', '+56 9 94101656', 'Servicios de Consultoría e Ingeniería', 'La Serena', '9-22-2021 11:50:06 PM'),
(84, 'Bicisport', '76426871-7', 'Thomas Jefferson', 'tomasmonsalve@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '3-24-2021 11:07:19 AM'),
(85, 'Biokube Chile', '77162741-2', 'Avenida Arturo Prat', 'jtoledo@biokube.cl', 'José Toledo', '+56962170618', 'Equipos y Provisiones', 'Salamanca', '11-18-2021 10:44:57 PM'),
(86, 'BioKube SPA', '13418398-5', 'Avda Arturo Prat 103', 'contacto@biokube.cl', 'Jose Toledo', '+56962170618', 'Equipos y Provisiones', 'Salamanca', '11-9-2021 11:19:11 AM'),
(87, 'BIOTEC CHILE', '96025000-1', 'RENCA 2203', 'valvarado@biotec.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Renca', '11-30-2021 3:42:48 PM'),
(88, 'Blackxel SPA', '76538242-4', 'Papudo 2949', 'melissa.alvarez@blackxel.com', 'REPRESENTANTE LEGAL', '999518569', 'Servicios de Consultoría e Ingeniería', 'La Serena', '8-10-2021 9:07:05 PM'),
(89, 'BLS Industrial', '77354678-9', 'Avenida amanecer 2030', 'fwerner@blsindustrial.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '11-14-2021 1:44:11 PM'),
(90, 'BMC Ltda', '76244408-9', 'Parcela 39  Vegas Sur', 'nnorero.bmc@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '3-30-2023 1:54:37 PM'),
(91, 'Bonluck  Bus Chile', '78335240-0', 'Mendoza 2109', 'ventasnorte@bonluck.cl', 'Eduardo Rosel R.', '+56 9 62446429', 'Equipos y Provisiones', 'Quinta Normal', '11-18-2021 1:40:36 PM'),
(92, 'Bramaq Ltda', '77120190-3', 'Parcela 16E, Cuz Cuz', 'vbrandt@bramaq.cl', 'Victor Brandt', '993186354', 'Contratistas', 'Illapel', '7-19-2022 10:46:15 AM'),
(93, 'Brisa Verde', '77601874-0', 'LOS SAUCES N869', 'Contactobrisaverde@gmail.com', 'Paulina Gutierrez Vega', '+56966841111', 'Contratistas', 'La Serena', '7-12-2022 3:56:17 PM'),
(94, 'Buena Vista', '77092531-2', 'Ruta D43 Nro. 901', 'contacto.altosgourmet@gmail.com', 'Victor Tonaca', '+56994539461', 'Contratistas', 'Coquimbo', '11-23-2021 6:41:28 PM'),
(95, 'CABAÑAS DEL SOL PICHIDANGUI', '85879300-9', 'AV. STA INES S/N', 'cabanasdelsolpichidangui@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Los Vilos', '4-23-2021 3:11:57 PM'),
(96, 'Cabañas Florencia', '4634998-9', 'Avenida Los Membrillos 846', 'administracion@cabanasflorencia.cl', 'Administración', '+56984798647', 'Servicios de Soporte', 'La Serena', '8-27-2021 12:20:20 AM'),
(97, 'CABAÑAS KAKANCHIK', '76291018-7', 'RUTA D359 KM2 SAN ISIDRO', 'reservas@kakanchik.cl', 'GERENCIA', '+56 9 8273 4105', 'Equipos y Provisiones', 'Vicuña', '4-23-2021 1:09:25 PM'),
(98, 'Cade Capacitación', '76302818-6', 'Santa elena 1399 of 503', 'alejandra@cade.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Huechuraba', '4-23-2021 11:16:14 AM'),
(99, 'CADETECH S.A', '96973190-8', 'Avda. Chacabuco 1085 of.1301', 'rkock@cadetech.cl', 'Rodolfo Köck', '+56998838553', 'Servicios de Consultoría e Ingeniería', 'Concepción', '11-24-2021 2:30:42 PM'),
(100, 'call fire', '15051354-5', 'domeyko 31', 'rrhh@callfire.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-8-2021 12:36:43 PM'),
(101, 'CALLFIRE', '76029899-9', 'DOMEYKO 31, SECTOR BAQUEDANO', 'christian.tapia@callfire.cl', 'VALENTINA SEGOVIA', '+56968464830', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-8-2023 4:51:54 PM'),
(102, 'Calzados Rizzoli', '77094290-K', 'Calle Talca 120', 'rizzoli@rizzoli.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '10-22-2021 11:37:09 AM'),
(103, 'Cámara Verde de Comercio Chile', '6609258-5', 'Ricardo Lyon 851 depto 1104', 'veronica.prado@camaraverde.org', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '7-18-2023 11:21:54 AM'),
(104, 'Camila Tello', '17772634-6', 'Avenida Francisco de Aguirre 97 Dpto. 58 A', 'ctelloaraya@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-22-2021 7:01:45 PM'),
(105, 'Camilo Miranda', '07016940-1', 'Sucursal Copiapó Plaza de Comercia- Panamericana Norte 811 Km 5, Local 26 Copiapó', 'cmiranda@gruposimma.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Copiapó', '7-21-2022 8:19:28 AM'),
(106, 'Capacitación Santa Mónica', '76176857-3', 'Catedral 1233 of 707', 'fmartin@otecsantamonica.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Santiago', '4-23-2021 11:25:40 AM'),
(107, 'Capacitaciones Jaesma', '77418026-5', 'Tomás Davis 515', 'jaesmacapacitaciones@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '6-29-2023 9:54:20 AM'),
(108, 'CAPACITACIONES MAS TU', '76471093-2', 'Doctor Sotero del Rio 476 OFCINA 24', 'sandra.figueroa@mastu.cl', 'Sandra Figueroa Neira', '+56993219456', 'Servicios de Consultoría e Ingeniería', 'Santiago', '8-27-2021 10:30:23 AM'),
(109, 'Capacitar y Crecer', '76461437-2', 'irarrazaval 1989 of 221', 'rzurita@capacitarycrecer.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Ñuñoa', '4-23-2021 12:58:18 PM'),
(110, 'CARES EIRL', '76307364-5', 'Francisco Ariztia N° 2944', 'ventas.cares@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '4-12-2021 5:43:56 PM'),
(111, 'CARLOS NELSON', '8742182-1', '1035 West Ave Apt 408,', 'carlosnelsoncn@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-1-2021 12:05:59 AM'),
(112, 'Caro fiestas', '12944051-1', 'Parcela 15 bellavista', 'caro.fiesta@hotmail.es', 'Olga rojas', '995657922', 'Equipos y Provisiones', 'La Serena', '4-3-2021 9:35:58 PM'),
(113, 'Case coast', '13223822-7', 'Av. José Manuel Balmaceda 1632', 'lortiz1977@gmail.com', 'Luis Ortiz Barahona', '+56992675161', 'Contratistas', 'La Serena', '11-5-2021 1:56:40 PM'),
(114, 'Case coast SPA', '76636839-5', 'Av Balmaceda 1632', 'danielagarrido7@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '11-5-2021 1:59:23 AM'),
(115, 'CASER Ltda.', '78356730-K', 'Pampa Baja 534', 'ivetsanmartin@gmail.com', 'Karen Marambio', '+56 9 6588 2116', 'Contratistas', 'La Serena', '11-24-2021 1:59:58 PM'),
(116, 'Castle service Recursos Humanos', '76639262-8', 'ASEO INDUSTRIAL', 'Fabiola.castillo.honores@gmail.com', 'Sebastián Pinochet Jefe de Operaciones', '981245227', 'Servicios de Soporte', 'Coquimbo', '7-27-2022 10:54:30 PM'),
(117, 'Cavat S.p.A', '14116853-3', 'Moquegua 374', 'cavatspa@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-29-2021 7:44:50 PM'),
(118, 'CDH INGENIERIA', '77972670-3', 'GABRIEL GONZALEZ VIDELA 4503', 'cdelgadillo@cdhingenieria.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-26-2023 11:48:37 AM'),
(119, 'CDN Ingenieria SpA', '77070746-3', 'Parcela 59 Lote 3A', 'jramos@cdningenieria.cl', 'JAIME RAMOS', '999972014', 'Contratistas', 'La Serena', '2-23-2021 4:54:50 PM'),
(120, 'CDN Ingeniería y Construcción', '1638559-K', 'Parcela 59, Lote 3A, La Serena', 'ivergara@cdningenieria.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-26-2022 9:34:32 AM'),
(121, 'CEAMAR SPA', '76178110-3', 'Eduardo de la Barra 210', 'lcaillaux@ceamar.cl', 'Ximena Fuentes', '961214336', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-12-2021 5:32:16 PM'),
(122, 'Ceduc-UCN', '74822900-0', 'Calle Miraflores 475 Coquimbo', 'direccion.coquimbo@ceduc.cl', 'Benjamín Ramos', '51-2547000', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '3-3-2021 12:42:03 PM'),
(123, 'Celsius Clima', '76823291-1', 'JORGE PRATT 92 CASUTO ANDACOLLO', 'nearayarebolledo@gmail.com', 'Nelson Araya Rebolledo', '+56975107826', 'Contratistas', 'Andacollo', '4-30-2021 12:38:22 PM'),
(124, 'CENTRO DE CAPACITACIÓN MINERA CENCOMIN', '76631031-1', 'LOS GIRASOLES 4525', 'ivonnegallardo@cencominchile.cl', 'Ivonne Gallardo V', '984266347', 'Servicios de Consultoría e Ingeniería', 'La Serena', '8-31-2022 10:17:05 AM'),
(125, 'CENTRO MEDICO MEDLABORAL', '77262335-6', 'AV ESTADIO 1602', 'Contacto@medlaboral.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-24-2021 8:14:20 PM'),
(126, 'Cerro Grande Ltda', '76354461-3', 'YUNGAY 461   FRAY JORGE', 'inversionescerrogrande@gmail.com', 'Juan Varas roco', '56964831386', 'Equipos y Provisiones', 'Ovalle', '7-15-2022 9:41:58 PM'),
(127, 'cevin sa', '76198033-5', 'Colo Colo 4366 La  Serena', 'jesus.maza@cevin.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-18-2022 3:21:18 PM'),
(128, 'CGA LTDA.', '76928976-3', 'Morro de Arica 8519 Of. 10', 'Comercialgonzalezavalos@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Antofagasta', '7-11-2022 12:54:44 PM'),
(129, 'CGEI Ltda.', '71762600-1', 'Vivar 1432', 'proyectos@industriales.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Iquique', '5-17-2021 9:28:11 AM'),
(130, 'chiar -clima', '24132739-6', 'pasaje los capullos 5152', 'julioantoniomoreta@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '7-19-2022 1:48:12 PM'),
(131, 'Chilecapacita SpA', '77015826-5', 'Avenida Jose Manuel Balmaceda 1362', 'direccionceec@ceec.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-27-2023 11:08:34 AM'),
(132, 'CHULAK Y CIA LTDA', '78812170-9', 'COPAYAPU #2582', 'diegojaimealfaro@gmail.com', 'DIEGO JAIME ALFARO', '964664537', 'Equipos y Provisiones', 'Copiapó', '7-13-2022 3:35:52 PM'),
(133, 'Cía. Minera Teck CDA', '15039114-0', 'pasaje Gabriela Mistral 241', 'marjorie.maluenda@teck.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Andacollo', '3-1-2021 2:37:40 PM'),
(134, 'Ciclo Azul Ingeniería', '77448742-5', 'Avenida el atardecer 4065', 'ingenieria@cicloazulingenieria.cl', 'Fernando Jara', '+56 9 99784463', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-8-2022 5:41:27 PM'),
(135, 'Cidere Región de Coquimbo', '70298600-1', 'MATTA 461  103-A', 'cidere@cidere.cl', 'Fernando Tapia', '51-2 223 090', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-1-2021 11:23:40 AM'),
(136, 'Circularmente', '77338811-3', 'Brasil 690', 'carlos@circularmente.cl', 'Carlos Brito', '+56932255519', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-1-2021 3:48:16 PM'),
(137, 'CISTERNASINGENIERIA', '10863530-4', 'LOS LUCUMOS 1246', 'ghcisternas@gmail.com', 'HENRY', '+569 90941533', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-30-2021 7:15:32 PM'),
(138, 'Claudio Covacevich', '10671193-3', 'El Chañar 625', 'claudio.covacevich@outllok.es', 'Hector Ponce', '961404585', 'Contratistas', 'La Serena', '7-26-2022 9:49:27 AM'),
(139, 'clean food chile', '16855581-4', 'parcela las cocineras n2', 'cleanfoodchile.cl@gmail.com', 'René Gonzalez', '+56990875194', 'Contratistas', 'Illapel', '12-1-2022 6:35:14 PM'),
(140, 'Clean work', '7112097-K', 'Bologna 386', 'hpc.pinto@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-1-2023 4:20:52 PM'),
(141, 'Cliniservice Salud Laboral', '77172072-2', 'Larraín alcalde #1153', 'rarenas@cliniservice.cl', 'Líder Comercial', '+56964948745', 'Contratistas', 'La Serena', '12-4-2023 7:22:03 PM'),
(142, 'COLABORACONSULTING', '77007564-5', 'Las higueras 315', 'rj.colaboraconsulting@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-1-2021 8:43:12 AM'),
(143, 'Colibri spa', '12219967-3', 'Su Santidad Papa Julio 1279', 'amalebran@live.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-17-2022 8:29:52 AM'),
(144, 'COLSAN LTDA', '76318613-K', 'CALLE BENITO REBOLLEDO 2470', 'ricardo.santibanez@colsan.cl', 'Ricardo Santibañez', '512494893', 'Contratistas', 'La Serena', '3-29-2021 4:15:33 PM'),
(145, 'Comap chile', '76070329-K', 'Licanray 368', 'luis.caniulao@comapchile.cl', 'SIN CONTACTO', '', 'Contratistas', 'Antofagasta', '11-30-2021 8:32:58 AM'),
(146, 'comelspa', '76831571-K', 'julio fosa calderón  1764', 'constr.comel@mail.com', 'Jorge Arancibia', '+56947784311', 'Servicios de Consultoría e Ingeniería', 'Quillota', '4-23-2021 7:53:57 PM'),
(147, 'COMERCIAL CLICK', '76299984-6', 'AV EL RETIRO 1227, BODEGA 2', 'contacto@comercialclick.cl', 'JUAN PABLO GUERRA', '233247534', 'Equipos y Provisiones', 'Renca', '3-26-2023 12:43:35 AM'),
(148, 'COMERCIAL CPD', '9830548-3', 'RUTA D43 # 701 CENTRO EMPRESARIAL BODEGA D4', 'RKIRKMAN@COMERCIALCPD.CL', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-25-2021 8:12:56 AM'),
(149, 'COMERCIAL CPD LIMITADA', '77655930-K', 'ALTO PENUELAS LT 1 BARRIO INDUSTRIAL', 'RKIRKMAN@COMERCIALCPD.CL', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '7-3-2022 11:23:49 PM'),
(150, 'Comercial Herrera S.A.', '76860780-K', 'Parcela 34 Sitio N1, El Panul', 'c.herrera@comercialherrera.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-24-2021 10:41:34 AM'),
(151, 'Comercial Requena', '79716590-5', 'calle Tangue', 'jrequenaramos@gmail.com', 'JOSÉ REQUENA RAMOS', '+56983892427', 'Equipos y Provisiones', 'Ovalle', '10-3-2022 3:34:59 PM'),
(152, 'COMERCIALIZADORA RGP', '76769651-5', 'Avenida Arauco 4322', 'aleytonlastarria@gmail.com', 'Arturo Leyton', '+56984946640', 'Equipos y Provisiones', 'La Serena', '7-19-2022 8:11:15 PM'),
(153, 'Comercio y servicios ltda', '77763150-0', 'geronimo mendez 02', 'trade_services@123.cl', 'cristian morales osorio', '+56999970188', 'Contratistas', 'Coquimbo', '11-4-2022 6:49:15 AM'),
(154, 'Compañía altos del valle', '77414576-1', 'Fundó talpen ruta k20 lote 1C s/n', 'cristianpantoja@aguasdelpacifico.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Constitución', '7-27-2022 7:52:49 PM'),
(155, 'COMPITE SPA', '76218469-9', 'Luisa Kneer 2820', 'rbarros@compite.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '9-9-2021 10:54:58 PM'),
(156, 'Composite Chile Proyectos', '76329629-6', 'Avda Colon 352 Ofna 415', 'mario.vidal@compositechile.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '1-5-2022 8:26:59 AM'),
(157, 'CONATI LTDA', '76675570-4', 'Padre Mariano 391 of 904', 'servicios@conati.net', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '6-25-2021 7:39:49 PM'),
(158, 'Conbeltsco', '76557583-4', 'Ossandon 175. El Llano', 'ocortes@conbeltsco.cl', 'Diego Paredes Figueroa', '932532057', 'Equipos y Provisiones', 'Coquimbo', '3-25-2021 7:09:46 PM'),
(159, 'Condimenta Store', '77456012-2', 'Milan 412 Sta. Margarita del Mar', 'tatiana.penaylillo@gmail.com', 'Tatiana Peña y Lillo', '56985340291', 'Equipos y Provisiones', 'La Serena', '7-16-2022 10:39:15 AM'),
(160, 'Construcción cortes', '15977651-4', 'Algarrobo 2 cuncumen', 'Nicole.cortes.pueyes@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '5-13-2021 1:15:51 PM'),
(161, 'CONSTRUCCIONES NAHUM', '76821472-7', 'PARCELA 40 LOTE 40-A Tranquilla', 'jquiroz@cnahum.cl', 'Juan Nahum Quiroz Tapia', '+56979568174', 'Contratistas', 'Salamanca', '5-12-2021 12:37:03 PM'),
(162, 'Construcciones YBF', '76604299-6', 'Las Ilusiones 1130', 'construccionesybf@gmail.com', 'Ana Belen Vargas', '994500075', 'Contratistas', 'La Serena', '4-13-2021 3:54:08 PM'),
(163, 'Constructora 3m E.I.R.L', '76867864-2', 'Mauricio Alegría 3484 cía alta', 'empresa.constructora3m@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '3-26-2021 6:07:08 PM'),
(164, 'Constructora CCAP', '77493756-0', 'Los Piques 489', 'contaco@constructoraccap.cl', 'Cristian Arenas palma', '+56944544462', 'Contratistas', 'Rancagua', '6-13-2022 3:38:15 PM'),
(165, 'CONSTRUCTORA E INMOBILIARIA AXIA SPA', '77545962-K', 'ARMANDO SEGUNDO LAZO 2167 NOVA HACIENDA VII', 'oscar.munizaga@axiaingenieria.cl', 'Oscar Munizaga', '953716297', 'Contratistas', 'Coquimbo', '7-28-2022 12:32:14 PM'),
(166, 'CONSTRUCTORA J Y O LTDA', '76154619-8', 'AVENIDA FRANCISCO DE AGUIRRE 075 C 411', 'jyoconstructora@gmail.com', 'CARLOS J. JULIO CAICEO', '983037205', 'Contratistas', 'La Serena', '11-20-2021 1:29:30 PM'),
(167, 'constructora rencoret ltda', '12805459-6', 'los carpinteros 1260', 'cvidela@crencoret.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-26-2022 9:40:53 AM'),
(168, 'CONSTRUCTORA RIO CRISTAL S.A.', '77530630-0', 'RUTA 41  KM 8  S/N   ALGARROBITO', 'presupuesto.riocristal@gmail.com', 'PRESUPUESTOS', '+56981392638', 'Contratistas', 'La Serena', '3-30-2021 10:55:34 AM'),
(169, 'Constructora Vitae', '76967381-4', 'Enrique Moreno 3764', 'tmundaca@constructoravitae.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '5-15-2023 4:24:16 PM'),
(170, 'Consultora DTS', '76048422-9', 'Carlos Antúnez 2025 Oficina 605', 'info@dtsconsultora.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '7-29-2022 9:27:57 AM'),
(171, 'Consultora Mundo Laboral', '76232740-6', 'DARIO BARRUETO 63', 'mundolaboral@mlaboral.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Los Ángeles', '4-27-2021 6:33:24 PM'),
(172, 'Consultora PHP', '76150027-9', 'Jorge Medina Estevez 2370. Loteo La Cantera Coquimbo.', 'phernandezperez@gmail.com', 'Pedro Hernández Pérez', '995198873', 'Contratistas', 'Coquimbo', '11-23-2021 7:58:36 AM'),
(173, 'Consultora y Asesorias A&M Limitada', '76595978-0', 'Pasje Trento 3316, Villa san Marino', 'mmaluendav@aymcapacitacion.cl', 'Mauricio Maluenda Valenzuela', '+56997469360', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '3-29-2021 1:20:26 PM'),
(174, 'CONSULTORIA VALLE DEL CHOAPA', '77501491-1', 'pasaje nueva esoeranza  62', 'contacto@consultoriavalledelchoapa.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Illapel', '7-27-2023 7:26:04 PM'),
(175, 'ContraPunto Marketing', '76347045-8', 'La Estrella 3435', 'contacto@contrapuntomktg.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-8-2021 11:24:12 PM'),
(176, 'Control distribuido', '1363297-9', 'Av el santo', 'Cuxtaingenieria@gmail.com', 'Antonio', '932150316', 'Contratistas', 'La Serena', '11-30-2023 4:20:43 PM'),
(177, 'Contrucciones Daniel Rojas', '77522444-4', 'San Julián, calle única s/n', 'rojascuellodaniel@gmail.com', 'Daniel Rojas', '926229425', 'Contratistas', 'Ovalle', '6-16-2023 9:48:29 AM'),
(178, 'Cooperativa de Artesanos y Productores de la region de coquimbo', '12666869-4', 'Fundo el espino lote A1 parcela 2 las rojas . La serena', 'fernandofredes.leiva@gmail.com', 'Fernando Fredes', '+56999712641', 'Equipos y Provisiones', 'La Serena', '7-16-2023 8:23:02 PM'),
(179, 'Cordilleramar SPA', '76998984-6', 'ARBOLEDA GRANDE PL 175, SALAMANCA', 'administracion@cordilleramar.cl', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '7-21-2022 9:53:48 AM'),
(180, 'corporación regional de desarrollo productivo', '17277142-4', 'carrera 207', 'fgallardo@crdp.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-26-2022 8:43:43 AM'),
(181, 'Cosmo Servicios  SPA', '76899592-3', 'Constitucion  8983', 'Cosmointi@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Illapel', '4-12-2021 6:24:09 PM'),
(182, 'COSMOS SAVE ENERGY', '77097736-3', 'BALMORAL 309 OFICINA 408 PISO', 'geff.lang@cosmosenergy.ai', 'Geff Lang', '998308365', 'Contratistas', 'Las Condes', '11-17-2021 9:16:13 AM'),
(183, 'CRC LTDA.', '76236091-8', 'SAN RAMON 1630, BARRIO INDUSTRIAL', 'jprieto@crcltda.cl', 'JOSE A. PRIETO SANHUEZA', '+56998851545', 'Contratistas', 'Coquimbo', '6-29-2023 11:46:07 AM'),
(184, 'Crikon Spa', '77309942-1', 'Panama 2026 oficina 01', 'contacto.crikon@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-27-2022 10:19:11 PM'),
(185, 'CristalPlas', '77299847-3', 'Los talleres 1621, Galpón 11', 'aguasyenvases@gmail.com', 'Claudio Ogaz', '920281661', 'Equipos y Provisiones', 'Coquimbo', '11-18-2021 1:34:35 PM'),
(186, 'Crusher mantenimiento mecánico', '77019023-1', 'Sitio 4 la rinconada sector el sauce', 'Crusher.mecanico@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-15-2021 7:23:00 PM'),
(187, 'CRUSHING ENGINEERING', '76738077-1', 'GERONIMO MENDEZ 1541', 'manager@crushing.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '7-19-2022 4:48:09 PM'),
(188, 'CSH Contratista SPA', '76460242-0', 'Avenida Gerónimo Mendez #1595, galpón n°5, Barrio Industrial', 'cecil.salfate@cshcontratista.cl', 'Cecil Salfate Bravo', '953342124', 'Contratistas', 'Coquimbo', '7-27-2023 5:12:42 PM'),
(189, 'cug chile', '76597917-K', 'regimiento Arica 6069', 'c.urrutia@cugchile.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-15-2021 3:46:56 PM'),
(190, 'CUPEC ltda', '76357461-K', 'Artesanos marcos muñoz 7068', 'finanzas@cupec.cl', 'Esteban Hurtado Gutierrez', '+56991500654', 'Contratistas', 'Copiapó', '4-6-2021 2:18:52 PM'),
(191, 'CV Netgrow SpA', '76659614-2', 'Lomas del Inca 21-A', 'cvinew@yahoo.com', 'Christian Vine', '56988995211', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-1-2021 8:40:22 AM'),
(192, 'Cyana ingeniería', '77221068-K', 'Yungay 363 Combarbalá', 'contacto@cyana.cl', 'Gabriel Mesquida Diaz', '948653728', 'Servicios de Consultoría e Ingeniería', 'Combarbalá', '11-30-2021 11:59:25 PM'),
(193, 'Daniel Alcayaga', '15028155-5', 'regimiento arica 125', 'dalcayaga@maquinariasreal.cl', 'Jaime Barceló', '51 2 241585', 'Equipos y Provisiones', 'Coquimbo', '11-25-2021 12:22:13 PM'),
(194, 'DAVAROS Montajes Eléctricos', '76681908-7', 'AV BALMACEDA 2885 OF 308', 'david.vargas@davaros.cl', 'GERENCIA Y PROYECTOS', '973324371', 'Contratistas', 'La Serena', '7-11-2022 9:53:03 PM'),
(195, 'David sanchez', '13776268-4', 'Pje Arquitecto Luis Avalo 1172   SINDEMPART', 'dasator@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-28-2023 3:19:51 PM'),
(196, 'Delmax Ltda', '76157823-5', 'Las Campanas 1487, Bosque San Carlos, Coquimbo', 'mauricio@delmax.cl', 'Juan Araya', '950014824', 'Contratistas', 'Coquimbo', '8-11-2021 8:17:05 AM'),
(197, 'DEWARE SpA', '77442684-1', 'Los Carpinteros Lote 1 I Alto Peñuelas Coquimbo', 'contacto@deware.cl', 'Rodrigo A. Muñoz Fernández', '+56973031187', 'Contratistas', 'Coquimbo', '11-24-2021 9:35:03 AM'),
(198, 'DGIM INVERSIONES S.A.', '76129362-1', 'Av. Juan Cisternas 1960 Edif. Vita Oficinas 1 y 2', 'horacio.arancibia@dgim.cl', 'HORACIO ARANCIBIA DIAZ', '+56978099060', 'Contratistas', 'La Serena', '4-29-2021 5:58:52 PM'),
(199, 'Dhormuz SPA', '76805083-K', 'Huerfanos 1550 depto 503', 'ivan.gonzalez@dhormuz.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Santiago', '7-26-2023 4:05:46 PM'),
(200, 'Diaz construcciones', '77444997-3', 'Jorge Martínez 4404', 'diazconstruccion01@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-28-2021 2:50:10 PM'),
(201, 'Digital Street', '76933329-0', 'Santiago Amengual 394', 'felipe@digitalstreet.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '3-25-2021 11:54:18 AM'),
(202, 'DIGITALNET', '76638854-K', 'Fidel Alcayaga 65', 'ramonserey@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '5-5-2021 3:11:38 PM'),
(203, 'DIMATEL SPA', '76787907-5', 'LOS CARPINTEROS 1220', 'jpizarro@dimatel.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '5-5-2021 2:32:55 PM'),
(204, 'Dimensión Ambiental Spa', '77574356-5', 'Miramar 6200 B 2 Penuelas', 'claudia.rivera@dimensionambiental.cl', 'Claudia Rivera Rojas - Directora Ejecutiva Dimensión Ambiental', '+56974771577', 'Servicios de Consultoría e Ingeniería', 'La Serena', '6-29-2023 11:23:46 AM'),
(205, 'Dimensión Ambiental Spa', '8953128-4', 'Miramar 6200', 'contacto@dimensionambiental.cl', 'Claudia Rivera Rojas', '+56974771577', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-26-2023 8:55:18 AM'),
(206, 'Dixsa SPA', '77523874-7', 'Los perales 1285', 'contaco@dixsa.cl', 'Juan Olguín', '995063024', 'Servicios de Consultoría e Ingeniería', 'La Serena', '2-14-2022 12:16:28 PM'),
(207, 'DMC Minería de Residuos', '76253844-K', 'El Trapiche 1340', 'r@diparodi.cl', 'GASTON DI PARODI', '+56992199418', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-20-2022 11:11:28 AM'),
(208, 'DNS INGENIERIA MANTENIMIENTO', '76975064-9', 'Heriberto palacios 2740', 'Cindyacortes05@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-29-2021 1:03:43 PM'),
(209, 'D\'Oliver', '76730762-4', 'Av Balmaceda 889', 'distribuidora.doliver@gmail.com', 'OLIVER VEAS', '512406336', 'Equipos y Provisiones', 'La Serena', '11-29-2021 5:09:05 PM'),
(210, 'DOMEX INTERNATIONAL', '78279030-7', 'Uribe km 6', 'Anagel@h-eparts.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Antofagasta', '11-29-2021 2:53:37 PM'),
(211, 'DONDE EL GUATON', '76423424-3', 'Avenida Santa Teresa 240', 'lcasonaguaton@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Los Andes', '4-23-2021 10:46:00 AM'),
(212, 'DOSH Consultores', '76652045-6', 'El Laurel 331, La Serena', 'mjvalderrama@doshconsultores.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-22-2022 12:59:44 PM'),
(213, 'Dot4Data', '77530531-2', 'Las Hualtatas 5332 vitacura santiago', 'carlosweberc@outlook.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-26-2022 11:28:58 AM'),
(214, 'dpcrea spa', '76895835-1', 'sargento aldea 709', 'contactos@dpcrea.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '7-4-2023 10:05:41 AM'),
(215, 'DrawingPro', '15039826-6', 'Gabriela Mistral 117', 'Stika04@yahoo.es', 'DARWIN ROMERO ROJAS', '961931321', 'Servicios de Soporte', 'Ovalle', '7-19-2022 5:09:47 PM'),
(216, 'Drima Group Limitada', '76704708-8', 'Flor del cobre 2160', 'contacto@drima.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-24-2021 11:30:49 PM'),
(217, 'DVDRILLING SPA', '76637910-9', 'La Fragua 1030, Barrio Industrial Coquimbo', 'cvillanueva@dvdrilling.cl', 'DAVID VILLANUEVA PÉREZ', '+56990895702', 'Contratistas', 'Coquimbo', '7-5-2021 11:22:47 AM'),
(218, 'DZF CERTIFICA EIRL', '77086301-5', 'PASAJE EL ESFUERZO 24', 'Odiaz@dzfcertifica.com', 'SIN CONTACTO', '', 'Contratistas', 'Padre Hurtado', '7-27-2022 11:09:51 PM'),
(219, 'Ebaeza BJ', '96625840-3', 'JOSE MANUEL BALMACEDA 371', 'ramigob@ebaeza.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Santiago', '11-29-2021 7:36:48 PM'),
(220, 'Eco Bio Spa', '77532812-6', 'Arturo Pérez Canto 129', 'ecobioasesoriasyservicios@gmail.com', 'Andrea Henriquez', '944882534', 'Equipos y Provisiones', 'Salamanca', '7-18-2022 3:14:12 PM'),
(221, 'Ecomining Technologies limitada', '76064262-2', 'rio cautin 1027', 'hquilhot@ecomining.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '3-25-2021 5:46:13 PM'),
(222, 'Ecosystem S.A.', '95680000-5', 'Diagonal Oriente 1381', 'fvalenzuela@ecosystem.cl', 'Pablo Ugarte Saldivia', '+56983414414', 'Equipos y Provisiones', 'Ñuñoa', '7-10-2023 8:48:31 AM'),
(223, 'Editec SPA', '85484800-3', 'San Crescente 81', 'wbearzot@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Las Condes', '9-30-2021 10:23:03 PM'),
(224, 'Edn Impresores', '83719500-4', 'calle nueva 2 - 1240 Barrio Industrial Coquimbo', 'larcos@edn.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-30-2021 10:37:10 AM'),
(225, 'Educación y Formación Empresarial', '76199874-9', 'Alamos 1810', 'mcabrera@proyectaycrece.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Santiago', '4-25-2021 8:50:14 PM'),
(226, 'Efímera; Arquitectura en Movimiento', '76688056-8', 'Infante 454', 'mguaita@efimera.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Copiapó', '7-17-2023 10:41:14 AM'),
(227, 'Electricidad Valo', '76796640-7', 'Ruta 5 Norte Km 476.5, Parcela 110B', 'edgardo.cartes@valo.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '11-2-2021 11:00:16 AM'),
(228, 'ELECTROFRIO', '12806478-8', 'Baquedano 941', 'dany.alvarez@comercialelectrofrio.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-24-2021 11:52:22 AM'),
(229, 'ELIZABETH MILLES', '8986505-0', 'TERMINAL AGRO LA PALMERA LOCAL 82-83', 'ELIZABETH.MILLES@HOTMAIL.COM', 'ELIZABETH MILLES', '+56993229220', 'Equipos y Provisiones', 'La Serena', '1-3-2022 8:16:29 AM'),
(230, 'Emeltec SPA', '76455593-7', 'AVENIDA DEL VALLE 576  OF 505', 'fdiaz@emeltec.cl', 'Francisco Diaz', '944746745', 'Equipos y Provisiones', 'Huechuraba', '11-17-2021 12:39:44 PM'),
(231, 'EMG Ingeniería y servicios', '76765809-5', 'Teniente Merino 2426', 'emgingenieriayservicios@gmail.com', 'Eduardo Alexis Mondaca Guerrero', '987362421', 'Contratistas', 'La Serena', '12-14-2021 4:51:52 PM'),
(232, 'Empresa Brisa Verde', '76511149-8', 'Jose Arrieta 82 Santiago.', 'Contactobrisaverde@gmail.com', 'Paulina Gutiérrez Vega', '+56966841111', 'Contratistas', 'La Serena', '5-26-2021 2:25:57 PM'),
(233, 'Empresa de seguridad privada Securitybulls', '12006938-1', 'BALMACEDA 391  204', 'Contacto@securitybulls.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '11-29-2021 4:32:48 PM'),
(234, 'Empresa Francini fabricación en hojalatería y en acerox', '10968862-2', 'Doñihue 3340', 'ri.cardo41condori@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Alto Hospicio', '4-9-2021 8:13:00 PM'),
(235, 'Empresa Millan', '11615520-6', 'Miguel Aguirre N° 471', 'jessica.millan@jmillan.cl', 'Jessica Millan Muñoz', '958586578', 'Contratistas', 'Ovalle', '3-16-2021 12:20:24 PM'),
(236, 'Empresa Wilcap', '76657035-6', 'Pasaje María Fernández #931, Sector Casuto, Andacollo.', 'w.ochoacortes@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '8-4-2021 4:28:12 PM'),
(237, 'Empresas Lipigas', '96928510-K', 'Sitio 62 alto peñuelas', 'javier.cea35@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '7-4-2023 9:13:50 AM'),
(238, 'ENCOPARTS', '76374692-5', 'Parcela 18, Lote 15', 'juan.loch@encoparts.cl', 'Juan Eduardo Loch', '56975170080', 'Equipos y Provisiones', 'La Serena', '8-8-2021 11:44:49 AM'),
(239, 'Energía del Valle', '76794961-8', 'Calle Tacora 1703, Cerro Grande', 'darwin.olivares@energiadelvalle.cl', 'Darwin Olivares', '+56940940023', 'Contratistas', 'La Serena', '4-5-2021 4:53:28 PM'),
(240, 'Enfermería K&P', '77415269-5', 'Carmen 214', 'enfermeriakyp@gmail.com', 'lorena gomila', '+56974580567', 'Contratistas', 'Ovalle', '7-19-2022 11:35:05 AM'),
(241, 'Entre Ríos Control De Plagas', '11204618-6', 'Los Robles 834, Villa La Florida', 'mondaca.carlos@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '7-6-2023 11:52:18 AM'),
(242, 'ESAF ltda.', '76471772-4', 'avenida Bayona 1870 dpto 101', 'rodrigo.jerez@esaf.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'San Pedro de La Paz', '4-23-2021 3:45:33 PM'),
(243, 'ESMIN SPA', '77568633-2', 'FEDERICO CAVADA 2982', 'contabilidad@esmi.cl', 'JENNIFER ECHAGUE', '944457489', 'Contratistas', 'La Serena', '11-8-2023 4:25:57 PM'),
(244, 'Espacio Cúbico', '78076610-7', 'Parcela 21 Lote A3 vegas sur', 'ventas@espaciocubico.cl', 'Raúl Rojas Solari', '962081008', 'Equipos y Provisiones', 'La Serena', '3-29-2021 4:46:17 PM'),
(245, 'ESPINO VIEJO', '76841812-8', 'AVENIDA GABRIELA MISTRAL 2521', 'contacto@espinoviejo.cl', 'SOFIA CORRAL ALFONSO', '994699534', 'Equipos y Provisiones', 'La Serena', '3-15-2021 3:53:43 PM'),
(246, 'EXPERTISO EIRL', '76890187-2', 'Diego de Oro 382', 'esteban.diaz@expertiso.cl', 'Esteban Díaz Brown', '972118323', 'Servicios de Consultoría e Ingeniería', 'Concepción', '3-30-2021 4:50:16 PM'),
(247, 'Famrub fumigaciones', '76892162-8', 'papà pio IX 3336, la cantera', 'famrubfumigaciones@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-15-2022 2:09:29 PM'),
(248, 'FAVI & CO', '76719296-7', 'juan valle valdivia 2603', 'ignacio.favi@faviandco.cl', 'ignacio favi', '967866929', 'Contratistas', 'Coquimbo', '11-25-2021 11:48:23 AM'),
(249, 'Felipe Vicencio', '14289398-3', 'Rancagua 494', 'fvicencio@me.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Copiapó', '11-29-2021 5:01:21 PM'),
(250, 'Felpa spa', '13174496-K', 'Prolongación la cantera sn', 'Vgrandon@felpa.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '8-10-2022 11:13:03 PM'),
(251, 'Femar Spa', '12571251-7', 'URMENETA 773', 'felipe.veliz@femarindustrial.cl', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '8-17-2023 7:56:05 AM'),
(252, 'Fénix Servicios Integrales EIRL', '77169866-2', 'Miguel gallo 12 73', 'fenixservicioseirl@gmail.com', 'Fénix Servicios EIRL', '+56 977115932', 'Contratistas', 'Copiapó', '11-7-2021 1:07:52 AM'),
(253, 'FERLUX SERVICIOS ELECTRICOS', '77146994-9', 'LOS CARRERAS ,#3', 'contacto@ferlux.cl', 'Fernando Veliz Soto', '+56994748811', 'Contratistas', 'Andacollo', '6-16-2023 10:33:17 PM'),
(254, 'Fernando', '18528401-8', 'Los mayas 643', 'Claudio.miranda@alumnos.uda.cl', 'SIN CONTACTO', '', 'Contratistas', 'Cerrillos', '11-23-2021 12:27:38 PM'),
(255, 'Fernando Alcayaga', '76896032-1', 'los perales 111-b', 'falcayaga@inversionesag.cl', 'Fernando Alcayaga Gonzalez', '939151209', 'Equipos y Provisiones', 'Coquimbo', '11-29-2021 8:27:39 PM'),
(256, 'Ferreteria Dabed', '81515100-3', 'Benavente 516', 'marketing@dabed.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Ovalle', '7-18-2023 3:31:27 PM'),
(257, 'Ferretería Molina', '76873920-K', 'Matilde Salamanca 161', 'lmolina@ferreteriamolina.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Salamanca', '11-25-2021 10:35:23 AM'),
(258, 'FGleisner', '16307064-2', 'Av. Ossandon 710', 'felipe.gleisner@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '8-3-2022 11:48:41 AM'),
(259, 'FLEX SERVICIOS', '77949260-5', 'AVDA FRANCISCO DE AGUIRRE 0215', 'jgodoy@flexbuses.com', 'René Castillo B.', '+56512362100', 'Contratistas', 'La Serena', '3-22-2021 10:25:05 AM'),
(260, 'Flip Comunicacion 360º', '77173903-2', 'Avenida La Chimba 850, Taller D', 'holaflipchile@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Ovalle', '7-20-2022 12:38:43 PM'),
(261, 'FLL Asesorías SpA', '77113379-7', 'Ester Pizarro Rojas 4554', 'hfarina@farinallanos.cl', 'Hector Fariña', '+56 968396831', 'Contratistas', 'Coquimbo', '8-13-2021 3:24:44 PM'),
(262, 'Frame Servicios Spa', '77757774-3', 'colo colo 136 A', 'ejara@frameservicios.cl', 'Eduardo Jara', '+56975788868', 'Contratistas', 'Salamanca', '8-23-2023 4:04:53 PM'),
(263, 'FRC Transportes', '76913800-5', 'Blas Vial 11', 'frctransportes@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Salamanca', '4-12-2021 5:43:39 PM'),
(264, 'Fred Camus Yeomans', '18754538-2', 'Los aromos 3341', 'fcamusyeomans@gmail.com', 'Fundación Jóvenes Mineros', '+56998312951', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-5-2021 7:26:07 PM'),
(265, 'Free-Way', '77285843-4', 'Alonso de Córdova 5710 Of 203', 'jmanso@free-way.cl', 'Juan Luis Manso V.', '+56998283969', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '4-23-2021 4:49:00 PM');
INSERT INTO `datoscidereprov` (`id`, `Nombre_Proveedor`, `Rut_proveedor`, `Direccion`, `Mail`, `Contacto`, `Telefono_Contacto`, `Categoria`, `Comuna`, `Fecha_Creacion`) VALUES
(266, 'Fuelles Protección de Cilindros Hidráulicos', '76174922-6', 'Bonilla 7757', 'fundasindustriales@gmail.com', 'Javier Cornejo', '+56991633147', 'Equipos y Provisiones', 'Antofagasta', '5-31-2022 2:48:00 PM'),
(267, 'Fumigrohs', '4877354-0', 'Maximo Mera 931', 'contacto@fumigrohs.cl', 'Gerente Comerial', '+56996175923', 'Servicios de Soporte', 'La Serena', '7-25-2023 12:59:56 PM'),
(268, 'Fundación de Capacitación Bomberos de Chile', '18266224-0', 'Franklin Delano Roosevelt 782', 'Luis.bernal@fdcbomberos.com', 'Luis Bernal Sandoval', '+56961325255', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-19-2023 2:18:34 PM'),
(269, 'FV SOLAR ENERGY', '76215648-2', 'RAUL cantuarias 4127', 'a.velasquez@fvsolarenergy.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '6-30-2021 2:11:56 PM'),
(270, 'GACEMA MINERÍA', '12191828-5', 'LOS JACARANDAES 282', 'MARITZA.LLAUPE@GACEMA.CL', 'Michael Flores', '998198048', 'Servicios de Consultoría e Ingeniería', 'Antofagasta', '8-17-2021 12:08:14 PM'),
(271, 'Gálvez spa', '77639477-7', 'Pc 18 loteb28', 'Ventasgalvezspa@gmail.com', 'Scarlet Olivares', '945564750', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '12-4-2023 3:41:31 PM'),
(272, 'GEMAT ASESORIAS', '76296476-7', 'MB3556', 'jnvelis@gematchile.com', 'Jorge Veliz', '+56998185580', 'Servicios de Consultoría e Ingeniería', 'La Serena', '5-6-2021 5:14:35 PM'),
(273, 'Generadores Marin', '8909486-0', 'Altos del carmen 1499', 'Germanmarinj@gmail.com', 'German Marin', '+5690991897', 'Equipos y Provisiones', 'Huechuraba', '8-10-2023 11:34:53 AM'),
(274, 'Gente premium', '76495209-K', 'juan godoy rivera1315', 'Atahualpaguillent@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-30-2021 7:11:17 PM'),
(275, 'Geo Pro Mining Solutions SpA', '12867696-1', 'Adriana Bahamondes #4031, Altos del Rosario, Coquimbo', 'contacto@geoprochile.com', 'Engerbert Silva', '+56978995021', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-13-2022 12:23:09 PM'),
(276, 'Geoatacama', '78162070-K', 'Rio Lauca 3206', 'fmatthews@geoatacama.cl', 'Carla Barra Elgueta', '9 3251 8551', 'Contratistas', 'Coquimbo', '5-6-2021 2:30:38 PM'),
(277, 'GEOPROC EIRL', '76608293-9', 'Ruta D827,  Hijuela 2 50B', 'geoproceirl@gmail.com', 'Aarom Huerta Cruz', '+56971017410', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '11-24-2021 5:41:47 PM'),
(278, 'GEP Coquimbo', '77603505-K', 'Parcela 92, el manzano , el peñón', 's.asserella@gepcoquimbo.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-25-2023 7:27:31 PM'),
(279, 'GEPROIC', '76524692-K', 'Avenida Guillermo Ulriksen 2821, La Serena', 'pmartinez@geproic.com', 'Priscila Martinez', '9 8921 1318', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-20-2022 9:27:35 AM'),
(280, 'GESNAT CONSULTORES AMBIENTALES', '76260781-6', 'JJ MACAULIFFE 746', 'eliertabilo@gesnat.cl', 'ELIER TABILO VALDIVIESO', '+56995057331', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '3-29-2021 3:53:33 PM'),
(281, 'GINGSER.SPA', '11940186-0', 'MANUEL ANTONIO MATTA 1058', 'ggalvezgallardo@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Illapel', '7-24-2022 6:01:14 PM'),
(282, 'Globcom', '76332835-K', 'Av presidente kennedy  5600', 'Msilva@globcom.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Las Condes', '11-30-2021 10:44:24 AM'),
(283, 'Globo Rojo spa', '76975315-K', 'CONSTITUCION 295   251', 'globorojopublicidad@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Illapel', '7-20-2022 11:26:13 AM'),
(284, 'Gorilla Security E.I.R.L', '77243375-1', 'Pasaje Messina 416 Santa Margarita Del Mar', 'pedroromeroastudillo@gmail.com', 'Pedro Romero Astudillo', '+ 56 9 30548909', 'Contratistas', 'La Serena', '4-7-2021 8:18:04 PM'),
(285, 'Grafcom1', '76595991-8', 'Presidente Prieto 1004', 'fcografcom@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Ovalle', '3-28-2021 5:19:18 PM'),
(286, 'grafika limitada', '76022196-1', 'domingo faustino sarmiento 1062', 'grafika@imprentagrafika.cl', 'Mónica Vega', '512217062', 'Servicios de Soporte', 'La Serena', '5-4-2021 5:48:52 PM'),
(287, 'grafika limitada', '9250080-2', 'domingo faustino sarmiento 1062', 'contacto@imprentagrafika.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-5-2021 1:41:25 PM'),
(288, 'Granular Latam', '77542223-8', 'PROVIDENCIA 1208 OF 207', 'jadue22@hotmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '5-15-2023 7:28:42 PM'),
(289, 'GRUPO CAPACITA', '76953536-5', 'carlos vargas 1538', 'd.patino@grupocapacita.cl', 'Daniela Patiño', '996807247', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-6-2021 11:08:47 AM'),
(290, 'GRUPO GENERA LTDA', '76051171-4', 'klm camino al valle  N23,5', 'daslavljubetic@gmail.com', 'GERENTE GENERAL / JORGE LJUBETIC', '+56979584253', 'Contratistas', 'La Serena', '8-11-2021 6:34:10 PM'),
(291, 'GRUPO SATTVA OTEC EIRL', '76496833-6', '7 DE JUNIO 268 OF.430 B2', 'jporras@sattvaotec.cl', 'JOSUE PORRAS GUAJARDO', '56972748380', 'Servicios de Consultoría e Ingeniería', 'Arica', '11-26-2021 3:21:57 PM'),
(292, 'Grupo Vital Chile', '19534356-K', 'Av. Cuatro Esquinas 1617,. local 106, Strip Center Tambo,', 'lorena.munoz@vitalsolutions.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-21-2022 5:02:17 PM'),
(293, 'GrupoAlma SPA', '77236062-2', 'Av. Angamos s/n Valles del Huinganal', 'proyectos@almaarquitectos.cl', 'Marcela Machuca Mena', '+56978537022', 'Contratistas', 'Limache', '4-23-2021 11:55:06 AM'),
(294, 'GUAO SPA', '77368801-K', 'Santo Domingo 2020', 'guao.laserena@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '10-27-2023 4:43:42 PM'),
(295, 'Guayacán Solutions', '76737189-6', 'Antonio Poupin 839. oficina104', 'rdiaz@guayacansolutions.com', 'SIN CONTACTO', '', 'Contratistas', 'Antofagasta', '6-17-2021 9:18:42 AM'),
(296, 'GyG E.I.R.L', '76128851-2', 'URMENETA 753-C', 'GERENCIA@EMPRESAGYG.CL', 'SANDRA ASTUDILLO G.', '+56976148080', 'Contratistas', 'Andacollo', '4-12-2021 6:12:58 PM'),
(297, 'GZ Servicios', '77019562-4', 'Chacra la puntilla lote 4-2-A', 'gzservicioscg@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Illapel', '4-7-2021 8:12:06 AM'),
(298, 'HBZ GESTIONES Y SERVICIOS SPA', '77590686-3', 'JUAN DOMINGO ARCE 466', 'hbalharry@hbz.cl', 'HERNAN BALHARRY ZAMBELLI', '983573885', 'Contratistas', 'Coquimbo', '7-1-2022 5:41:42 PM'),
(299, 'HECSO LTDA', '77599160-7', 'lautaro 301', 'htapia@hecso.cl', 'SIN CONTACTO', '', 'Contratistas', 'Los Vilos', '7-3-2023 12:46:59 PM'),
(300, 'Hellema Holland Engineering', '18526246-4', 'la fragua 1330', 'rodrigo.rojas@hhechile.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-5-2021 3:39:51 PM'),
(301, 'HELLEMA HOLLAND ENGINEERING LTDA', '77334290-3', 'AVENIDA LA FRAGIA 1330, BARRIO INDUSTRIAL', 'kimberly.sepulveda@hhechile.com', 'Tihare Araya - FINANZAS', '512545446', 'Contratistas', 'La Serena', '3-1-2021 3:36:36 PM'),
(302, 'Herradura Experience', '76182623-9', 'Cayetano Almeyda 1500', 'contacto@herraduraexperience.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-26-2021 12:44:50 PM'),
(303, 'HGI Ingenieros', '77015186-4', 'General Holley 186, Of. H', 'conctacto@hgiingenieros.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '11-30-2022 11:04:14 AM'),
(304, 'Hidratec', '76387210-6', 'calle proyectada uno 1712, Barrio Industrial.', 'francisca.canales@hidratec.cl', 'Francisca Canales', '+56936777033', 'Contratistas', 'Coquimbo', '4-14-2021 2:56:57 PM'),
(305, 'Hidroverdes', '16687844-6', 'PARCELA 13,LOTE 2Y3,BELLA PC 13   BELLAVISTA', 'Yarela.olivares@hidroverdes.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '4-23-2021 2:19:39 PM'),
(306, 'HIMA LTDA.', '77708080-6', 'Manuel Bulnes 3586', 'jcbrumac@hima.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '8-10-2021 11:00:07 AM'),
(307, 'HL DIGITAL GROUP', '77101208-6', 'Luis Abalos Lavanderos 1634', 'hldigitalgroup@hotmail.com', 'Jonathan Talamilla Loezar', '56961437936', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-28-2022 10:21:23 AM'),
(308, 'Hornor S.A.', '96868110-9', 'Don Carlos 2939, oficina 1001', 'contacto@hornor.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Las Condes', '11-23-2021 12:41:53 PM'),
(309, 'Hostal Café Restaurant Sushi Minimarket Valles del Mar', '7464979-3', 'Brasil 314', 'contacto@vallesdelmar.cl', 'Felipe Fuica', '+56975707002', 'Equipos y Provisiones', 'La Serena', '10-26-2021 10:33:26 AM'),
(310, 'Hostal El Conquistador', '7511112-6', 'Caupolicán 210', 'hostalelconquistadorlosvilos@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Los Vilos', '4-23-2021 10:39:02 AM'),
(311, 'HOSTAL PACÍFICO', '76803421-4', 'Juan de Dios Peni 339', 'respacifico@yahoo.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '4-23-2021 5:12:03 PM'),
(312, 'HOSTEL DEL PUERTO', '76690066-6', 'Aldunate 1577', 'contacto@hosteldelpuerto.cl', 'ADMINISTRACION', '992198828', 'Equipos y Provisiones', 'Coquimbo', '4-23-2021 11:10:20 AM'),
(313, 'HOTEL CLUB LA SERENA', '76254902-6', 'AVENIDA DEL MAR 1000', 'prubio@clublaserena.com', 'Pamela Rubio Venegas', '996518040', 'Servicios de Soporte', 'La Serena', '4-23-2021 10:56:11 AM'),
(314, 'HOTEL CRISTOBAL COLON', '76193266-7', 'COLON 369', 'gerencia@hotelcristobalcolon.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-23-2021 6:39:51 PM'),
(315, 'Hotel Diaguitas', '6079595-9', 'constitucion # 276', 'gerencia@hoteldiaguitas.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Illapel', '7-12-2022 11:23:35 AM'),
(316, 'Hotel Diaguitas Illapel', '16928282-K', 'Constitucion 276', 'Centroillawara@hotmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Illapel', '12-4-2023 12:03:08 PM'),
(317, 'Hotel My House', '10004630-K', 'Avenida Infante 451', 'reservas@hotelmyhouse.cl', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '5-14-2021 11:00:41 AM'),
(318, 'HVO INDUSTRIAL EIRL', '76148545-8', 'RUTA D 81 KM 13', 'hvometalmecanica@gmail.com', 'GERENTE GENERA', '973761172', 'Contratistas', 'Illapel', '5-12-2021 10:19:01 AM'),
(319, 'ICONO MARKETING Y PUBLICIDAD', '10967896-1', 'Ruta D43 #701, Of. 5, Centro Empresarial, Coquimbo.', 'eduardo@iconoweb.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '11-26-2021 11:33:03 AM'),
(320, 'ICYDE LIMITADA', '89701200-6', 'Av. Arturo Pérez Canto 566 Villa Panorama Antofagasta', 'luisrivera@icyde.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Antofagasta', '4-25-2021 8:52:53 PM'),
(321, 'IGD CHILE S.A.', '76040004-1', 'Los Copihues #370, Dpto 2022', 'administracion@igdchile.com', 'Karina Alcayaga', '9966475235', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '2-24-2021 3:52:12 PM'),
(322, 'IMOPAC LTDA', '79807570-5', 'Arturo Prat 2196', 'cholts@imopac.cl', 'SIN CONTACTO', '', 'Contratistas', 'Vallenar', '3-3-2021 1:51:23 PM'),
(323, 'Impomin SpA', '76867554-6', 'Caupolicán 9291, Oficina D', 'eloy@impomin.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Quilicura', '12-7-2021 11:40:58 AM'),
(324, 'Imprenta digital printpro', '16059675-9', 'Manuel Bulnes 721', 'VENTAS.PRINTPRO@GMAIL.COM', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Salamanca', '7-20-2023 6:43:34 PM'),
(325, 'Incluschile', '76712562-3', 'Calle Luz 2976', 'emorales@incluschile.cl', 'Elizabeth Morales A.', '921133305', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '4-23-2021 10:57:47 PM'),
(326, 'INDIGOTEC', '76166860-9', 'SAN ISIDRO 171 CASA 5', 'contacto@indigotec.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Santiago', '6-14-2021 7:29:44 PM'),
(327, 'INDTEX', '76813239-9', 'PORTALES 209', 'INDTEXSPA@GMAIL.COM', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Ovalle', '3-30-2021 4:08:51 PM'),
(328, 'Infocontrol', '77367073-0', 'La Capitania 70 Depto:S-07 Comuna: Las Condes', 'ana.conrado@infocontrol.io', 'Francisco Pontoriero (CFO)', '+54 9 264 498-8667', 'Contratistas', 'Las Condes', '11-2-2021 3:23:07 PM'),
(329, 'ing. y maquinarias real spa', '76009938-4', 'regimiento arica 125', 'kvictoriano@maquinariasreal.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '4-1-2021 10:38:59 AM'),
(330, 'Ingecom Ltda.', '78173480-2', 'Juan Lorenzo Solis Castro 520, Algarrobo Poniente 64', 'javiera.olivares.d@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '12-4-2023 3:53:50 PM'),
(331, 'Ingeniería Carrizo Ltda.', '76219961-0', 'Lote 2 sin número Andacollo 0 0', 'contacto@ingenieriacarrizo.cl', 'Sebastián Donoso López', '948987559', 'Contratistas', 'Andacollo', '11-24-2021 9:45:13 AM'),
(332, 'Ingeniería Choapa Limitada', '76162750-3', 'Vial Recabarren 0131', 'aflores@ingchoapa.cl', 'SIN CONTACTO', '', 'Contratistas', 'Illapel', '5-30-2023 9:03:16 PM'),
(333, 'Ingeniería de Software II ULS', '15055762-3', 'Av. Bartolome Blanche 4910   San Joaquin', 'hfarias@userena.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '9-25-2023 6:02:55 PM'),
(334, 'INGENIERIA EN MANTENCION INTEGRAL LUIS ABETT DE LA TORRE ROJO EIRL', '76444326-8', 'Pja Las Rosas 12, Villa Jardín, Salamanca.', 'annarita.atr@atrgroup.cl', 'Annarita Abett de la Torre Rojo', '+569 6170 9775', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '11-10-2023 11:43:27 AM'),
(335, 'Ingercom ltda', '76295915-1', 'Calle 5 SUR 1036', 'ingercom.ltda@yahoo.com', 'SIN CONTACTO', '', 'Contratistas', 'Los Vilos', '7-19-2023 6:50:43 PM'),
(336, 'Ingeser Fca', '77767595-8', 'Parcela 17 C Llimpo', 'kattycortesu@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '7-6-2023 6:40:14 PM'),
(337, 'INMITRA', '15042813-0', 'El trapiche s/n', 'inmitraspa@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Higuera', '7-21-2023 3:43:57 PM'),
(338, 'Innlab SpA', '77605395-3', 'Juan Godoy Rivera 1327', 'innlabchile@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '8-24-2022 2:21:51 PM'),
(339, 'INNOVATORS', '76105655-7', 'Salar Grande S/N, Sitio 10, Km 13 – Antofagasta', 'pilar.munoz@ugm.cl', 'SIN CONTACTO', '', 'Contratistas', 'Antofagasta', '11-30-2021 9:52:18 PM'),
(340, 'Innra spa', '77152185-1', 'Los Carpinteros 1100 Barrio Industrial', 'mariceljofre@innra.cl', 'Claudio Celis', '56934512744', 'Equipos y Provisiones', 'Coquimbo', '7-1-2021 1:48:58 PM'),
(341, 'INREV SPA', '76492408-8', 'AVDA KENNEDY 7900 OF 502', 'bvilches@inrev.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Vitacura', '4-23-2021 12:37:26 PM'),
(342, 'INSITU Servicios', '76497695-9', 'JJ Perez 421', 'sandra@insituservicios.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '7-15-2022 3:22:24 PM'),
(343, 'Insumos mineros', '76675669-7', 'Guarda Vieja 202 of 43', 'arturo@insumosmineros.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Providencia', '1-4-2022 12:37:01 PM'),
(344, 'Integral Business SpA', '16596366-0', 'av. cuatro esquinas 55, local 1', 'yedenni@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-20-2022 8:31:30 PM'),
(345, 'Inversiones Chillepin euro spa', '76797187-7', 'Arturo Prat 103 Chillepin', 'omunoz@euroescoltas.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Salamanca', '10-23-2021 9:16:22 AM'),
(346, 'Inversiones Mary spa', '13178216-0', 'Parcela 44 cebada 2 fundó Loreto la serena', 'nelson.bruna77@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-14-2023 1:29:04 AM'),
(347, 'Inversiones REMA', '76079966-1', 'Los Carpinteros #1241', 'contacto@seremaspa.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '5-14-2021 9:08:53 AM'),
(348, 'INVES SPA', '77018239-5', 'PARCELA 27 B', 'CONTACTO@INVES.CL', 'Antonieta Quiroz', '+56991821782', 'Contratistas', 'Coquimbo', '10-11-2022 3:44:24 PM'),
(349, 'IPAA SpA', '77341215-4', 'Bulnes N° 442, Salamanca', 'ingenieria.proceso.ambiental02@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-5-2023 12:14:26 PM'),
(350, 'Ironexpert', '77348058-3', 'La majada 522', 'rob.veas@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Vallenar', '12-2-2023 2:19:55 PM'),
(351, 'Ironworks', '77117126-5', 'José domingo arce 496', 'diegoouellet@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '3-26-2021 6:58:05 PM'),
(352, 'ITA Limitada', '76851095-4', 'Cruz del Molino 326', 'jolavarria@italimitada.cl', 'Jonathan Olavarria', '990778006', 'Servicios de Soporte', 'La Serena', '11-29-2021 3:38:57 PM'),
(353, 'Itravel Tranporte Privado de Pasajeros', '76935610-K', 'Brasil #381 oficina 6', 'operaciones@itravel.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '7-12-2022 11:22:03 PM'),
(354, 'Jacob jaque', '13973874-8', 'Parcela #101 sitio 2 coquimbo', 'jacobjaquecortes@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '4-6-2021 9:49:13 AM'),
(355, 'Jake Mate, Estrategias de Marketing Digital', '13016910-4', 'Los Arrecifes 396', 'contacto@jake-mate.cl', 'Javier Jaque', '+56956686361', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-23-2021 10:30:15 AM'),
(356, 'Jaqui Ltda.', '76397270-4', 'Brasil 651 B', 'leonel.rojas@jaqui.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '2-23-2021 5:30:18 PM'),
(357, 'JCB  SPA', '76070619-1', 'Parcela 79 Tahuinco', 'jcbequipos@gmail.com', 'Juan Contreras', '998767497', 'Equipos y Provisiones', 'Salamanca', '8-10-2021 1:46:47 PM'),
(358, 'JCL MINING', '76656058-K', 'Calle ocho sitio 113 barrio industrial paipote copiapo', 'Jclexploraciones@gmail.com', 'Stephanie campos Miranda', '995019192', 'Contratistas', 'Copiapó', '3-25-2021 4:35:25 PM'),
(359, 'jenitospa', '19584756-8', 'Andacollo', 'correofalso@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Pica', '9-29-2023 9:00:41 PM'),
(360, 'JMB Mining Chile', '76335673-6', 'Av. La Dehesa 2035  Of 3', 'rodrigo.campusano@jmbmining.com', 'SIN CONTACTO', '', 'Contratistas', 'Vitacura', '11-8-2021 10:28:06 AM'),
(361, 'Joaquín Maturana', '17605545-6', 'Carmen Quiroga #214', 'Joaquinmaturana.geo@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-8-2021 10:52:51 AM'),
(362, 'John Paulino el Magnifico', '76841382-7', 'Serrano 1734', 'el.magnifico.spa@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Vallenar', '4-6-2021 4:14:26 PM'),
(363, 'Jonyelect', '9424679-2', 'Manuel Blanco Encalada #37', 'jonyelect@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '7-3-2023 5:14:05 PM'),
(364, 'Just Partners SpA', '76499288-1', 'americo vespucio sur 1307, oficina 408', 'ignacio.charlin@justpartners.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '7-20-2023 5:40:42 PM'),
(365, 'JyH Servicios SPA', '77109339-6', 'Euguenio Marzal 641 Villa El Sauce Coquimbo', 'jyhservicioscoqbo@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-30-2021 11:10:34 AM'),
(366, 'Kachivache', '76625738-0', 'OHiggins 1050', 'contacto@kachivache.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Copiapó', '7-15-2022 2:29:30 PM'),
(367, 'KAPTUS SpA', '77086213-2', 'Chañar LT 14, Barrio Industrial, Coquimbo.', 'freddybermu.b@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-1-2022 6:35:52 PM'),
(368, 'king steel spa', '77284896-K', 'guillermo marconi 1230 C', 'kingsteelspacl@gmail.com', 'John Zevallos Quispe', '950361556', 'Servicios de Soporte', 'Antofagasta', '8-7-2023 10:02:29 PM'),
(369, 'Kmbanda Ingeniería y Venttas Tecnicas', '76607815-K', 'Fundó Loreto parcela 40 los silos', 'Mbanda@kmbanda.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-3-2023 1:34:37 PM'),
(370, 'KPC servicios integrales', '77250169-2', 'Arturo Perez Canto N°10', 'kpc.servicios@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '11-25-2021 11:15:48 AM'),
(371, 'LA COIPA LIMITADA', '76794962-6', 'COLON 454 OFICINA 302', 'lacoipaspa@gmail.com', 'LORENZO RIVERA MICHEA', '945524656', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-16-2023 3:18:33 PM'),
(372, 'La Serena Online', '16163383-6', 'calle algarrobito 4629 portal del Elqui, la serena', 'jpulgarh@gmail.com', 'Carolina González Balcázar', '940272612', 'Contratistas', 'La Serena', '7-26-2023 1:54:20 PM'),
(373, 'LABORATORIO AGS', '76855322-K', 'Av La Cantera 2270', 'cristianleon@ageological.com', 'Fernando Pizarro', '+56992748069', 'Servicios de Soporte', 'Coquimbo', '6-16-2021 3:42:35 PM'),
(374, 'LATPOWER CHILE SPA', '76832344-5', 'Carlos Antunez 2499, Providencia, Region metropolitana, Santiago', 'franciscocortes@latpower.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Providencia', '2-1-2023 9:15:36 AM'),
(375, 'LAVAME YA', '77010596-K', 'LOS TULIPANES 309', 'lavameyacoquimbo@gmail.com', 'PATRICIO ANDRES FOIX', '56999058472', 'Equipos y Provisiones', 'Coquimbo', '7-24-2022 8:58:45 PM'),
(376, 'Lebenmin Spa', '76022734-K', 'Videla 340 of 401', 'fvalenzuela@lebenmin.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '12-4-2023 3:38:50 PM'),
(377, 'LEGACY INDUSTRIAL SERVICES', '77008352-4', 'JOSEFINA LEPE DE VERA 4548', 'contacto@legacyindustrial.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '7-14-2022 4:57:24 PM'),
(378, 'Lemans Conductores Ltda.', '77633490-1', 'Av. Recreo # 1066', 'lemanscon@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Rancagua', '4-23-2021 3:10:22 PM'),
(379, 'leonelalamos@gmail.com', '7322727-5', 'avenida angamos sin numero, Valles del Huinganal.', 'leonelalamos@gmail.com', 'Leonel Alamos Garrido', '+56988006634', 'Contratistas', 'Limache', '4-23-2021 12:29:31 PM'),
(380, 'Ler Chile S.P.A', '76906709-4', 'Libertar 456 local 1 & 2 galería las Palmas', 'jonathan.parra@ler.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Ovalle', '12-30-2022 12:45:43 PM'),
(381, 'Libera tu ropa', '15908527-9', 'Cienfuegos 240', 'liberaturopa@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-12-2023 7:49:25 AM'),
(382, 'Libreria color', '76472620-0', 'O higgins 601', 'colorlibreria@gmail.com', 'Dafna perez', '962077842', 'Contratistas', 'Salamanca', '4-13-2021 8:23:46 AM'),
(383, 'Lidera Consultores', '14575770-3', 'Juan Pablo II', 'c.alarconaguirre@gmail.comail.com', 'LIDERA CONSULTORES', '966064451', 'Contratistas', 'La Serena', '7-25-2022 10:36:13 AM'),
(384, 'Limarí Tecnologías SPA.', '15276100-7', 'Avda. Dr. Juan Sanhueza Lopez Norte 1675', 'mauricio.barrientos@limaritecnologias.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Ovalle', '11-29-2021 10:10:58 PM'),
(385, 'Lipigas soluciones energeticas', '13045239-6', 'Barrio Industrial sitio 62', 'javiercea@lipigas.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-19-2022 10:04:47 AM'),
(386, 'Lipigas2021', '12264176-7', 'Barrio industrial Sitio 62, alto peñuelas', 'jcea@lipigas.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '11-30-2021 10:59:17 AM'),
(387, 'LOBBYTEK SPA', '77357008-6', 'Santiago de apóstol 4400', 'contacto@lobbytek.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-13-2022 3:26:28 AM'),
(388, 'Locales conectados', '76832409-3', 'San Ignacio 879', 'Dulce@localesconectados.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Puerto Varas', '7-6-2021 4:11:10 PM'),
(389, 'LoMa Tech', '76583749-9', 'Prcela 18, lote F15A, Bellavista', 'juan.loch@lomatech.cl', 'Juan Eduardo Loch', '56975170080', 'Servicios de Soporte', 'La Serena', '11-30-2021 9:25:50 AM'),
(390, 'lorcahnos@gmail.com', '76950035-9', 'Callé Perú 2484', 'lorcahnos@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-8-2021 10:35:32 PM'),
(391, 'Luis Lemus', '16059965-0', 'Avda. Guillermo Ulriksen 1680, Depto. B30', 'luislemusm@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-6-2023 12:50:39 AM'),
(392, 'Macalvi', '76105682-4', 'Las Lomas 108, Sitio 4, La Serena', 'mzelaya@macalvi.cl', 'Juan Carlos Gutierrez', '56998837378', 'Contratistas', 'La Serena', '7-18-2022 3:55:46 PM'),
(393, 'Maestranza Faremin', '7252657-0', 'ruta 43 km 57', 'mgarcia@faremin.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-17-2023 12:59:32 PM'),
(394, 'Maestranza Hava', '77215316-3', 'Sierra Nevada 9975', 'havaingenieria@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Antofagasta', '11-13-2021 10:16:36 AM'),
(395, 'Maestranza MAHEGA', '77611190-2', 'GERONIMO MENDEZ 1583 G-11  BARRIO INDUSTRIAL', 'servicios@mahega.com', 'Venancio Galleguillos', '+56993038585', 'Servicios de Soporte', 'Coquimbo', '7-1-2021 12:57:57 PM'),
(396, 'Maestranza MESEM', '76454932-5', 'El trapiche 1280, Barrio Industrial', 'contacto@mesem.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '12-4-2023 5:36:02 PM'),
(397, 'MAESTRANZA MS LTDA.', '76490891-0', 'CARLOS YUSTA #60', 'ivo.diaz@maestranzams.cl', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '7-22-2022 3:09:06 PM'),
(398, 'MAESTRANZA ROVIAL', '76074892-7', 'GERONIMO MENDEZ 1851 GALPON 58', 'acelis@rovial.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-24-2021 12:27:12 PM'),
(399, 'MAFENOR SPA', '77313984-9', 'MELGAREJO 849G', 'ventasmafenor@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-29-2021 9:17:28 AM'),
(400, 'Manquehua Ltda', '76011891-5', 'Sixto Cortes Alcayaga 1521, casa 8', 'jmadrid@manquehualtda.cl', 'Juan Pablo Madrid Avalos', '981891774', 'Contratistas', 'La Serena', '4-12-2021 5:34:02 PM'),
(401, 'Mantenimiento Lean', '77485147-K', 'Los membrillos 849', 'Cvasquezf@live.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-16-2022 1:35:00 PM'),
(402, 'MAP INGENIERIA ELECTRICA', '76799970-4', 'EL BALCON LOTE 018', 'CONTACTO@MAPINGENIERIA.CL', 'SIN CONTACTO', '', 'Contratistas', 'Illapel', '8-31-2023 11:52:32 AM'),
(403, 'Maquinarias Olmué', '77184980-6', 'Parcela 59 Lote 3-A', 'jpinto@maquinariasolmue.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '3-4-2022 10:48:16 AM'),
(404, 'MAREF CHILE S.A.', '11948351-4', 'M A PRIETO 0148', 'jsaez@maref.cl', 'José Sáez', '+56962003295', 'Servicios de Consultoría e Ingeniería', 'Providencia', '11-29-2021 9:30:09 AM'),
(405, 'Marisoluciones SpA', '77129779-K', 'María Damiana Jerónimo 836', 'marisolucionesspa@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Copiapó', '3-30-2021 1:55:40 AM'),
(406, 'Mas Ergo', '77104372-0', 'Henriette Petit Marfán 1519', 'contacto.masergo@gmail.com', 'Claudio Rosales Briceño', '953967095', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-23-2021 3:47:21 PM'),
(407, 'Mas sakud', '76829091-1', 'Pinto Castilla y Aragon 1552  20 CENTRO', 'Sajuro46@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '7-22-2022 11:51:49 AM'),
(408, 'MASSIN SPA', '10522127-4', 'RUTA D43 SITIO 271 G12 COQUIMBO', 'jalfaro@massin.cl', 'PROYECTOS', '+56985998156', 'Equipos y Provisiones', 'Coquimbo', '4-27-2021 1:34:05 PM'),
(409, 'MASSIN SPA', '76456975-K', 'RUTA D43 271  G12 PUERTO SECO', 'jalfaro@massin.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-25-2022 9:16:42 AM'),
(410, 'Match Point', '78433600-K', 'Ruta D43 N° 701 Centro Empresarial Block 3 Oficina 3', 'gfernandez@grupopoint.cl', 'JOSE RAMON GARMENDIA MONASTERIO', '512561283', 'Equipos y Provisiones', 'Coquimbo', '3-29-2021 4:15:03 PM'),
(411, 'Maxielec', '77022915-4', 'Federico Schaefer 2102', 'victor.miranda@maxielec.cl', 'Victor Miranda', '977761109', 'Contratistas', 'Coquimbo', '11-22-2021 5:26:36 PM'),
(412, 'MC HIDRAULICA', '76757366-9', 'Santa Filomena Parcela 7 Loteo 7-B Pan de Azúcar', 'administraciion@hidraulicamc.cl', 'MARCO CISTERNA', '+ 56 9 83140860', 'Equipos y Provisiones', 'Coquimbo', '10-26-2023 3:27:40 PM'),
(413, 'MC servicios', '76785511-7', 'Parcela 34 Santa Rosa', 'erikmorenomontenegro@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '8-5-2021 1:20:39 PM'),
(414, 'MDN Arquitectos', '13945815-K', 'Avenida guillermo ulriksen 1781', 'Contacto@mdnarquitectos.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-5-2021 9:49:53 PM'),
(415, 'MDN Arquitectos', '76511137-4', 'Avenida guillermo ulriksen 1781', 'Contacto@mdnarquitectos.cl', 'Jessica Paez', '+56994831082', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-13-2021 10:27:39 PM'),
(416, 'MDS PERFORACIONES SPA', '77327439-8', 'Melgarejo 851', 'c.espinoza@mdsperforaciones.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '12-4-2023 3:17:29 PM'),
(417, 'Mediterránea', '59179270-9', 'Av. Pedro de Valdivia 0193 of 82', 'rodrigo.suter@mediterranea-group.cl', 'Rodrigo Suter', '+56959096977', 'Servicios de Soporte', 'Providencia', '12-1-2021 10:09:38 AM'),
(418, 'Megatermoplas', '77405437-5', 'FREDDY ALVAREZ 1636 PARQUE INGLES', 'asesoriaymontajeshdpe@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Ovalle', '7-13-2022 9:00:41 AM'),
(419, 'metalmecanica jvl', '76743322-0', 'av la cantera 1300', 'secretaria@comercialjvl.cl', 'ADMINISTRACION', '931950715', 'Equipos y Provisiones', 'Coquimbo', '7-5-2021 10:45:05 PM'),
(420, 'Metaproject', '96648700-3', 'Dr. Carlos Charlín 1521', 'comunicaciones@metaproject.cl', 'SIN CONTACTO', '', 'Contratistas', 'Providencia', '11-10-2021 6:20:16 PM'),
(421, 'MIICME Limitada', '76354068-5', 'Calle Balada #3500 casa 3', 'contacto@miicme.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-7-2021 10:45:39 AM'),
(422, 'Mile.S.A', '99511660-K', 'callejon Francisco de aguirre 78', 'rtabilo@mile.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Copiapó', '7-19-2022 9:06:18 PM'),
(423, 'MILL MONTAJES INDUSTRIALES LLANQUITRUF LIMITADA', '76429834-9', 'DIEGO PORTALES 311 OFICINA 24', 'LOGISTICA@MILLMONTAJES.CL', 'FINANZAS', '+56959087642', 'Contratistas', 'Coquimbo', '7-6-2023 9:06:46 AM'),
(424, 'MINEPLAS', '76863948-5', 'URMENETA 854', 'MINEPLASANDACOLLO@GMAIL.COM', 'Compras', '991422826', 'Equipos y Provisiones', 'Andacollo', '7-14-2022 9:42:34 PM'),
(425, 'Minerfluid SPA', '77281709-6', 'Alonso de Ercilla 59 Villa Martinez', 'lrivera@minerfluid.cl', 'Lorena Silva', '+56 9 40829941', 'Equipos y Provisiones', 'Andacollo', '5-30-2023 4:10:44 PM'),
(426, 'Mining rubbers', '77165017-1', 'ruta d43 km 57', 'mcaro@miningrubbers.cl', 'MARIANO CARO', '978465149', 'Contratistas', 'Coquimbo', '7-9-2021 9:08:00 AM'),
(427, 'MLF MAQUINARIA', '78287460-8', 'Matta 221', 'jmunoz@mlf.cl', 'Jose Ignacio Muñoz', '+56938986958', 'Equipos y Provisiones', 'Coquimbo', '3-29-2021 5:29:52 PM'),
(428, 'MO constructora', '76749961-2', 'Avenida puertas del mar 347', 'Aurbinaj@moconstructora.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-20-2021 3:07:26 PM'),
(429, 'Moscatel, La Casa del Pisco (Restaurante Delivery)', '76688059-2', 'Pedro Pablo Muñoz 580', 'elizabeth@moscatel.cl', 'SIN CONTACTO', '+56986506625', 'Servicios de Soporte', 'La Serena', '4-23-2021 7:59:04 PM'),
(430, 'Motiva2 Consultores', '77662232-K', 'Andres bello #666', 'Cristobal.jaque@hotmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-2-2023 2:46:02 PM'),
(431, 'MR Mantenimiento spa', '12571293-2', 'ING. AURELIO NUÃEZ 90   PEÃUELAS', 'Mirnarojasipla@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '12-4-2023 4:00:43 PM'),
(432, 'MT DIESEL SPA', '76573113-5', 'NUEVA 5 1271 L.CHANAR BARRIO INDUSTRIAL COQUIMBO', 'm.t.diesel@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '11-30-2021 10:04:30 AM'),
(433, 'Mundo & Diseño', '77000068-8', 'Ruta D43 Sitio 271 Galpon 13 Puerto Seco, Barrios Industrial', 'm.riquelme@artecostanera.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-30-2021 8:19:01 AM'),
(434, 'MÜS Ltda.', '76765201-1', 'Huanhuali 590', 'claudiomedina.mus@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '4-13-2021 11:03:54 PM'),
(435, 'MVS Group', '76333204-7', 'Monseñor Sótero Sanz N° 55, piso 13. Providencia Santiago.', 'contacto@mvsgroup.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Providencia', '4-27-2021 3:40:51 PM'),
(436, 'NACER PUBLICIDAD', '8541790-8', 'Carlos Lorca Tobar 1325 Sindempart', 'nacerpublicidad@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-30-2021 7:23:44 PM'),
(437, 'Napoleón Servicios Gastronómicos', '78449260-5', 'Av. Cuatro Esquinas 785', 'contacto@napoleoneventos.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '6-22-2022 10:39:33 PM'),
(438, 'NASEG SPA', '76994658-6', 'AV GERÓNIMO MÉNDEZ Nº 1851, LOCAL Nº 47 , BARRIO INDUSTRIAL', 'alex@naseg.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '8-20-2021 12:34:08 PM'),
(439, 'NATIONAL STEELS', '15813550-7', 'OF SAN GREGORIO', 'JCORTES@NATIONALSTEELS.CL', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Antofagasta', '11-8-2021 10:43:13 AM'),
(440, 'Neumadiesel Spa', '76676209-3', 'RUTA D 43 701 LT D BARRIO INDUSTRIAL  A 4', 'coyarzun@neumadiesel.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-8-2021 10:39:11 AM'),
(441, 'Newen spa', '77212454-6', 'Cerrillos de Tamaya', 'jva029@alumnos.ucn.cl', 'SIN CONTACTO', '', 'Contratistas', 'Ovalle', '7-15-2022 12:01:11 PM'),
(442, 'Nexclima', '76182714-6', 'LAS TRANQUERAS 1353', 'ROSA.VALDIVIA@NEXCLIMA.COM', 'ROSA VALDIVIA', '966551993', 'Servicios de Consultoría e Ingeniería', 'Vitacura', '8-1-2023 10:58:55 AM'),
(443, 'NEXTPOWER Maquinas Electricas', '77126305-4', 'El Roble 165, bodega 2', 'contacto@nextpower.cl', 'Miguel Toledo', '963545871', 'Contratistas', 'Lampa', '7-5-2023 2:02:49 PM'),
(444, 'Nexus Mobility', '77545775-9', 'Regimiento Arica 365, depto 615', 'gerencia@nexus-mobility.com', 'Oliver Molgas', '+56 9 9817 3842', 'Equipos y Provisiones', 'La Serena', '6-30-2022 3:02:54 PM'),
(445, 'Ngen Consultores Spa', '77103119-6', 'J Iribarren 1541', 'joseluis.pizarro@outlook.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '6-17-2021 9:11:11 AM'),
(446, 'Ngen Servicios de Ingeniería', '11422619-K', 'J Iribarren 1515', 'jluis.pizarro@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-10-2021 7:12:32 AM'),
(447, 'Nogal Capacitacion ltda', '76080578-5', 'Avda. David Perry 547', 'c.galleguillos@nogalcapacitacion.cl', 'Carmen Gloria Galleguillos', '997837956', 'Servicios de Consultoría e Ingeniería', 'Ovalle', '7-14-2022 9:44:59 AM'),
(448, 'Norsupply SPA', '77481873-1', 'Alonso de Ercilla 59 Villa Martinez', 'lrivera@norsupply.cl', 'Lorena Silva', '+56 9 40829941', 'Equipos y Provisiones', 'Andacollo', '5-31-2023 4:28:25 PM'),
(449, 'nortex.cl', '52003984-8', 'Ruta D43 Nº 701 Bodega D6 Centro Empresarial barrio industrial Coquimbo', 'vendedorlaserena@nortex.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '8-7-2023 3:45:29 PM'),
(450, 'North Quality Capacitaciones', '12806303-K', 'Los Carreras 521 Of C', 'coordiacion@northquality.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-29-2021 10:36:48 AM'),
(451, 'North Quality Capacitaciones', '76520340-6', 'Los Carreras 521 Of C', 'coordinacion@northquality.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-26-2021 9:40:33 AM'),
(452, 'North Quality Consultores EIRL', '76036786-9', 'LOS CARRERA 521  C CENTRO', 'sandralucero@northquality.cl', 'María Graciela Pozo', '+56958194171', 'Servicios de Consultoría e Ingeniería', 'La Serena', '9-7-2021 11:34:20 AM'),
(453, 'Nueva Ruta Consultores', '76465885-K', 'CALLEJON PRISCO CONTA PARCELA 18 LOTE 1', 'csaavedra@nuevaruta.cl', 'Cristián Saavedra P.', '+569 6120 8895', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-12-2021 8:19:38 PM'),
(454, 'NyN ferreter', '77151058-2', 'Valle de limari 1444', 'Jchormazabal@nynferreteria.com', 'Juan carlos Hormazábal', '+569 94499156', 'Equipos y Provisiones', 'La Serena', '11-28-2021 10:49:18 PM'),
(455, 'OCARROL RENT A CAR', '76219789-8', 'AMUNATEGUI 785 OF 219', 'VENTASLASERENA@OCARROLRENTACAR.COM', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '10-17-2022 3:22:06 PM'),
(456, 'OF7 SpA', '76704612-K', 'Mundo nuevo 50L', 'saul.ossandon@of7.cl', 'Saul Ossandon Flores', '964449889', 'Contratistas', 'Salamanca', '7-9-2021 2:18:27 AM'),
(457, 'Ore-Inspector', '77114738-0', 'DIEGO DE ALMAGRO 2246 - C', 'leonardo@innmomentum.com', 'José Fuentes', '+56984482248', 'Contratistas', 'Providencia', '7-5-2021 6:58:14 PM'),
(458, 'Origen, soluciones gráficas y digitales', '76604274-0', 'vicuña mackena 160-5', 'contacto@holaorigen.cl', 'Oficina Illapel', '985222212', 'Servicios de Consultoría e Ingeniería', 'Illapel', '5-12-2021 9:15:40 PM'),
(459, 'ORO Y SOL', '76880178-9', 'PARCELA 29 CONDOMINIO LAS ACACIAS', 'oroysolchile@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Illapel', '3-13-2023 6:58:37 PM'),
(460, 'OSSANVIC LTDA', '76474433-0', 'GRAN VIA 3-B1   TRANQUILLA', 'fresia321@hotmail.com', 'FRESIA OSSANDON ARREDONDO', '9-97720391', 'Contratistas', 'Salamanca', '5-15-2021 8:14:23 PM'),
(461, 'OTEC CEDCAP', '76139924-1', 'Carlos Vargas Aguirre 1466 Serena Orientee', 'contacto@cedcap.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-16-2021 9:54:24 AM'),
(462, 'OTEC KPC CAPACITACIONES SPA', '77248016-4', 'Recsi Departamento 23 Salamanca', 'otec@kpcservicios.cl', 'Karen Fernández', '+56987289056', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-5-2022 5:27:24 PM'),
(463, 'Otec Los Andes SpA', '15051456-8', 'Las Dalias 11D Cuncumen', 'rtfinf@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-18-2023 10:16:52 AM'),
(464, 'Ovalo Ingeniería y suministro', '76978737-2', 'avenida del mar 4740, 60, 60', 'brenda.vacaflor.alvarez@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-27-2022 3:31:15 PM'),
(465, 'Oxido Creative Studio', '76621456-8', 'Parma 378', 'dpavez@oxidocs.com', 'David Pavez Torrealba', '942297013', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-25-2021 5:25:37 PM'),
(466, 'OYS CAPACITACION LTDA', '77517510-9', 'Eliodoro Yanez 2063 Of 204-205', 'oyscapacitacion@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '4-23-2021 10:50:14 AM'),
(467, 'Pablo Sanhueza', '17199308-3', 'Manuel Antonio Prieto 148, Providencia.', 'psanhueza@maref.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Providencia', '12-1-2021 8:48:44 AM'),
(468, 'Pacifico austral', '77079322-K', 'Chileitalia 60 B Vegas Sur', 'lperez@miaustral.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-27-2022 8:50:33 PM'),
(469, 'Pacifico austral', '77345703-4', 'Chileitalia 60 B Vegas Sur', 'administracion@miaustral.cl', 'Luis pérez', '+56932049110', 'Contratistas', 'La Serena', '7-10-2023 12:26:36 PM'),
(470, 'PACIFICTEK LTDA', '76130265-5', 'PARCELA 2 VEGAS SUR LOTE 3C', 'afarina@pacifictek.cl', 'MANUEL CORTES', '56512214000', 'Equipos y Provisiones', 'La Serena', '3-1-2021 12:00:41 PM'),
(471, 'Palmelec electricidad E.I.L.R.', '15912437-1', 'Neftali galleguillos, 346', 'Palmaramosjorge@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '3-28-2021 2:39:36 PM'),
(472, 'PamChile', '77078013-6', 'Vicuña Mackenna 804', 'acabello@pamchile.com', 'Alejandro Cabello', '990302711', 'Contratistas', 'Ovalle', '8-18-2021 12:06:16 AM'),
(473, 'Panóptiko', '76430935-9', 'Avenida Costanera 5425', 'aoyarzun@panoptiko.cl', 'Paula Espinoza', '+56 9 7408 8672', 'Contratistas', 'Coquimbo', '5-15-2021 7:17:50 PM'),
(474, 'PARABOLA SPA', '76199439-5', 'CORDOVEZ 731', 'raul.parabola@gmail.com', 'RAUL CORTES', '984934510', 'Contratistas', 'La Serena', '4-13-2021 5:18:01 PM'),
(475, 'Parque Acuático La Serena', '6619626-7', 'parcela 47 altovalsol', 'laserena@curunina.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '8-26-2022 12:56:23 PM'),
(476, 'PASMAR LTDA', '76080081-3', 'VICENTE ARGANDONA 13', 'cmartinez@empresapasmar.cl', 'CAROLINA MARTINEZ', '997899487', 'Contratistas', 'Andacollo', '4-1-2021 8:02:27 PM'),
(477, 'Perno Stock', '76584330-8', '25 de agosto #42', 'carolinazambra@pernostockltda.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '4-15-2021 11:40:54 AM'),
(478, 'PERSIST GLOBAL LTDA', '76673597-5', 'La Capitania 80', 'persist@persist.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '4-26-2021 1:01:22 PM'),
(479, 'PERSIST LTDA', '79718540-K', 'La Capitania 80; Ofic. 108', 'capacitacion@persist.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '8-10-2021 4:24:04 PM'),
(480, 'Personaliza SpA', '76770957-9', 'Daniel de la Vega 3395', 'Personaliza.adn@gmail.com', 'Anggelo Buera', '920827484', 'Servicios de Soporte', 'La Serena', '7-28-2022 1:28:12 PM'),
(481, 'PiedrasJuntas', '11259998-3', 'Arturo Pacheco Altamirano 192', 'Oscar.Ubillo@piedrasjuntas.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '7-12-2022 8:21:18 AM'),
(482, 'Pillado Empresas', '77316540-8', 'Geronimo Mendez 2125  0f 1', 'marco.valladares@pilladoempresas.cl', 'Juan rojas', '.', 'Equipos y Provisiones', 'Coquimbo', '2-26-2021 3:19:04 PM'),
(483, 'pinovehiculos', '21790657-1', 'no', 'pinovehiculos@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Santiago', '6-16-2023 1:23:02 AM'),
(484, 'Planve SpA', '76633686-8', 'Avda el Jardin Sitio 58', 'franco@planve.cl', 'Freddy Valenzuela', '964077727', 'Contratistas', 'La Serena', '7-23-2023 4:34:56 AM'),
(485, 'Podium Gestion', '9270728-8', 'R Varela 1355', 'jgramo@icloud.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '12-4-2023 9:01:23 AM'),
(486, 'Poliedro', '77024653-9', 'LOS PERALES 665  1001 EDIFICIO C', 'carlos.lopez@poliedro.io', 'Carlos López Salinas', '+56964033243', 'Contratistas', 'La Serena', '7-8-2022 11:37:04 AM'),
(487, 'Poliref..', '76307828-0', 'Ruta 43 # 1137 Pan de Azúcar Coquimbo', 'gbascunan@poliref.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '8-17-2021 12:07:06 PM'),
(488, 'PRIMAL INGENIERIA', '76559864-8', 'RUIZ VALLEDOR 43, BLOCK G DEPTO 14', 'jose.vega@primal.cl', 'José Miguel Vega', '983617519', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-26-2023 10:38:59 AM'),
(489, 'PROCEL SERVICIOS', '76029861-1', 'Calle Manuel Bulnes 921', 'rpena@procelservicios.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Salamanca', '4-12-2021 4:33:29 PM'),
(490, 'Procemax', '77029202-6', 'Av. Apoquindo 6410', 'felipe.padilla@procemax.com', 'Felipe Padilla', '56986375333', 'Equipos y Provisiones', 'Las Condes', '3-28-2021 1:38:57 PM'),
(491, 'Prodim Ingeniería', '76303368-6', 'BAQUEDANO 239 OF 316', 'prodim@prodimingenieria.cl', 'Manuel Mujica', '+56953439081', 'Servicios de Consultoría e Ingeniería', 'Antofagasta', '7-29-2022 9:18:44 AM'),
(492, 'Produccionessub', '77459532-5', 'Lote 6 lote A tambillo', 'valbuenayabasolo@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '7-20-2022 12:50:03 PM'),
(493, 'Produccionessub', '8777559-3', 'Lote 6 sitio A', 'valbuenayabasolo@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '6-30-2023 2:25:29 PM'),
(494, 'Profit Mining', '76812709-3', 'Buena esperanza, parcela 28, lote 6', 'ctoledo@profitmining.cl', 'Daniela Vega', '+56975368984', 'Servicios de Consultoría e Ingeniería', 'Vallenar', '11-8-2021 10:35:36 AM'),
(495, 'PROGEOMIN SPA', '12841007-4', 'cerro colorado S/N', 'progeomin@gmail.com', 'MANUEL VILLANUEVA BENITEZ', '+56954563553', 'Servicios de Consultoría e Ingeniería', 'Combarbalá', '7-24-2023 5:29:48 PM'),
(496, 'Prolisam', '76749637-0', 'Aconcagua 333', 'gerencia@prolisam.cl', 'JORGE FRIAS', '981462311', 'Servicios de Soporte', 'Coquimbo', '6-29-2021 9:25:00 PM'),
(497, 'Prolub SpA', '76736825-9', 'Regimiento Arica 365', 'omolgas@prolub.cl', 'Oliver Molgas', '+56998173842', 'Equipos y Provisiones', 'La Serena', '4-23-2021 10:50:55 AM'),
(498, 'Proservice SpA', '76944446-7', 'Eusebio Lillo 059, Villa Los Profesores', 'proactiveserviceintegral@gmail.com', 'Mauricio Merino Contreras', '56962126533', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-3-2021 1:22:52 PM'),
(499, 'proviser spa', '77860214-8', 'SANTO CURA DE ARS ORIENTE 1652', 'ventas03@proviserchile.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-29-2023 11:30:48 AM'),
(500, 'Proyec Otec Ltda.', '77204596-4', 'Avda. Balmaceda N° 2885 Of 403 La Serena', 'direccion@proyecotec.cl', 'Claudia Morales', '+56971660876', 'Servicios de Consultoría e Ingeniería', 'La Serena', '10-12-2023 9:48:52 PM'),
(501, 'Pruebaprueba', '16152123-K', 'Pruebaprueba', 'prueba@prueba.com', 'SIN CONTACTO', '', 'Contratistas', 'Huara', '10-16-2023 5:36:22 PM'),
(502, 'PyB SpA.', '76528171-7', 'Población Recsi Block G Departamento 13', 'sgallardo@pybingenieria.cl', 'Samuel Gallardo', '977575635', 'Contratistas', 'Salamanca', '5-12-2021 11:36:03 AM'),
(503, 'Pys seguridad y tecnología', '77167523-9', 'Marcial Martínez cuadros 743', 'pabloge22@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '3-28-2021 9:10:54 PM'),
(504, 'QMC Análisis Químico Ltda', '77644831-1', 'Av San Ramón 1580 Galpón N°9 Barrio Industrial', 'contacto@laboratorioqmc.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '7-6-2023 10:53:49 AM'),
(505, 'Quimeco SpA', '76908426-6', 'PJE. FIDEL ALCAYAGA 65   SINDEMPART', 'ramon.serey@quimeco.cl', 'Ramon Serey', '999799967', 'Equipos y Provisiones', 'Coquimbo', '7-4-2023 2:17:21 PM'),
(506, 'RaL servicio y transportes', '77063556-K', 'Vicente Benito 791', 'ralspa2019@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-28-2021 6:47:12 PM'),
(507, 'Rapel Spa', '76057604-2', 'El maitén parcela #28', 'lfarias@inversionesrapel.cl', 'Luis Farias Muñoz', '999194521', 'Contratistas', 'Illapel', '7-6-2021 4:22:09 PM'),
(508, 'RBD Logística SpA', '76893407-K', 'Bulnes 129', 'contacto@rbdlogistica.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Salamanca', '8-9-2021 1:28:46 PM'),
(509, 'RBLS ESTRUCTURAS METALICAS', '76952559-9', 'Los AROMOS 143 la herradura coquimbo', 'Estructurasmetalicas. Rbls@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '3-25-2021 8:14:15 PM'),
(510, 'Reactive Consultores', '16029485-K', 'Napoleon 3233', 'isoto@reactive.cl', 'Rodrigo Salas', '22291846', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '4-23-2021 5:26:58 PM'),
(511, 'Reciclaje Salamanca', '76975498-9', 'Hijuela 6 lote 6 E, Cancha Brava', 'Contacto@reciclajesalamanca.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Salamanca', '1-20-2023 4:34:43 PM'),
(512, 'REDIMIN', '76429653-2', 'COLON 352 OF 426 STUDIOFFICE COLON', 'jrecabarren@recabarrengroup.com', 'Cristian Recabarren O.', '56 9 4984 2547', 'Servicios de Soporte', 'La Serena', '5-18-2022 11:57:51 AM'),
(513, 'REDITEC SpA', '76512538-3', 'Calle Tiaca #1601', 'rbelmar@reditec.cl', 'Rodrigo Belmar', '+56978997458', 'Equipos y Provisiones', 'La Serena', '8-26-2021 10:00:43 PM'),
(514, 'Remote Waters', '76873449-6', 'Las Acacias LT3, Zona Rural', 'pablo.cassorla@remote-waters.com', 'Pablo Cassorla', '962816463', 'Equipos y Provisiones', 'Algarrobo', '6-23-2021 10:01:36 PM'),
(515, 'RESCUE COMPANY VR', '77494115-0', 'Avenida El Romeral 262', 'jrivera@capacitacionesintegral.cl', 'Julio Rivera Galleguillos', '+56955376151', 'Servicios de Soporte', 'Ovalle', '7-13-2022 8:05:17 PM'),
(516, 'Resimac polimeros', '76287991-3', 'Obispo sobrino y Minayo 3317', 'lneira@polimeros-elichem.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '3-25-2021 4:16:07 PM'),
(517, 'Resiter S.A.', '89696400-3', 'Pacheco Altamirano N° 80', 'lcerda@resiter.cl', 'Luis H. Cerda Schafer', '56953349178', 'Contratistas', 'Coquimbo', '5-26-2021 10:01:40 AM'),
(518, 'Retorno', '77327066-K', 'CALLE OHIGGINS 215', 'retorno.valle@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Vicuña', '7-4-2023 10:10:25 AM'),
(519, 'RIO CLARO', '77129493-6', 'A pratt pratt s/n', 'RIOCLAROSPA@HOTMAIL.COM', 'Adrian Gallardo', '961833149', 'Contratistas', 'Coquimbo', '7-6-2023 11:53:16 AM'),
(520, 'Río, Comunicaciones y Territorio', '77018149-6', 'Ulriksen 3096, Serena Oriente', 'lurbina@riocomunicaciones.cl', 'Loreto Urbina', '+56993579349', 'Servicios de Consultoría e Ingeniería', 'La Serena', '11-29-2021 4:13:35 PM'),
(521, 'ROANDA EIRL', '76807979-K', 'Av San Ramón 1580 Galpón N°9', 'rrojas@roanda.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '7-6-2023 11:02:54 AM'),
(522, 'Rodamendez', '89515900-K', 'Avenida Cuatro Esquinas 255', 'jorgek@rodamendez.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '3-29-2021 5:45:27 PM'),
(523, 'RODAMIENTOS SMILOVIC', '78605950-K', 'chorrillos 24', 'alejandro.smilovic@smilovic.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '7-24-2023 3:07:14 PM'),
(524, 'Roinstel', '14102547-3', 'Alfalfares 1240', 'rod00soft@gmail.com', 'Rody Rojas Villa', '992782650', 'Contratistas', 'La Serena', '3-29-2021 5:31:12 PM'),
(525, 'ROMACS LTDA', '77035793-4', 'Parcela 24 lote 1', 'Mario.cortes@romacs.cl', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '11-24-2021 1:17:28 PM'),
(526, 'ROMO INGENIERIA', '4658361-2', 'HUANHUALI 850', 'contacto@jromo.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-25-2022 1:26:16 PM'),
(527, 'RyM Servicios', '76146668-2', 'Parcela 4 Lote C El Queñe', 'rymservicios.salamanca@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '12-4-2023 10:07:38 PM'),
(528, 'RyM Spa.', '76534258-9', 'Ruta D-43 #901 Oficina 703', 'jcotal@rymspa.cl', 'Juan Cotal Guerra', '977491223', 'Contratistas', 'Coquimbo', '5-2-2023 5:06:13 PM'),
(529, 'S.M.I. ANDACOLLO SPA', '76986312-5', 'av. los negritos 1020', 'smi.mantencionindustrial@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '4-24-2023 2:50:01 PM'),
(530, 'SAFEME LTDA', '76216519-8', 'Riquelme 93 , Los vilos.', 'bhidalgo@safeme.cl', 'SIN CONTACTO', '', 'Contratistas', 'Los Vilos', '7-28-2023 11:54:20 AM'),
(531, 'Saint Clean Chile', '77349347-2', 'Los Guindos 24', 'ventas@saintcleanchile.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Vicuña', '4-26-2021 11:41:44 PM'),
(532, 'Salamancatech', '77732838-7', 'Irarrazabal 788', 'ventas@salamancatech.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Salamanca', '7-20-2023 12:12:03 PM');
INSERT INTO `datoscidereprov` (`id`, `Nombre_Proveedor`, `Rut_proveedor`, `Direccion`, `Mail`, `Contacto`, `Telefono_Contacto`, `Categoria`, `Comuna`, `Fecha_Creacion`) VALUES
(533, 'SALCO Ingeniería & Soluciones', '76907833-9', 'Los Duraznos N°073, Salamanca', 'salco.ingsol@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '11-17-2021 11:37:08 AM'),
(534, 'SAM Solutions', '76704952-8', 'Av Colón 352 ofrece 426', 'Alexis.astorga@sam-mx.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-20-2022 11:03:25 PM'),
(535, 'Sanbert SpA', '76123297-5', 'Talcahuano 206', 'mbermont@sanbert.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-30-2021 2:26:10 PM'),
(536, 'SANEXP SERVICIOS INDUSTRIALES SpA', '77569492-0', 'Av. Pacifico 2800,  of 217, Torre II Pacifico 2800, La Serena', 'scarvajal@sanexp.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-19-2022 1:14:57 PM'),
(537, 'Santuario Norte SpA', '77530447-2', 'Romelio Arcaya Quinteros 4501', 'santuarionortespa@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '3-21-2022 9:54:10 PM'),
(538, 'Selección.cl', '76007459-4', 'Avenida Ossandon 501', 'paola.marin.salazar@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '3-29-2021 8:53:47 PM'),
(539, 'Sercomp Ruiz Ltda', '78419170-2', 'Micaela Godoy de Juliá 201', 'marcela@sercompruiz.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '3-16-2021 4:54:27 PM'),
(540, 'Servex spa', '76893684-6', 'Irarrázaval 299', 'contacto@extintoresservex.cl', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '5-7-2021 1:10:42 AM'),
(541, 'Servicio Integral a la Minería Ltda', '76216416-7', 'Los jazmines 86', 'vickymillon@simsalamanca.cl', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '7-28-2022 10:14:57 AM'),
(542, 'Servicios Cúspide', '76692366-6', 'Quebrada los cóndores 25-', 'Rdaza@servicioscuspide.cl', 'SIN CONTACTO', '', 'Contratistas', 'Copiapó', '12-4-2023 10:43:54 PM'),
(543, 'servicios de revestimientos epoxicos', '76892343-4', 'Obispo sobrino y Minayo 3317', 'lneira.resimac@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '3-25-2021 4:08:40 PM'),
(544, 'Servicios de seguridad privada Spa.', '76545523-5', 'tucapel 530, Concepción', 'fgonzalez@sprivada.cl', 'Camila Glena Piñeiro', '+56988076946', 'Equipos y Provisiones', 'Concepción', '4-26-2021 11:05:03 AM'),
(545, 'Servicios Modulares spa', '17626197-8', 'Punta de teatinos 489', 'martinezcallegaric@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-12-2023 11:09:08 AM'),
(546, 'Servicios RyB Ltda.', '76083985-K', 'Pasaje San José Obrero 1523', 'operaciones@serviciosryb.cl', 'Alex Farias', '+56964256433', 'Servicios de Soporte', 'La Serena', '11-25-2021 12:07:05 AM'),
(547, 'Servicios Zero spa', '77766895-1', 'Santa Teresa de los Andes 1056', 'servicios.zero.spa@gmail.com', 'Kelly Vega', '+56937031537', 'Contratistas', 'Andacollo', '12-4-2023 7:40:00 PM'),
(548, 'SERVMINE SPA', '76979659-2', 'URMENETA 739', 'contact@servmine.cl', 'SERGIO SARRACINA GODOY', '963324350', 'Contratistas', 'Andacollo', '7-9-2021 9:20:15 AM'),
(549, 'Servproq Eirl', '76735909-8', 'Manuel Rodríguez 60', 'a.veliz@servproq.cl', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '7-20-2022 3:37:48 PM'),
(550, 'Seven7 Diseño y Consultoría', '76478071-K', 'Carlos Mondaca 2318', 'contacto@seven7.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-26-2021 11:25:08 AM'),
(551, 'SICMI HVAC & SERVICIO', '77289141-5', 'IVAN MUÑOZ 1664', 'Lmansilla@sicmi.cl', 'SICMI', '971242476', 'Contratistas', 'La Serena', '6-19-2023 10:06:15 AM'),
(552, 'sil.optima', '12843774-6', 'las tepas 1250 la serena', 'sil.optima@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '11-29-2021 11:59:14 AM'),
(553, 'SIMAQ ltda', '77434790-9', 'El molino, 1280 Barrio Industrial', 'silvestre@gruasimaq.cl', 'Benjamín Rodríguez', '990479987', 'Contratistas', 'Coquimbo', '3-30-2021 11:31:54 AM'),
(554, 'SIMMA S.A.', '83568200-5', 'Plaza Comercio 26', 'mmelendez@simma.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Copiapó', '11-24-2021 6:59:52 PM'),
(555, 'Simtech LTDA', '78934690-9', 'Av. Francisco Bilbao, 732', 'ccampos@simtech.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Providencia', '6-14-2023 11:39:49 AM'),
(556, 'SJT Consulting Ltda', '76154985-5', 'Coyancura 2270, Of. 801', 'info@sjtconsulting.cl', 'Edith Fierro', '985008719', 'Servicios de Soporte', 'Providencia', '4-26-2021 2:45:51 PM'),
(557, 'Smart Fluid', '76879968-7', 'Las camelias Oriente 2695 Lampa', 'paulo@smartfluid.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Lampa', '8-27-2021 12:34:06 PM'),
(558, 'Sociedad de inversión y logisticas roca', '17014914-9', 'Ruben dario 3529', 'Logisticasroca@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-17-2023 4:08:03 PM'),
(559, 'Sociedad El Santo', '76741830-2', 'Av. El Santo 1960 Dp. 402', 'mekoplow@sociedadelsanto.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-25-2021 11:45:41 AM'),
(560, 'SOLAR TOTAL', '76055288-7', 'AVDA 4 ESQUINAS 815', 'socarombi@yahoo.es', 'Aron Jaime Bitran', '512299559', 'Equipos y Provisiones', 'La Serena', '3-29-2021 3:56:09 PM'),
(561, 'Solint Jra', '12531237-3', 'Plaza Mauricio Braun 0278', 'j.rubio@solintjra.com', 'SIN CONTACTO', '', 'Contratistas', 'Punta Arenas', '11-30-2021 1:17:14 PM'),
(562, 'Solución Ambiental', '76773326-7', 'SAN JOAQUIN 2010 B 402', 'contacto@solamb.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-12-2022 4:59:12 PM'),
(563, 'Somos Nodos SPA', '77599485-1', 'René Schneider 1865', 'hola@somosnodos.cl', 'Daniela Carrizo Castillo', '+56954503982', 'Contratistas', 'Coquimbo', '7-26-2023 10:51:08 AM'),
(564, 'SOPROCERT', '76238203-2', 'DIEGO PORTALES 301', 'SEBASTIAN.PALMA@SOPROCERT.CL', 'SEBASTIAN PALMA', '95992728', 'Contratistas', 'La Serena', '11-30-2021 11:11:18 AM'),
(565, 'SPOL (Selección Personas On Line)', '76297576-9', 'Los Perales Poniente 0757', 'gerencia@seleccionpersonasonline.com', 'Juan Ignacio García Ureta', '+56994510991', 'Servicios de Consultoría e Ingeniería', 'La Serena', '4-23-2021 11:01:23 AM'),
(566, 'STALab', '77654540-6', 'Román Diaz 462', 'marketing@stalab.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Providencia', '11-30-2021 10:17:09 AM'),
(567, 'Sucomin ltda.', '76088058-2', 'cabo exequiel aroca 1280', 'jgeraldo@sucomin.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '11-25-2021 5:35:10 PM'),
(568, 'Sudelnor SpA', '76342476-6', 'San Pedro Nolasco LT62 - Altovalsol', 'mcanales@sudelnor.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '8-15-2023 9:30:18 AM'),
(569, 'Summerline Marketing y Eventos', '77702422-1', 'Avenida del Mar 5720', 'summerline.ls@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '1-31-2023 12:19:13 PM'),
(570, 'Sunday SpA', '76914513-3', 'Nueva Providencia 1363  ofic  605', 'joalcomo2@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '3-25-2021 4:04:52 PM'),
(571, 'SV Group  diseño marketing publicidad', '76467511-8', 'Bernave Vega 811', 'eduardografic@hotmail.com', 'Ismael eduardo vargas cortyes', '+569 91371546', 'Contratistas', 'Andacollo', '4-17-2023 11:33:07 AM'),
(572, 'SY Proyectos', '76137846-5', 'ANTONIO BELLET 193, PROVIDENCIA', 'c.colombo@synthesis.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Providencia', '11-22-2021 6:44:14 PM'),
(573, 'SyS Ingeniería Chile', '14385297-0', 'La Marina 15', 'rsantanderp@yahoo.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '3-15-2023 7:37:08 PM'),
(574, 'Tamango Minerals', '77135318-5', 'Los Eucaliptos 1058', 'bernardoaguilar@tamangominerals.cl', 'Pamela Tello Jofré', '532648920', 'Equipos y Provisiones', 'Ovalle', '4-19-2021 8:42:06 PM'),
(575, 'TAXIS EJECUTIVOS BAHIA', '7440775-7', 'SAN ESTEBAN 4161  EL MILAGRO 2 LA SERENA', 'taxiejecutivobahia@gmail.com', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '4-25-2021 1:24:18 PM'),
(576, 'TeamSafety', '77580321-5', 'RVA COOP 2 LT R-183 LT 21 EL ROSARIO', 'alex@teamsafety25.com', 'Alex Diaz J', '934227960', 'Equipos y Provisiones', 'La Serena', '7-1-2022 10:36:35 AM'),
(577, 'TECGO E.I.R.L', '76350715-7', 'Adolfo Joglar 4034.', 'contacto@tecgo.cl', 'Emilia Gómez', '9-95774104', 'Equipos y Provisiones', 'Calama', '11-28-2021 4:16:46 PM'),
(578, 'Tecneed SpA', '76460073-8', 'Braulio Arenas 1484', 'gabrielgodoy@tecneedspa.cl', 'GABRIEL GODOY R.', '+56998868458', 'Contratistas', 'La Serena', '10-9-2023 10:23:34 AM'),
(579, 'Tecnoacuaria', '77808020-6', 'Avda Balmaceda 4010', 'tecnoacuaria@hotmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-27-2022 9:15:54 PM'),
(580, 'tecnologías educativas colibrí', '76554493-9', 'Tucapel Jimenez 40', 'herman@consultoracolibri.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Santiago', '4-26-2021 5:28:40 PM'),
(581, 'Tecnologyhome', '76709255-5', 'Avenida Copayapu 6241', 'operaciones@tecnologyhome.cl', 'SIN CONTACTO', '', 'Contratistas', 'Copiapó', '12-4-2023 8:25:37 PM'),
(582, 'TECNOMIN', '77381519-4', 'Avenida Balmaceda 5371', 'asesoriasymineria@gmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'La Serena', '9-7-2022 1:35:17 AM'),
(583, 'Tecnosuelos SPA', '77184005-1', 'Badajoz 100, oficina 1601', 'contacto.tecnosuelo@gmail.com', 'Carolina Soto-Mundaca', '+56 22 2209959', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '8-17-2021 11:58:45 AM'),
(584, 'TEKFUSION S.A.', '96971220-2', 'Monseñor Francisco Gilmore 9180', 'mgs@tekfusion.cl', 'Marcelo González Sotomayor', '569 65970910', 'Contratistas', 'Quilicura', '8-16-2022 3:39:31 PM'),
(585, 'Tellus Mining', '76466483-3', 'Badajoz 130, oficina 505', 'contacto@tellus-mining.com', 'Paula Burgos Vivanco', '+569989037857', 'Servicios de Consultoría e Ingeniería', 'Las Condes', '7-13-2022 11:22:08 AM'),
(586, 'Telos Otec', '77135409-2', 'Anibal Pinto #2502', 'telosotecspa@gmail.com', 'Camila Leyton Torres', '961107401', 'Servicios de Consultoría e Ingeniería', 'La Serena', '7-5-2023 9:03:47 AM'),
(587, 'TENEMOS EMPRESA', '14755627-6', 'Guido Bertin Soto 435', 'controller@tenemosempresa.cl', 'Claudia López', '56991000154', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-29-2023 2:42:27 PM'),
(588, 'Termosol spa', '76699029-0', 'Francisco Vera lamperein 2557', 'Contacto@termosol.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '12-2-2023 5:16:25 PM'),
(589, 'Terranova Montajes', '76486598-7', 'Los Talleres 1630', 'master.novamontajes@gmail.com', 'Priscilla Torrejón Tapia', '+56968046658', 'Contratistas', 'Coquimbo', '11-29-2021 3:43:16 PM'),
(590, 'tesistas Universidad de la Serena', '18831171-7', 'benavente 980', 'vtorrescaces1994@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '2-16-2023 5:20:00 PM'),
(591, 'That Company SpA', '17644899-7', 'Marco Gallo Vergara 423', 'Giorgio@thatcompany.cl', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '11-7-2021 2:59:01 PM'),
(592, 'Thejo Engineering', '76427784-8', 'Pedro Nolasco 35, Altovalsol', 'pablo.andrades@thejo-cl.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-4-2023 12:48:35 PM'),
(593, 'THRU business', '76395276-2', 'el ruil 1228', 'ltrujillo@thrubusiness.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '4-8-2021 7:57:41 PM'),
(594, 'TMinerals', '76780623-K', 'Parcela 76', 'chenriquez@tminerals.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Limache', '12-1-2021 8:07:56 AM'),
(595, 'Tools Truck Ltda', '77250235-4', 'Carlos Vargas Aguirre 1481', 'gonzaloguinez@toolstruck.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'La Serena', '7-20-2022 7:54:49 PM'),
(596, 'TOPCALL .', '13534928-3', 'rio seco 1605 bosque san carlos', 'cristopografia@hotmail.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '4-14-2021 6:04:56 PM'),
(597, 'Toposennin', '77297766-2', 'Circunvalación 948', 'toposennin@toposennin.cl', 'Jerson Díaz Cortés', '9 41393730', 'Servicios de Soporte', 'Ovalle', '8-19-2022 4:52:29 PM'),
(598, 'Total Support SpA', '76942788-0', 'Gerónimo Mendez 2125, Oficina C, Barrio industrial, Coquimbo', 'jlcaradeuc@totalsupportspa.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Coquimbo', '7-14-2022 5:29:44 PM'),
(599, 'TRADE MARK', '77878860-8', 'AVENIDA LA CANTERA 1310', 'CONTACTO@TML.CL', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '7-12-2022 12:35:43 PM'),
(600, 'Trailers Max', '77169425-K', 'Las Dunas de Peñuelas 6260', 'gaspar.salvatierra@maxgc.cl', 'Gaspar Salvatierra', '922511455', 'Equipos y Provisiones', 'La Serena', '4-13-2023 9:35:26 AM'),
(601, 'Trans arturo', '76793102-6', 'Carrera 10', 'Transarturo06@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Illapel', '5-11-2021 4:38:18 PM'),
(602, 'Transporte LILA', '76592865-6', 'Río la colorada s/n', 'Lila.limitada@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Tierra Amarilla', '11-17-2021 5:45:04 AM'),
(603, 'Transportes Eval', '76854202-3', 'Lahuan 1729', 'contacto@transporteseval.cl', 'Jeniffer Muñoz', '948429677', 'Equipos y Provisiones', 'La Serena', '3-24-2021 4:48:18 PM'),
(604, 'Transportes Jensen', '7539459-4', 'Parcela 19, lote 17b Chamonate', 'Trans_jensen@hotmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Copiapó', '11-24-2021 8:44:44 PM'),
(605, 'TRANSPORTES MATAGUI E.I.R.L.', '76694117-6', 'URMENETA 710', 'finanzas@matagui.cl', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '12-19-2022 10:21:39 AM'),
(606, 'Transportes Nexo', '76439143-8', 'PASAJE UNO NORTE 067   LOS PROFESORES', 'Operaciones@transportesnexo.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'Salamanca', '6-7-2021 6:43:04 PM'),
(607, 'Transportes Nuñez', '6854402-5', 'CHALINGA Hijuela 28', 'transportespnunez@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '7-19-2022 5:56:44 PM'),
(608, 'Transportes PVL', '76489452-9', 'Jose joaquin perez 450 lote B', 'd.villalobos@transportespvl.cl', 'DOUGLAS ANTONIO VILLALOBOS CARVAJAL', '+56976593670', 'Contratistas', 'Salamanca', '7-18-2022 8:50:11 AM'),
(609, 'Transportes Rubén', '8731574-6', 'Ruiz Valledor 598', 'basesalamanca@transportesruben.cl', 'Ricardo Oyanedel Cortés', '942112957', 'Contratistas', 'Salamanca', '5-12-2021 10:24:11 AM'),
(610, 'Transportes RyD', '79961210-0', 'Jose Portales 1013', 'lorena.rojas@transportesryd.cl', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '8-17-2021 4:05:32 PM'),
(611, 'Transportes Zamora E.I.R.L', '76928948-8', 'Julio Echeverria 542, Salamanca', 'contacto@trzamora.com', 'Jefe de Operaciones', '967656874', 'Equipos y Provisiones', 'Salamanca', '7-20-2023 12:22:19 PM'),
(612, 'TRANSVALLES SPA', '77663285-6', 'Pasaje nuevo cinco 3248', 'transvallesservicios@gmail.com', 'ROBERTO ESTEBAN ARAYA MONDACA', '+56969079920', 'Equipos y Provisiones', 'Coquimbo', '7-18-2023 10:38:17 PM'),
(613, 'TRANSVERSAL OTEC', '76439009-1', 'RICARDO MATTE PEREZ 546', 'ocarrasco2014@outlook.com', 'CLAUDIA DE LA PARRA', '+56 9 72161831', 'Servicios de Consultoría e Ingeniería', 'Providencia', '4-23-2021 3:50:59 PM'),
(614, 'Treck SA.', '16325439-5', 'Blas Vial 100', 'Leonardo.rojas@treck.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Salamanca', '11-15-2021 10:19:35 PM'),
(615, 'TRES PATITOS', '76375403-0', 'ALFONSO 558', 'pcarvajalsantander@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Andacollo', '10-27-2021 9:34:55 AM'),
(616, 'Tripan S.A.', '99537640-7', 'Parcela 2 Los Tilos Número 2B, San Nicolás', 'jtwainer@tripan.cl', 'SIN CONTACTO', '', 'Contratistas', 'San Nicolás', '11-22-2021 1:46:15 PM'),
(617, 'TRUCKSERVICE', '76725299-4', 'AV ALGARROBO   CUNCUMEN 75 D', 'truckservice2017@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'Salamanca', '8-5-2021 12:32:03 PM'),
(618, 'TURISMOHUERTA', '7227335-4', 'VICTORIA 420', 'TURISMOHUERTA@HOTMAIL.COM', 'SIN CONTACTO', '', 'Contratistas', 'Ovalle', '11-13-2021 11:05:04 AM'),
(619, 'Tvochile', '76653720-0', 'Parcela 17 triunfo campesino', 'Gobe00@gmail.com', 'Oficina central coquimbo', '512543944', 'Contratistas', 'Coquimbo', '8-5-2021 9:17:54 PM'),
(620, 'Uls tesistas', '19155383-7', 'Pasaje yarken 3387', 'Pia.salinas12@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '2-16-2023 5:32:55 PM'),
(621, 'Universidad Catolica del Norte', '81518400-9', 'Larrondo 1281', 'claudia.bortolotti@ucn.cl', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '8-2-2023 12:42:22 PM'),
(622, 'Upgrade Certificaciones SpA', '77034122-1', 'Pampa Baja 41 B', 'contactoupgradespa@gmail.com', 'Hugo Sanhueza Rosales', '+56966585806', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-31-2021 1:10:37 PM'),
(623, 'UPGRADE MINERALS', '76773702-5', 'Julio Maturana 3159', 'cristian.gonzalez@upgrademinerals.com', 'SIN CONTACTO', '', 'Servicios de Consultoría e Ingeniería', 'Coquimbo', '5-18-2022 9:04:21 PM'),
(624, 'Urbek Urbanizaciones', '77049668-3', 'Fdo El Escorial Lt2B Pan De Azucar', 'urbekinfo@gmail.com', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '4-11-2023 5:19:22 PM'),
(625, 'Vallenar Empresas', '76950870-8', 'CARBONELL 550   QUINTA VALLE', 'contacto@vallenarempresas.cl', 'SIN CONTACTO', '', 'Contratistas', 'Vallenar', '11-29-2021 10:36:40 AM'),
(626, 'Valor Ambiental', '76115873-2', 'Miguel Aguirre Perry, 2080', 'karina.barraza@valorambiental.cl', 'Marcela Miranda Pizarro', '995680594', 'Servicios de Consultoría e Ingeniería', 'La Serena', '3-31-2021 10:13:20 AM'),
(627, 'VeData Group', '76303613-8', 'Av. Kennedy 6800 Oficina 617B', 'fabrego@vedata.cl', 'Fernando Abrego Floes', '56998265423', 'Servicios de Soporte', 'Vitacura', '2-16-2022 4:16:50 PM'),
(628, 'Ventec ltda', '95707000-0', 'Huanhuali 885', 'cotizaciones@ventec.cl', 'David Fuentealba', '228872915', 'Equipos y Provisiones', 'La Serena', '9-23-2022 11:56:41 AM'),
(629, 'Vertycal Industrial Trade', '76462656-7', 'Don Hugo robles 317', 'makarena.arredondo@vertycal.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Antofagasta', '11-11-2021 10:06:16 AM'),
(630, 'VIBA PRODUCCIONES SPA', '76137147-9', 'Nueva Providencia 1881-201', 'fonzie@viba.cl', 'SIN CONTACTO', '', 'Contratistas', 'Providencia', '4-13-2021 4:30:31 PM'),
(631, 'Vibrados Valle de Elqui', '76245050-K', 'Parcela 104 Lote B, Vegas Norte', 'info.jrivera@gmail.com', 'JOHANNY RIVERA MATTE', '963336898', 'Equipos y Provisiones', 'La Serena', '10-27-2022 9:18:32 AM'),
(632, 'Videcorp E.I.R.L.', '76339354-2', 'AVENIDA SAN RAMON 1580 GALPON 3', 'Contacto@videcorp.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '11-29-2021 3:30:25 PM'),
(633, 'Vigil Ltda', '78188340-9', 'Balmaceda 107', 'vigil@vigilltda.cl', 'Julio Martinez', '512224149', 'Contratistas', 'La Serena', '2-25-2021 3:17:37 PM'),
(634, 'Vista3D - Tour Virtual 360˚', '77169202-8', 'Tocopilla 380', 'contacto@vista3d.cl', 'Raúl Tello Castillo', '+56 9 691 51 506', 'Servicios de Soporte', 'Ovalle', '8-2-2022 10:19:09 AM'),
(635, 'Vita Optica', '77359522-4', 'Avda. Guillermo Ulriksen 1634. Local 11 La Serena', 'contacto@vitaoptica.cl', 'SIN CONTACTO', '', 'Servicios de Soporte', 'La Serena', '5-27-2022 4:08:46 PM'),
(636, 'viveros y jardines yapur spa', '76986597-7', 'parcela 42 sitio 3 El hinojal, La Serena', 'yapur01@gmail.com', 'SIN CONTACTO', '', 'Contratistas', 'La Serena', '7-21-2023 7:56:09 PM'),
(637, 'Wave.co', '76355804-5', 'Av. Presidente Errazuriz 2999 oficina 201', 'daniel.valdes@waveco.cl', 'Daniel Valdes Jamett', '+56 9 76146579', 'Equipos y Provisiones', 'Las Condes', '8-17-2021 5:36:21 PM'),
(638, 'WEST RENT A CAR', '79578880-8', 'AVDA FRANCISCO DE AGUIRRE 0225', 'jgodoy@westrentacar.com', 'René Castillo B.', '+56512362100', 'Servicios de Soporte', 'La Serena', '3-18-2021 12:46:38 PM'),
(639, 'Westerfood spa', '76669298-2', 'Los albañiles 1261 Galpon 2', 'gerencia@westerfood.cl', 'SIN CONTACTO', '', 'Contratistas', 'Coquimbo', '6-29-2023 12:37:54 PM'),
(640, 'wixpro spa', '76856378-0', 'Amanecer 2030 Local 2', 'rebolledo@wixpro.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Coquimbo', '7-26-2022 11:49:15 AM'),
(641, 'Wordson Consulting & Training E.I.R.L', '76673714-5', 'Av. Guillermo Ulriksen 1781', 'contacto@wordson.cl', 'Deneisys Hurtado', '+56974357995', 'Contratistas', 'La Serena', '11-30-2021 12:03:57 PM'),
(642, 'www.schneiderenergy.cl', '76648847-1', 'hacienda el pangal parcela 105', 'j@schneiderenergy.cl', 'SIN CONTACTO', '', 'Equipos y Provisiones', 'Casablanca', '4-6-2021 10:34:15 PM'),
(643, 'Zenner tecnologías', '76088347-6', 'Porvenir 474', 'luis.namoncura@zenner.cl', 'SIN CONTACTO', '', 'Contratistas', 'Santiago', '12-2-2021 12:42:38 PM'),
(644, 'Zulnorth', '76862026-1', 'Pasaje Antonio Varas 1140', 'gabriel.zuleta@zulnorth.cl', 'Danielle Zuleta', '994743194', 'Contratistas', 'Antofagasta', '1-13-2023 11:08:55 AM'),
(646, 'No se han aplicado filtros', '', '', '', '', '', '', '', ''),
(647, 'Admin', '11111111-1', 'Benavente 980', 'admin@admin.com', 'Pedro Juan y Diego', '11111112', 'Consultoria', 'La Serena', '7-18-2023 2:14:21 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'Cidere', 'authgroup'),
(10, 'Cidere', 'authgrouppermissions'),
(11, 'Cidere', 'authpermission'),
(12, 'Cidere', 'authuser'),
(13, 'Cidere', 'authusergroups'),
(14, 'Cidere', 'authuseruserpermissions'),
(15, 'Cidere', 'cidereregistro'),
(16, 'Cidere', 'cidereusuario'),
(29, 'Cidere', 'datoscidereprov'),
(17, 'Cidere', 'djangoadminlog'),
(18, 'Cidere', 'djangocontenttype'),
(19, 'Cidere', 'djangomigrations'),
(20, 'Cidere', 'djangosession'),
(30, 'Cidere', 'proveedorescsv'),
(31, 'Cidere', 'regioneschile'),
(8, 'Cidere', 'registro'),
(21, 'Cidere', 'relleno'),
(22, 'Cidere', 'tablaacciones'),
(23, 'Cidere', 'tablapaginas'),
(24, 'Cidere', 'tablapagrevisado'),
(32, 'Cidere', 'tablaprovrevisado'),
(25, 'Cidere', 'tablarbusquedas'),
(26, 'Cidere', 'tablarcrud'),
(27, 'Cidere', 'tablartransacciones'),
(28, 'Cidere', 'tablausuario'),
(7, 'Cidere', 'usuario'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Cidere', '0001_initial', '2023-11-26 22:15:32.879529'),
(2, 'Cidere', '0002_registro', '2023-11-26 22:15:32.896532'),
(3, 'contenttypes', '0001_initial', '2023-11-26 22:15:32.922534'),
(4, 'auth', '0001_initial', '2023-11-26 22:15:33.276799'),
(5, 'admin', '0001_initial', '2023-11-26 22:15:33.354532'),
(6, 'admin', '0002_logentry_remove_auto_add', '2023-11-26 22:15:33.362534'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-26 22:15:33.368532'),
(8, 'contenttypes', '0002_remove_content_type_name', '2023-11-26 22:15:33.429538'),
(9, 'auth', '0002_alter_permission_name_max_length', '2023-11-26 22:15:33.464679'),
(10, 'auth', '0003_alter_user_email_max_length', '2023-11-26 22:15:33.484683'),
(11, 'auth', '0004_alter_user_username_opts', '2023-11-26 22:15:33.492681'),
(12, 'auth', '0005_alter_user_last_login_null', '2023-11-26 22:15:33.536174'),
(13, 'auth', '0006_require_contenttypes_0002', '2023-11-26 22:15:33.539175'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2023-11-26 22:15:33.547173'),
(15, 'auth', '0008_alter_user_username_max_length', '2023-11-26 22:15:33.603178'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2023-11-26 22:15:33.619181'),
(17, 'auth', '0010_alter_group_name_max_length', '2023-11-26 22:15:33.637182'),
(18, 'auth', '0011_update_proxy_permissions', '2023-11-26 22:15:33.645183'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2023-11-26 22:15:33.662182'),
(20, 'sessions', '0001_initial', '2023-11-26 22:15:33.691186'),
(21, 'Cidere', '0003_authgroup_authgrouppermissions_authpermission_and_more', '2023-11-30 21:16:31.872253'),
(22, 'Cidere', '0004_datoscidereprov_proveedorescsv_regioneschile_and_more', '2023-12-13 22:53:07.361383'),
(23, 'Cidere', '0004_tablaprovrevisado_delete_cidereregistro_and_more', '2023-12-14 21:51:41.054963'),
(24, 'Cidere', '0005_datoscidereprov_proveedorescsv_regioneschile', '2023-12-14 21:51:41.059963');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedorescsv`
--

CREATE TABLE `proveedorescsv` (
  `COL 1` mediumtext DEFAULT NULL,
  `COL 2` varchar(157) DEFAULT NULL,
  `COL 3` varchar(139) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regioneschile`
--

CREATE TABLE `regioneschile` (
  `NumeroRegion` int(11) NOT NULL,
  `NombreRegion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `regioneschile`
--

INSERT INTO `regioneschile` (`NumeroRegion`, `NombreRegion`) VALUES
(1, 'Región de Tarapacá'),
(2, 'Región de Antofagasta'),
(3, 'Región de Atacama'),
(4, 'Región de Coquimbo'),
(5, 'Región de Valparaíso'),
(6, 'Región Metropolitana'),
(7, 'Región del Libertador General Bernardo OHiggins'),
(8, 'Región del Maule'),
(9, 'Región de Ñuble'),
(10, 'Región del Biobío'),
(11, 'Región de La Araucanía'),
(12, 'Región de Los Ríos'),
(13, 'Región de Los Lagos'),
(14, 'Región de Aysén del General Carlos Ibáñez del Camp'),
(15, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relleno`
--

CREATE TABLE `relleno` (
  `Id_usuario` int(30) NOT NULL,
  `region` varchar(50) NOT NULL,
  `Nombre_Empresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `relleno`
--

INSERT INTO `relleno` (`Id_usuario`, `region`, `Nombre_Empresa`) VALUES
(23, 'Coquimbo', 'Ulises S.a'),
(44, 'Campos', 'San Pedro S.a'),
(11, 'Felipe', 'Felipe S.A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_acciones`
--

CREATE TABLE `tabla_acciones` (
  `id_accion` int(11) NOT NULL,
  `detalle_accion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_acciones`
--

INSERT INTO `tabla_acciones` (`id_accion`, `detalle_accion`) VALUES
(1, 'Registro Proveedor'),
(2, 'Registro Empresa'),
(3, 'Búsqueda'),
(4, 'Revisión Página'),
(5, 'Revisión Perfil'),
(6, 'Botón de Contacto'),
(7, 'Modificación Usuario'),
(8, 'Dado de Baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_paginas`
--

CREATE TABLE `tabla_paginas` (
  `id_pagina` int(11) NOT NULL,
  `pagina` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_paginas`
--

INSERT INTO `tabla_paginas` (`id_pagina`, `pagina`) VALUES
(1, 'Inicio'),
(2, 'Nosotros'),
(3, 'Proveedores'),
(4, 'Contacto'),
(5, 'Perfil'),
(6, 'Acceder'),
(7, 'Registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_pag_revisado`
--

CREATE TABLE `tabla_pag_revisado` (
  `id_transaccion` int(11) NOT NULL,
  `pagina_ant` int(11) NOT NULL,
  `pagina_visit` int(11) NOT NULL,
  `boton_contacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_pag_revisado`
--

INSERT INTO `tabla_pag_revisado` (`id_transaccion`, `pagina_ant`, `pagina_visit`, `boton_contacto`) VALUES
(3, 4, 2, 0),
(8, 2, 4, 0),
(13, 1, 1, 0),
(18, 5, 5, 0),
(23, 1, 2, 0),
(28, 4, 1, 0),
(33, 2, 4, 0),
(38, 5, 1, 0),
(43, 4, 5, 0),
(48, 1, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_prov_revisado`
--

CREATE TABLE `tabla_prov_revisado` (
  `id_transaccion` int(11) NOT NULL,
  `pagina_ant` int(11) NOT NULL,
  `pagina_visit` int(11) NOT NULL,
  `boton_contacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_prov_revisado`
--

INSERT INTO `tabla_prov_revisado` (`id_transaccion`, `pagina_ant`, `pagina_visit`, `boton_contacto`) VALUES
(5, 3, 23, 1),
(10, 3, 29, 1),
(15, 3, 35, 0),
(20, 3, 23, 1),
(25, 3, 35, 1),
(30, 3, 28, 1),
(35, 3, 33, 0),
(40, 3, 23, 0),
(45, 3, 35, 0),
(50, 3, 35, 1),
(51, 3, 1, 0),
(52, 3, 2, 0),
(53, 3, 2, 0),
(54, 3, 3, 0),
(55, 3, 6, 0),
(56, 3, 51, 0),
(57, 3, 1, 0),
(59, 3, 1, 0),
(60, 3, 1, 0),
(61, 3, 4, 0),
(62, 3, 2, 0),
(63, 3, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_r_busquedas`
--

CREATE TABLE `tabla_r_busquedas` (
  `id_transaccion` int(11) NOT NULL,
  `terminos_busqueda` varchar(100) NOT NULL,
  `categoria` int(11) NOT NULL,
  `rubro` int(11) NOT NULL,
  `tamano` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  `comunas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_r_busquedas`
--

INSERT INTO `tabla_r_busquedas` (`id_transaccion`, `terminos_busqueda`, `categoria`, `rubro`, `tamano`, `region`, `provincia`, `comunas`) VALUES
(1, 'Equipamiento de extracción y perforación', 0, 12, 2, 13, 0, 0),
(6, 'Tecnología de procesamiento de minerales', 4, 14, 1, 11, 0, 0),
(11, 'Servicios de geología y exploración', 3, 32, 1, 13, 0, 0),
(16, 'Maquinaria pesada para minería', 1, 14, 4, 16, 0, 0),
(21, 'Suministro de explosivos y productos químicos', 4, 13, 3, 13, 0, 0),
(26, 'Soluciones de gestión de residuos mineros', 2, 18, 1, 9, 0, 0),
(31, 'Sistemas de transporte de minerales', 2, 29, 3, 11, 0, 0),
(36, 'Equipos de seguridad para minería', 3, 18, 2, 15, 0, 0),
(41, 'Ingeniería de minas y consultoría', 0, 1, 4, 4, 0, 0),
(46, 'Servicios de mantenimiento y reparación de equipos mineros', 2, 12, 4, 8, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_r_crud`
--

CREATE TABLE `tabla_r_crud` (
  `id_transaccion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_r_crud`
--

INSERT INTO `tabla_r_crud` (`id_transaccion`, `id_usuario`) VALUES
(2, 21),
(4, 22),
(7, 23),
(9, 24),
(12, 25),
(14, 26),
(17, 27),
(19, 28),
(22, 29),
(24, 30),
(27, 31),
(29, 32),
(32, 33),
(34, 34),
(37, 35),
(39, 36),
(42, 37),
(44, 38),
(47, 39),
(49, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_r_transacciones`
--

CREATE TABLE `tabla_r_transacciones` (
  `id_transaccion` int(11) NOT NULL,
  `accion_realizada` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_r_transacciones`
--

INSERT INTO `tabla_r_transacciones` (`id_transaccion`, `accion_realizada`, `id_usuario`, `fecha_registro`) VALUES
(1, 3, 15, '2023-01-01 08:34:00'),
(2, 1, 5, '2023-05-02 14:12:00'),
(3, 4, 11, '2023-12-03 20:27:00'),
(4, 2, 8, '2023-04-18 10:56:00'),
(5, 5, 19, '2023-05-23 16:43:00'),
(6, 3, 2, '2023-06-30 09:08:00'),
(7, 1, 13, '2023-07-11 22:41:00'),
(8, 4, 6, '2023-08-15 12:09:00'),
(9, 2, 17, '2023-09-20 18:55:00'),
(10, 5, 9, '2023-10-25 07:26:00'),
(11, 3, 4, '2023-11-03 23:52:00'),
(12, 1, 12, '2023-08-12 15:17:00'),
(13, 4, 7, '2023-12-31 05:45:00'),
(14, 2, 18, '2023-11-22 19:32:00'),
(15, 5, 1, '2023-10-17 03:14:00'),
(16, 3, 14, '2023-09-09 10:47:00'),
(17, 1, 10, '2023-08-04 14:25:00'),
(18, 4, 3, '2023-07-01 21:56:00'),
(19, 2, 16, '2023-06-16 07:34:00'),
(20, 5, 8, '2023-05-11 12:01:00'),
(21, 3, 5, '2023-04-06 18:37:00'),
(22, 1, 20, '2023-03-02 02:05:00'),
(23, 4, 9, '2023-02-15 09:33:00'),
(24, 2, 2, '2023-01-10 15:10:00'),
(25, 5, 14, '2023-12-15 20:47:00'),
(26, 3, 11, '2023-11-09 06:15:00'),
(27, 1, 7, '2023-10-04 11:43:00'),
(28, 4, 16, '2023-09-01 17:29:00'),
(29, 2, 10, '2023-08-27 02:56:00'),
(30, 5, 3, '2023-07-22 08:24:00'),
(31, 3, 18, '2023-06-17 14:51:00'),
(32, 1, 1, '2023-05-12 20:18:00'),
(33, 4, 12, '2023-04-07 01:45:00'),
(34, 2, 6, '2023-03-03 07:13:00'),
(35, 5, 17, '2023-02-26 12:40:00'),
(36, 3, 13, '2023-01-21 18:18:00'),
(37, 1, 8, '2023-12-16 23:45:00'),
(38, 4, 19, '2023-11-11 05:13:00'),
(39, 2, 4, '2023-10-06 10:40:00'),
(40, 5, 15, '2023-09-01 16:07:00'),
(41, 3, 7, '2023-08-27 21:34:00'),
(42, 1, 18, '2023-07-23 03:02:00'),
(43, 4, 11, '2023-06-18 08:30:00'),
(44, 2, 5, '2023-05-13 13:57:00'),
(45, 5, 16, '2023-04-08 19:24:00'),
(46, 3, 10, '2023-03-04 00:51:00'),
(47, 1, 3, '2023-02-26 06:19:00'),
(48, 4, 14, '2023-01-21 11:46:00'),
(49, 2, 9, '2023-12-17 17:13:00'),
(50, 5, 2, '2023-11-12 22:40:00'),
(51, 5, 1, '2023-12-06 20:10:48'),
(52, 5, 1, '2023-12-06 20:12:55'),
(53, 5, 1, '2023-12-06 20:12:56'),
(54, 5, 1, '2023-12-06 20:34:05'),
(55, 5, 1, '2023-12-06 20:34:30'),
(56, 5, 1, '2023-12-06 20:35:47'),
(57, 5, 1, '2023-12-06 21:10:16'),
(58, 5, 1, '2023-12-14 19:14:54'),
(59, 5, 1, '2023-12-14 19:18:42'),
(60, 5, 1, '2023-12-14 19:20:35'),
(61, 5, 1, '2023-12-14 19:21:12'),
(62, 5, 1, '2023-12-14 19:21:42'),
(63, 5, 1, '2023-12-14 23:04:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_usuario`
--

CREATE TABLE `tabla_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_usuario`
--

INSERT INTO `tabla_usuario` (`id_usuario`, `nombre_empresa`, `region`) VALUES
(1, 'Minera Santa Lucía, SA', 2),
(2, 'Exploraciones Mineras del Norte, SA', 4),
(3, 'Extracciones de Oro y Plata, S', 4),
(4, 'Compañía Minera de Hierro, SA', 7),
(5, 'Corporación de Zinc y Plomo, S', 12),
(6, 'Sociedad Minera del Sur, SA', 10),
(7, 'Compañía de Minería de Platino, S', 5),
(8, 'Extracciones de Diamantes del Este, SA', 4),
(9, 'Corporación Minera de Carbón, SA', 9),
(10, 'Compañía de Extracción de Rubíes, S', 6),
(11, 'Sociedad Minera de Zafiro, SA', 8),
(12, 'Corporación de Extracción de Amatista, S', 3),
(13, 'Sociedad Minera de Topacio, SA', 1),
(14, 'Compañía de Extracción de Turmalina, S', 11),
(15, 'Minera de Esmeraldas del Oeste, SA', 4),
(16, 'Sociedad de Minería de Ámbar, S', 6),
(17, 'Corporación Minera de Ópalo, SA', 8),
(18, 'Compañía de Extracción de Lapislázuli, S', 6),
(19, 'Minerales y Metales del Sur, SA', 4),
(20, 'Exploraciones Geológicas del Este, S', 4),
(21, 'Minerales y Metales del Norte, SA', 2),
(22, 'Exploraciones Geológicas del Sur, SA', 1),
(23, 'Extracciones Mineras del Este, S', 6),
(24, 'Compañía Minera de Cobre y Oro, SA', 7),
(25, 'Corporación de Extracción de Hierro, S', 1),
(26, 'Sociedad Minera de Plata y Zinc, SA', 0),
(27, 'Compañía de Minería de Níquel, S', 0),
(28, 'Extracciones de Platino del Oeste, SA', 0),
(29, 'Sociedad de Minería de Diamantes, S', 0),
(30, 'Corporación Minera de Grafito, SA', 0),
(31, 'Compañía de Extracción de Esmeraldas, S', 0),
(32, 'Sociedad Minera de Rubíes, SA', 0),
(33, 'Corporación de Minería de Zafiro, S', 0),
(34, 'Compañía de Extracción de Amatista, SA', 0),
(35, 'Sociedad Minera de Topacio, S', 0),
(36, 'Corporación de Extracción de Turquesa, SA', 0),
(37, 'Compañía Minera de Jade, S', 0),
(38, 'Sociedad de Minería de Ámbar, SA', 0),
(39, 'Corporación Minera de Ópalo, S', 0),
(40, 'Compañía de Extracción de Lapislázuli, SA', 0),
(51, 'Hendriks S.a', 0),
(3432, 'Ulises Campos S.a', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `datoscidereprov`
--
ALTER TABLE `datoscidereprov`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `regioneschile`
--
ALTER TABLE `regioneschile`
  ADD PRIMARY KEY (`NumeroRegion`);

--
-- Indices de la tabla `tabla_acciones`
--
ALTER TABLE `tabla_acciones`
  ADD PRIMARY KEY (`id_accion`);

--
-- Indices de la tabla `tabla_paginas`
--
ALTER TABLE `tabla_paginas`
  ADD PRIMARY KEY (`id_pagina`);

--
-- Indices de la tabla `tabla_pag_revisado`
--
ALTER TABLE `tabla_pag_revisado`
  ADD KEY `idTragPag` (`id_transaccion`),
  ADD KEY `idPagAntUser` (`pagina_ant`),
  ADD KEY `idPagVisitUser` (`pagina_visit`);

--
-- Indices de la tabla `tabla_prov_revisado`
--
ALTER TABLE `tabla_prov_revisado`
  ADD KEY `profREV` (`id_transaccion`),
  ADD KEY `profRev2` (`pagina_visit`);

--
-- Indices de la tabla `tabla_r_busquedas`
--
ALTER TABLE `tabla_r_busquedas`
  ADD KEY `idBoostrap` (`id_transaccion`);

--
-- Indices de la tabla `tabla_r_crud`
--
ALTER TABLE `tabla_r_crud`
  ADD KEY `idTransaccion` (`id_transaccion`),
  ADD KEY `idUsuarioA` (`id_usuario`);

--
-- Indices de la tabla `tabla_r_transacciones`
--
ALTER TABLE `tabla_r_transacciones`
  ADD PRIMARY KEY (`id_transaccion`),
  ADD KEY `idAccionesTransacciones` (`accion_realizada`),
  ADD KEY `idUsuarioTransaccion` (`id_usuario`);

--
-- Indices de la tabla `tabla_usuario`
--
ALTER TABLE `tabla_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datoscidereprov`
--
ALTER TABLE `datoscidereprov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tabla_pag_revisado`
--
ALTER TABLE `tabla_pag_revisado`
  ADD CONSTRAINT `idPagAnt` FOREIGN KEY (`pagina_ant`) REFERENCES `tabla_paginas` (`id_pagina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idPagVisit` FOREIGN KEY (`pagina_visit`) REFERENCES `tabla_paginas` (`id_pagina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idTragPag` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_prov_revisado`
--
ALTER TABLE `tabla_prov_revisado`
  ADD CONSTRAINT `profREV` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profRev2` FOREIGN KEY (`pagina_visit`) REFERENCES `datoscidereprov` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_r_busquedas`
--
ALTER TABLE `tabla_r_busquedas`
  ADD CONSTRAINT `idBoostrap` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_r_crud`
--
ALTER TABLE `tabla_r_crud`
  ADD CONSTRAINT `idTransaccion` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idUsuarioA` FOREIGN KEY (`id_usuario`) REFERENCES `tabla_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_r_transacciones`
--
ALTER TABLE `tabla_r_transacciones`
  ADD CONSTRAINT `idAccionesTransacciones` FOREIGN KEY (`accion_realizada`) REFERENCES `tabla_acciones` (`id_accion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idUsuarioTransaccion` FOREIGN KEY (`id_usuario`) REFERENCES `datoscidereprov` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
