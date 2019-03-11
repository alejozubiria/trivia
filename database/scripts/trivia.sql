-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2019 a las 02:01:33
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trivia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `descripcion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `dificultad` int(11) NOT NULL,
  `resultado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`id`, `usuario_id`, `fecha`, `categoria_id`, `dificultad`, `resultado`) VALUES
(1, 7, '2019-03-10 21:04:25', 1, 3, 200),
(2, 7, '2019-03-10 21:04:45', 1, 3, 110),
(3, 7, '2019-03-10 21:26:03', 1, 3, 280),
(4, 7, '2019-03-10 21:26:25', 1, 3, 280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `texto` varchar(120) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `dificultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `texto`, `categoria_id`, `dificultad`) VALUES
(1, '¿Cúal es el juego más jugado en pc en 2018?', 1, 1),
(2, '¿Cual es la consola de videojuegos mas vendida de la historia?', 1, 2),
(3, '¿En que año se lanzo la primer consola de videojuegos?', 1, 3),
(4, '¿En que año se lanzo Mortal Kombat?', 1, 3),
(5, '¿De que color es Sonic?', 1, 2),
(6, '¿Como se llama la mascota de Ash?', 1, 1),
(7, 'Como se llama la princesa a la que Mario siempre rescata?', 1, 2),
(8, '¿Cual es el videojuego mas vendido de la historia?', 1, 2),
(9, '¿Que dia es celebrado como el dia internacional de los gamers?', 1, 3),
(10, '¿Quien creo a Mario Bros?', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `texto` varchar(120) NOT NULL,
  `correcta` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `pregunta_id`, `texto`, `correcta`, `puntaje`) VALUES
(1, 1, 'Fornite', 1, 100),
(2, 1, 'LOL', 0, 10),
(3, 1, 'Minecraft', 0, 10),
(4, 1, 'CSGO', 0, 10),
(5, 6, 'Charmander', 0, 10),
(6, 6, 'Evee', 0, 10),
(7, 6, 'Pikachu', 1, 100),
(8, 6, 'Vaporeon', 0, 10),
(9, 7, 'Peach', 1, 100),
(10, 7, 'Wendy', 0, 10),
(11, 7, 'Daisy', 0, 10),
(12, 7, 'Rosalina', 0, 10),
(13, 8, 'Tetris', 1, 100),
(14, 8, 'Fifa', 0, 10),
(15, 8, 'Minecraft', 0, 10),
(16, 8, 'GTA 5', 0, 10),
(17, 2, 'Sega Genesis', 0, 10),
(18, 2, 'Playstation 1', 0, 10),
(19, 2, 'Playstation 2', 1, 100),
(20, 2, 'Playstation 3', 0, 10),
(21, 3, '1969', 0, 10),
(22, 3, '1972', 1, 100),
(23, 3, '1977', 0, 10),
(24, 3, '1982', 0, 10),
(25, 4, '1990', 0, 10),
(26, 4, '1991', 0, 10),
(27, 4, '1992', 1, 100),
(28, 4, '1993', 0, 10),
(29, 5, 'Azul', 1, 100),
(30, 5, 'Violeta', 0, 10),
(31, 5, 'Rojo', 0, 10),
(32, 5, 'Verde', 0, 10),
(33, 9, '10 de junio', 0, 10),
(34, 9, '29 de agosto', 1, 100),
(35, 9, '27 de octubre', 0, 10),
(36, 9, '28 de octubre', 0, 10),
(37, 10, 'John Carmack', 0, 10),
(38, 10, 'Sid Meier', 0, 10),
(39, 10, 'Hideo Kojima', 0, 10),
(40, 10, 'Shigeru Miyamoto', 1, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tema` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `tema`, `remember_token`) VALUES
(7, 'Prueba', 'Prueba', 'prueba@gmail.com', '$2y$10$ZVY6tBBxxA4pJWhAaX/rcOhcxU.zvU/dY0oN2wkQwr5JnohAM1utG', 0, '9UfpfhdjxyF0HlLun6zyeWDZZQcD8z0wANuXDocL3ES4mCYsr0S2phiFkdoD');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partidas_foranea_1` (`usuario_id`),
  ADD KEY `partidas_foranea_2` (`categoria_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `partidas_foranea_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `partidas_foranea_2` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_foranea_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_foranea_1` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
