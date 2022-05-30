-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2022 a las 18:53:18
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clasesuao`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id_asistencias` int(20) NOT NULL,
  `fk_evento` int(20) DEFAULT NULL,
  `fk_cursos` int(20) DEFAULT NULL,
  `fk_usuarios` int(20) DEFAULT NULL,
  `insersiones` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id_asistencias`, `fk_evento`, `fk_cursos`, `fk_usuarios`, `insersiones`) VALUES
(1, 1, 0, 3, '2022-05-07 21:51:06'),
(2, 1, 0, 5, '2022-05-19 20:29:35'),
(3, 1, 0, 0, '2022-05-19 20:43:39'),
(4, 2, 1, 0, '2022-05-20 15:55:17'),
(9, 1, 0, 4, '2022-05-21 18:17:56'),
(10, 1, 1, 4, '2022-05-21 20:35:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curs` int(20) NOT NULL,
  `nombre_curso` varchar(20) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `dia` varchar(20) NOT NULL,
  `horaInico` varchar(20) NOT NULL,
  `horaFin` varchar(20) NOT NULL,
  `primParcial` varchar(20) NOT NULL,
  `segParcial` varchar(20) NOT NULL,
  `terParcial` varchar(20) NOT NULL,
  `novedades` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curs`, `nombre_curso`, `descripcion`, `duracion`, `dia`, `horaInico`, `horaFin`, `primParcial`, `segParcial`, `terParcial`, `novedades`) VALUES
(0, 'videojuegos', 'ni idea', '1 abr.-9 abr', 'Miercoles', '8:30', '10:00', '04/28/22', '05/10/22', '06/06/22', '1'),
(1, 'gestion', 'gestion de sistemas', 'Apr20 - May20', 'martes', '14:00', '17:00', '04/30/22', '04/22/22', '04/25/22', '1'),
(19, 'HCI', 'Interaccion Humano Comput', '1 may.-20 may.', 'Martes', '10:0', '10:0', '02/25/22', '04/06/22', '05/25/22', '1'),
(20, 'redes', 'redesby servicios multime', '1 may.-3 jun.', 'Martes', '7:0', '7:0', '02/28/22', '04/06/22', '05/24/22', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_eventos` int(20) NOT NULL,
  `titulos_eventos` varchar(100) NOT NULL,
  `descripciones_eventos` varchar(500) NOT NULL,
  `fechaHora_eventos` datetime NOT NULL,
  `lugar_eventos` varchar(200) NOT NULL,
  `fk_usuarios` int(11) NOT NULL,
  `fk_cursos` int(11) NOT NULL,
  `inserciones` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_eventos`, `titulos_eventos`, `descripciones_eventos`, `fechaHora_eventos`, `lugar_eventos`, `fk_usuarios`, `fk_cursos`, `inserciones`) VALUES
(1, 'Excursión - Empresa de videojuegos en Cali', 'Iremos a una empresa de videojuegos ubicada en Cali', '2022-05-31 16:00:00', 'Por ahi', 0, 0, '2022-05-07 21:45:21'),
(2, 'Presentación final', 'La presentación final de los estudiantes del curso de videojuegos  ', '2022-05-31 16:00:00', 'torreón 1 aulas4', 1, 0, '2022-05-13 21:18:37'),
(3, 'Charla sobre itil', 'Un experto nos va a exponer un caso de uso donde aplico ITIL V4.', '2022-05-13 23:18:55', 'Auditorio Yquinde', 7, 1, '2022-05-13 21:20:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id_novedad` int(20) NOT NULL,
  `titulos_novedad` varchar(100) NOT NULL,
  `descripciones_novedad` varchar(400) NOT NULL,
  `creador_novedad` int(20) NOT NULL,
  `curso_novedad` int(20) NOT NULL,
  `creacion_novedad` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id_novedad`, `titulos_novedad`, `descripciones_novedad`, `creador_novedad`, `curso_novedad`, `creacion_novedad`) VALUES
(1, 'Parcial Final', 'El parcial final quedó aplazado hasta nueva orden', 0, 0, '2022-05-07 21:34:18'),
(2, 'Practica en la sala de sistemas', 'Traer adelantado el sql que permita realizar un CRUD (Crear, Leer, Modificar, Eliminar) a una base de datos X', 7, 1, '2022-05-07 21:38:47'),
(6, 'trancon en la recta', 'hubo un accidente y hay mucho trancon', 4, 0, '2022-05-14 21:36:35'),
(7, 'no hay clase', 'les informo que debido a una reuni?n, la clase de hoy se cancela', 4, 0, '2022-05-14 21:38:04'),
(8, 'me retaron', 'hoy en el estacionamiento unos chicos llegaron y me retaron, yo les respondi, ahora estoy metido en una batalla de baile', 4, 1, '2022-05-14 21:42:21'),
(9, 'no podre ir a clase', 'tengo una cita medica', 13, 19, '2022-05-21 00:14:10'),
(10, 'aplazamiento parcial', 'el parcial se pospondra  una semana', 19, 20, '2022-05-21 12:12:17'),
(11, 'puto el que lo lea', 'jajaja sos puto', 0, 0, '2022-05-21 18:05:46'),
(12, 'puto el que lo lea', 'jajaja sos puto', 7, 1, '2022-05-21 20:33:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participaciones`
--

CREATE TABLE `participaciones` (
  `id_participacion` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participaciones`
--

INSERT INTO `participaciones` (`id_participacion`, `id_user`, `id_curso`) VALUES
(1, 4, 0),
(2, 13, 0),
(3, 3, 0),
(4, 4, 1),
(5, 0, 0),
(6, 7, 1),
(7, 12, 1),
(8, 13, 1),
(11, 7, 19),
(12, 3, 19),
(13, 13, 19),
(14, 18, 19),
(23, 8, 20),
(24, 12, 20),
(25, 4, 20),
(26, 18, 20),
(27, 4, 19),
(28, 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(20) NOT NULL,
  `cedulas` varchar(20) NOT NULL,
  `nombre` text NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `facultad` varchar(45) NOT NULL,
  `programa` varchar(70) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `cedulas`, `nombre`, `apellidos`, `facultad`, `programa`, `usuario`, `contrasena`, `rol`) VALUES
(0, '22222222', 'andres', 'gallego', 'comunicacion', 'comunicacion social', 'andres.gallego', '12345', 'Docente'),
(1, '123456789', 'juan', 'bolanos', 'Ingenieria', 'Ingeniería multimedia', 'admin1', '12345', 'admin'),
(3, '123', 'andres', 'santiago', 'economia', 'mercadeo', 'andresSa', '123', 'Estudiante'),
(4, '10057444415', 'camilo', 'bolanos', 'ingenieria', 'ingenieria multimedia', 'camilo345', '12345', 'Estudiante'),
(5, '1010101010', 'juan jose', 'cardona', 'ingenieria', 'multimedia', 'jose.cardona', '22222222', 'Docente'),
(6, '382837272', 'david', 'castro', 'ingenieria', 'informatica', 'dacastro', '12345', 'Docente'),
(7, '11111111', 'andres fernando', 'solano', 'ingenieria', 'informatica', 'andres.solano', '1212', 'Docente'),
(8, '123456789', 'vicente', 'pradilla', 'ingenieria', 'ing.telecomunicaciones', 'vicente.prad', '123', 'Docente'),
(12, '10382828281', 'nicolas', 'bedoya', 'ingenieria', 'multimedia', 'nicolas.bedoya', '12345', 'Estudiante'),
(13, '183822919', 'laura', 'valencia', 'comunicacion', 'literatura', 'lava', '12345', 'Estudiante'),
(18, '158294385', 'angie', 'salazar', 'ingenieria', 'ingenieria inform?tica', 'angie.salazar', '12345', 'Estudiante'),
(19, '42749138', 'Zeida', 'Solarte', 'Ingenieria', 'Ingenieria electronica', 'zeida.solarte', '12345', 'Docente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id_asistencias`),
  ADD KEY `fk_cursos` (`fk_cursos`),
  ADD KEY `fk_usuarios` (`fk_usuarios`),
  ADD KEY `fk_evento` (`fk_evento`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curs`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_eventos`),
  ADD KEY `fk_usuarios` (`fk_usuarios`),
  ADD KEY `fk_cursos` (`fk_cursos`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id_novedad`),
  ADD KEY `fk_usuarios` (`creador_novedad`),
  ADD KEY `fk_cursos` (`curso_novedad`);

--
-- Indices de la tabla `participaciones`
--
ALTER TABLE `participaciones`
  ADD PRIMARY KEY (`id_participacion`),
  ADD KEY `test` (`id_user`),
  ADD KEY `test2` (`id_curso`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id_asistencias` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curs` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_eventos` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id_novedad` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `participaciones`
--
ALTER TABLE `participaciones`
  MODIFY `id_participacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`fk_cursos`) REFERENCES `cursos` (`id_curs`),
  ADD CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `asistencias_ibfk_3` FOREIGN KEY (`fk_evento`) REFERENCES `eventos` (`id_eventos`);

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`fk_cursos`) REFERENCES `cursos` (`id_curs`);

--
-- Filtros para la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD CONSTRAINT `novedades_ibfk_1` FOREIGN KEY (`creador_novedad`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `novedades_ibfk_2` FOREIGN KEY (`curso_novedad`) REFERENCES `cursos` (`id_curs`);

--
-- Filtros para la tabla `participaciones`
--
ALTER TABLE `participaciones`
  ADD CONSTRAINT `test` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `test2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
