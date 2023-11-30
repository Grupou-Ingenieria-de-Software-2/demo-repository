-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2023 a las 22:29:10
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
(112, 'Can view tabla usuario', 28, 'view_tablausuario');

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
(17, 'Cidere', 'djangoadminlog'),
(18, 'Cidere', 'djangocontenttype'),
(19, 'Cidere', 'djangomigrations'),
(20, 'Cidere', 'djangosession'),
(8, 'Cidere', 'registro'),
(21, 'Cidere', 'relleno'),
(22, 'Cidere', 'tablaacciones'),
(23, 'Cidere', 'tablapaginas'),
(24, 'Cidere', 'tablapagrevisado'),
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
(21, 'Cidere', '0003_authgroup_authgrouppermissions_authpermission_and_more', '2023-11-30 21:16:31.872253');

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
-- Estructura de tabla para la tabla `tabla r_crud`
--

CREATE TABLE `tabla r_crud` (
  `id_transaccion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_acciones`
--

CREATE TABLE `tabla_acciones` (
  `id_accion` int(11) NOT NULL,
  `detalle_accion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_paginas`
--

CREATE TABLE `tabla_paginas` (
  `id_pagina` int(11) NOT NULL,
  `pagina` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_usuario`
--

CREATE TABLE `tabla_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `tabla_usuario`
--

INSERT INTO `tabla_usuario` (`id_usuario`, `nombre_empresa`) VALUES
(7, 'Campos S.AA'),
(12, 'Ulises S.a');

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
-- Indices de la tabla `tabla r_crud`
--
ALTER TABLE `tabla r_crud`
  ADD KEY `idTransaccion` (`id_transaccion`),
  ADD KEY `idUsuarioA` (`id_usuario`);

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
-- Indices de la tabla `tabla_r_busquedas`
--
ALTER TABLE `tabla_r_busquedas`
  ADD KEY `idBoostrap` (`id_transaccion`);

--
-- Indices de la tabla `tabla_r_transacciones`
--
ALTER TABLE `tabla_r_transacciones`
  ADD PRIMARY KEY (`id_transaccion`),
  ADD KEY `idUsuarioTransaccion` (`id_usuario`),
  ADD KEY `idAccionesTransacciones` (`accion_realizada`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- Filtros para la tabla `tabla r_crud`
--
ALTER TABLE `tabla r_crud`
  ADD CONSTRAINT `idTransaccion` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idUsuarioA` FOREIGN KEY (`id_usuario`) REFERENCES `tabla_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_pag_revisado`
--
ALTER TABLE `tabla_pag_revisado`
  ADD CONSTRAINT `idPagAnt` FOREIGN KEY (`pagina_ant`) REFERENCES `tabla_paginas` (`id_pagina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idPagAntUser` FOREIGN KEY (`pagina_ant`) REFERENCES `tabla_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idPagVisit` FOREIGN KEY (`pagina_visit`) REFERENCES `tabla_paginas` (`id_pagina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idPagVisitUser` FOREIGN KEY (`pagina_visit`) REFERENCES `tabla_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idTragPag` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_r_busquedas`
--
ALTER TABLE `tabla_r_busquedas`
  ADD CONSTRAINT `idBoostrap` FOREIGN KEY (`id_transaccion`) REFERENCES `tabla_r_transacciones` (`id_transaccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_r_transacciones`
--
ALTER TABLE `tabla_r_transacciones`
  ADD CONSTRAINT `idAccionesTransacciones` FOREIGN KEY (`accion_realizada`) REFERENCES `tabla_acciones` (`id_accion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idUsuarioTransaccion` FOREIGN KEY (`id_usuario`) REFERENCES `tabla_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
