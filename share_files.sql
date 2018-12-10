-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2018 a las 07:35:26
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `share_files`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_archivo` int(20) NOT NULL,
  `nombre_original` text NOT NULL,
  `nombre_sistema` varchar(50) NOT NULL,
  `encrypt` varchar(50) NOT NULL,
  `token_archivo` varchar(50) DEFAULT NULL,
  `fecha_carga` date NOT NULL,
  `id_usuario` int(20) DEFAULT NULL,
  `token_invitado` varchar(50) DEFAULT NULL,
  `size` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_archivo`, `nombre_original`, `nombre_sistema`, `encrypt`, `token_archivo`, `fecha_carga`, `id_usuario`, `token_invitado`, `size`) VALUES
(79, 'Curso.AdministraciÃ³n.de.Servidores.Linux.torrent', 'C:xampp	mpphp15A4.tmp', '836a416712e5b68f0f6aa5632736e7ca92e6cd02', 'c8n9pvase5ho73aj32xigrz5equ300my6tkf91wbf2f45ddlc', '2018-12-10', 1, NULL, 0.26),
(82, 'AtomSetup-x64.exe', 'C:xampp	mpphp9631.tmp', '4b59777dc45e2247ef3b688ab63ca4b62ec6d93d', 'q94c600z8aotm7bd0e356xyp7rgkci58s2unhd70jvw1e9clf', '2018-12-10', 1, NULL, 146.96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `id_invitado` int(10) NOT NULL,
  `token_invitado` varchar(50) NOT NULL,
  `usado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`id_invitado`, `token_invitado`, `usado`) VALUES
(5, '5v5xcq40ebr9azy0djkalif0bo2fcg3b1twd185shpum6bn75', 1),
(6, '2wxtlzy4qf6b9s5mpg85k572015bcd5nb76ieau3jhrdv6o4e', 1),
(7, 'cgmp92072jrkfeb53194cvdylboauzdt80qn5s6iw91637xh5', 1),
(15, 'mrp5l96bb24qofzjaec3a273niw1h7ax5v515tuy0b1dks8g4', 1),
(16, '971u1aoesw8bddrjibvfb146c875tn5k3f2mdy5h6xg3zql0p', 1),
(21, '7sem8fb6210vo56xu4b9lr159d4igcazn0ahqj9fpwktcf4y3', 0),
(22, 'hzar37e6dtoycipksl845c9q1w0dbm0252xj9afgn29v6u01b', 0),
(23, 'vf7w5r2gcluozj975xcd92y6ba4sd10ai2798ep3q0kd4nhtm', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id_log` int(20) NOT NULL,
  `id_usuario` int(20) DEFAULT NULL,
  `token_invitado` varchar(50) DEFAULT NULL,
  `ip_ingreso` varchar(30) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id_log`, `id_usuario`, `token_invitado`, `ip_ingreso`, `fecha_ingreso`, `descripcion`) VALUES
(1, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(2, NULL, '2wxtlzy4qf6b9s5mpg85k572015bcd5nb76ieau3jhrdv6o4e', '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(3, 1, NULL, '172.16.126.100', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(4, 1, NULL, '::1', '2018-07-26', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(6, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(7, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(8, 1, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(9, 1, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(10, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(11, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(12, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(13, 1, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(14, 1, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(15, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(16, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(17, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(18, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(19, 1, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(20, 1, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(21, 1, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(22, 20, NULL, '127.0.0.1', '2018-07-26', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0'),
(23, 20, NULL, '172.16.126.119', '2018-07-26', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(24, 1, NULL, '127.0.0.1', '2018-07-30', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(25, 1, NULL, '127.0.0.1', '2018-07-30', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(26, 1, NULL, '127.0.0.1', '2018-07-31', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(27, 1, NULL, '172.16.126.130', '2018-08-01', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60'),
(28, 1, NULL, '::1', '2018-08-02', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(29, 1, NULL, '127.0.0.1', '2018-08-02', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(30, 1, NULL, '127.0.0.1', '2018-08-02', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(31, 1, NULL, '127.0.0.1', '2018-08-03', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(32, 1, NULL, '172.16.126.125', '2018-08-03', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (5) Build/NPPS25.137-93-14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36'),
(33, 1, NULL, '172.16.126.100', '2018-08-03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(34, 1, NULL, '172.16.126.125', '2018-08-03', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (5) Build/NPPS25.137-93-14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36'),
(35, 1, NULL, '::1', '2018-08-03', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(36, 1, NULL, '::1', '2018-08-03', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(37, 1, NULL, '127.0.0.1', '2018-08-06', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(38, 1, NULL, '172.16.126.125', '2018-08-06', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (5) Build/NPPS25.137-93-14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36'),
(39, 1, NULL, '172.16.126.100', '2018-08-06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(40, 1, NULL, '127.0.0.1', '2018-08-07', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(41, 1, NULL, '172.16.126.110', '2018-08-07', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.64'),
(42, 1, NULL, '127.0.0.1', '2018-08-07', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(43, 1, NULL, '::1', '2018-08-07', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(44, 1, NULL, '127.0.0.1', '2018-08-07', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(45, 1, NULL, '::1', '2018-08-07', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(46, 1, NULL, '127.0.0.1', '2018-08-07', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(47, 1, NULL, '127.0.0.1', '2018-08-08', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(48, 20, NULL, '::1', '2018-08-08', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(49, 1, NULL, '::1', '2018-08-08', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(51, 1, NULL, '127.0.0.1', '2018-08-08', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(52, 1, NULL, '127.0.0.1', '2018-08-08', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(53, 1, NULL, '127.0.0.1', '2018-08-08', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(54, 1, NULL, '127.0.0.1', '2018-08-08', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(55, 1, NULL, '172.16.126.114', '2018-08-08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(56, 1, NULL, '127.0.0.1', '2018-08-08', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(57, 1, NULL, '127.0.0.1', '2018-08-09', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(60, 1, NULL, '127.0.0.1', '2018-08-09', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(62, 1, NULL, '127.0.0.1', '2018-08-09', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(63, 1, NULL, '172.16.126.100', '2018-08-09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(64, 25, NULL, '172.16.126.100', '2018-08-09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(65, 1, NULL, '172.16.126.100', '2018-08-09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(66, 1, NULL, '192.168.1.66', '2018-08-10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(67, 1, NULL, '192.168.1.66', '2018-08-10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
(68, 1, NULL, '127.0.0.1', '2018-08-10', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(69, 1, NULL, '127.0.0.1', '2018-08-10', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(70, 1, NULL, '127.0.0.1', '2018-08-13', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(71, 1, NULL, '127.0.0.1', '2018-08-13', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(72, 1, NULL, '::1', '2018-08-13', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(73, NULL, 'cgmp92072jrkfeb53194cvdylboauzdt80qn5s6iw91637xh5', '::1', '2018-08-13', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(74, NULL, 'vf7w5r2gcluozj975xcd92y6ba4sd10ai2798ep3q0kd4nhtm', '::1', '2018-12-09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_fallos`
--

CREATE TABLE `registro_fallos` (
  `id_falla` int(20) NOT NULL,
  `fecha_intento` date NOT NULL,
  `intento` mediumint(30) NOT NULL,
  `token_invitado` varchar(50) DEFAULT NULL,
  `ip_intento` varchar(30) NOT NULL,
  `descripcion_falla` varchar(100) NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro_fallos`
--

INSERT INTO `registro_fallos` (`id_falla`, `fecha_intento`, `intento`, `token_invitado`, `ip_intento`, `descripcion_falla`, `usuario`, `pass`) VALUES
(1, '2018-07-24', 1, 'ssdfasv6546sdfsdf46d', '192.168.1.10', 'Falla comun', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(20) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `tipo_usuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `usuario`, `pass`, `nombre`, `correo`, `tipo_usuario`) VALUES
(1, 'admin', '1234', 'admin', 'admin@correo.com', 1),
(20, 'vtrujillo', 'on2uv2ap', 'vicente', 'vtrujillo@stargroup.com.mx', 0),
(25, 'lzavala', 'av6un2og6is6', 'lzavala', 'lzavala@stargroup.com.mx', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`id_invitado`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `registro_fallos`
--
ALTER TABLE `registro_fallos`
  ADD PRIMARY KEY (`id_falla`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_archivo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `id_invitado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `registro_fallos`
--
ALTER TABLE `registro_fallos`
  MODIFY `id_falla` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
