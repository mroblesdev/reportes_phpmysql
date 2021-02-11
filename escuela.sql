-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-02-2021 a las 15:52:02
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int NOT NULL,
  `matricula` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `id_grado` int NOT NULL,
  `activo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `edad`, `matricula`, `correo`, `id_grado`, `activo`) VALUES
(1, 'Marko Robles', 20, '3141596384', 'markorobles@mail.com', 1, 1),
(2, 'Juan Perez', 25, '9638527410', 'juan.perez@mail.com', 2, 1),
(3, 'Zara Guerrero', 18, '82272666', 'zara.guerrero@mail.com', 1, 1),
(4, 'Aldo Hidalgo', 28, '70106509', 'aldo.hidalgo@mail.com', 2, 1),
(5, 'Julia Pineda', 37, '36129106', 'julia.pineda@mail.com', 1, 1),
(6, 'Aldo Leon', 18, '23973536', 'aldo.leon@mail.com', 4, 1),
(7, 'Juan Aguilar', 28, '71939794', 'juan.aguilar@mail.com', 5, 1),
(8, 'Veronica Benitez', 34, '15573952', 'veronica.benitez@mail.com', 3, 1),
(9, 'Veronica Perez', 26, '50036382', 'veronica.perez@mail.com', 5, 1),
(10, 'Karol Bravo', 27, '80214664', 'karol.bravo@mail.com', 1, 1),
(11, 'Marco Dominguez', 19, '49388690', 'marco.dominguez@mail.com', 5, 1),
(12, 'Norberto Mejia', 20, '42200659', 'norberto.mejia@mail.com', 1, 1),
(13, 'Pedro Alvarez', 19, '48711374', 'pedro.alvarez@mail.com', 5, 1),
(14, 'Federico Leon', 31, '74300762', 'federico.leon@mail.com', 2, 1),
(15, 'Aldo Fonseca', 32, '44913263', 'aldo.fonseca@mail.com', 1, 1),
(16, 'Abigail Aguilar', 28, '30910707', 'abigail.aguilar@mail.com', 3, 1),
(17, 'Federico Dominguez', 34, '12415718', 'federico.dominguez@mail.com', 1, 1),
(18, 'Veronica Herrera', 39, '46315068', 'veronica.herrera@mail.com', 1, 1),
(19, 'Hector Casas', 32, '53842888', 'hector.casas@mail.com', 3, 1),
(20, 'Zara Melchor', 27, '82496927', 'zara.melchor@mail.com', 2, 1),
(21, 'Rodrigo Juarez', 19, '88762882', 'rodrigo.juarez@mail.com', 4, 1),
(22, 'Norberto Castro', 24, '18657697', 'norberto.castro@mail.com', 2, 1),
(23, 'Rodrigo Baltazar', 26, '42866602', 'rodrigo.baltazar@mail.com', 1, 1),
(24, 'Rodrigo Infante', 35, '78594446', 'rodrigo.infante@mail.com', 1, 1),
(25, 'Carlos Fernadez', 30, '73133109', 'carlos.fernadez@mail.com', 1, 1),
(26, 'Abigail Jimenez', 19, '54057538', 'abigail.jimenez@mail.com', 2, 1),
(27, 'Daniel Juarez', 22, '36487802', 'daniel.juarez@mail.com', 2, 1),
(28, 'Luis Herrera', 32, '81926512', 'luis.herrera@mail.com', 2, 1),
(29, 'Karol Guerrero', 35, '65062550', 'karol.guerrero@mail.com', 5, 1),
(30, 'Federico Casas', 27, '67268379', 'federico.casas@mail.com', 3, 1),
(31, 'Wenceslao Melchor', 25, '61812310', 'wenceslao.melchor@mail.com', 5, 1),
(32, 'Sandra Bravo', 18, '67882198', 'sandra.bravo@mail.com', 5, 1),
(33, 'Gerardo Aguilar', 36, '29640291', 'gerardo.aguilar@mail.com', 2, 1),
(34, 'Berta Herrera', 30, '54765918', 'berta.herrera@mail.com', 5, 1),
(35, 'Luis Leon', 32, '18097321', 'luis.leon@mail.com', 4, 1),
(36, 'Norberto Perez', 18, '79839574', 'norberto.perez@mail.com', 5, 1),
(37, 'Tamara Casas', 36, '20389492', 'tamara.casas@mail.com', 2, 1),
(38, 'Veronica Infante', 19, '56695419', 'veronica.infante@mail.com', 2, 1),
(39, 'Federico Castro', 27, '18353808', 'federico.castro@mail.com', 5, 1),
(40, 'Aldo Casas', 39, '73495109', 'aldo.casas@mail.com', 1, 1),
(41, 'Juan Salas', 19, '80847934', 'juan.salas@mail.com', 5, 1),
(42, 'Norberto Leon', 28, '18941478', 'norberto.leon@mail.com', 5, 1),
(43, 'Aldo Baltazar', 38, '24265560', 'aldo.baltazar@mail.com', 5, 1),
(44, 'Daniel Juarez', 22, '38854551', 'daniel.juarez@mail.com', 2, 1),
(45, 'Carlos Dominguez', 36, '34867376', 'carlos.dominguez@mail.com', 4, 1),
(46, 'Wenceslao Lopez', 34, '73060930', 'wenceslao.lopez@mail.com', 5, 1),
(47, 'Omar Casas', 24, '26575579', 'omar.casas@mail.com', 5, 1),
(48, 'Carlos Casas', 38, '97128673', 'carlos.casas@mail.com', 4, 1),
(49, 'Juan Martinez', 23, '69575639', 'juan.martinez@mail.com', 2, 1),
(50, 'Joaquin Herrera', 25, '73784388', 'joaquin.herrera@mail.com', 3, 1),
(51, 'Daniel Pineda', 37, '14249244', 'daniel.pineda@mail.com', 3, 1),
(52, 'Sandra Herrera', 22, '27717714', 'sandra.herrera@mail.com', 2, 1),
(53, 'Luis Infante', 37, '20614329', 'luis.infante@mail.com', 3, 1),
(54, 'Omar Castro', 19, '49998739', 'omar.castro@mail.com', 2, 1),
(55, 'Luis Baltazar', 26, '70650321', 'luis.baltazar@mail.com', 5, 1),
(56, 'Pedro Casas', 31, '35596374', 'pedro.casas@mail.com', 3, 1),
(57, 'Isidro Dominguez', 19, '85552543', 'isidro.dominguez@mail.com', 1, 1),
(58, 'Aldo Hidalgo', 31, '51458500', 'aldo.hidalgo@mail.com', 2, 1),
(59, 'Omar Hidalgo', 21, '65583077', 'omar.hidalgo@mail.com', 3, 1),
(60, 'Wenceslao Pineda', 28, '80635513', 'wenceslao.pineda@mail.com', 1, 1),
(61, 'Isidro Pineda', 39, '32445581', 'isidro.pineda@mail.com', 4, 1),
(62, 'Berta Gonzalezz', 34, '40605399', 'berta.gonzalezz@mail.com', 3, 1),
(63, 'Hector Pineda', 39, '45098361', 'hector.pineda@mail.com', 1, 1),
(64, 'Omar Rosales', 32, '58079731', 'omar.rosales@mail.com', 5, 1),
(65, 'Joaquin Casas', 38, '19309999', 'joaquin.casas@mail.com', 2, 1),
(66, 'Federico Pineda', 31, '19621950', 'federico.pineda@mail.com', 1, 1),
(67, 'Isidro Pineda', 28, '61228927', 'isidro.pineda@mail.com', 1, 1),
(68, 'Berta Dominguez', 33, '15125836', 'berta.dominguez@mail.com', 5, 1),
(69, 'Abigail Lopez', 24, '22925319', 'abigail.lopez@mail.com', 5, 1),
(70, 'Wenceslao Casas', 30, '14920824', 'wenceslao.casas@mail.com', 3, 1),
(71, 'Karol Martinez', 33, '88524735', 'karol.martinez@mail.com', 1, 1),
(72, 'Wenceslao Alvarez', 21, '61255484', 'wenceslao.alvarez@mail.com', 1, 1),
(73, 'Maria Jimenez', 24, '33815481', 'maria.jimenez@mail.com', 4, 1),
(74, 'Isidro Juarez', 38, '57638600', 'isidro.juarez@mail.com', 1, 1),
(75, 'Tamara Castro', 36, '16889992', 'tamara.castro@mail.com', 3, 1),
(76, 'Norberto Pineda', 23, '12567180', 'norberto.pineda@mail.com', 3, 1),
(77, 'Ernesto Jimenez', 32, '38646043', 'ernesto.jimenez@mail.com', 5, 1),
(78, 'Joaquin Herrera', 20, '72379646', 'joaquin.herrera@mail.com', 4, 1),
(79, 'Veronica Jimenez', 31, '41330396', 'veronica.jimenez@mail.com', 3, 1),
(80, 'Pedro Hidalgo', 18, '97150134', 'pedro.hidalgo@mail.com', 4, 1),
(81, 'Joaquin Benitez', 26, '29697068', 'joaquin.benitez@mail.com', 5, 1),
(82, 'Berta Benitez', 18, '68357657', 'berta.benitez@mail.com', 4, 1),
(83, 'Joaquin Perez', 18, '18766238', 'joaquin.perez@mail.com', 5, 1),
(84, 'Hector Mejia', 26, '67388254', 'hector.mejia@mail.com', 3, 1),
(85, 'Aldo Fonseca', 33, '27149374', 'aldo.fonseca@mail.com', 2, 1),
(86, 'Abigail Bravo', 24, '22838741', 'abigail.bravo@mail.com', 1, 1),
(87, 'Juan Herrera', 38, '22414030', 'juan.herrera@mail.com', 5, 1),
(88, 'Maria Infante', 26, '73778513', 'maria.infante@mail.com', 4, 1),
(89, 'Federico Melchor', 32, '21113422', 'federico.melchor@mail.com', 1, 1),
(90, 'Juan Hidalgo', 27, '23546214', 'juan.hidalgo@mail.com', 4, 1),
(91, 'Wenceslao Castro', 22, '26726239', 'wenceslao.castro@mail.com', 4, 1),
(92, 'Veronica Gonzalezz', 35, '33909625', 'veronica.gonzalezz@mail.com', 2, 1),
(93, 'Maria Bravo', 30, '58076850', 'maria.bravo@mail.com', 4, 1),
(94, 'Veronica Pineda', 30, '37642677', 'veronica.pineda@mail.com', 5, 1),
(95, 'Wenceslao Herrera', 36, '39506335', 'wenceslao.herrera@mail.com', 4, 1),
(96, 'Abigail Infante', 19, '37862282', 'abigail.infante@mail.com', 5, 1),
(97, 'Veronica Guerrero', 31, '46568539', 'veronica.guerrero@mail.com', 2, 1),
(98, 'Luis Leon', 38, '14605280', 'luis.leon@mail.com', 4, 1),
(99, 'Maria Martinez', 24, '42908274', 'maria.martinez@mail.com', 5, 1),
(100, 'Federico Mejia', 28, '85086315', 'federico.mejia@mail.com', 2, 1),
(101, 'Aldo Juarez', 18, '31067388', 'aldo.juarez@mail.com', 3, 1),
(102, 'Luis Juarez', 36, '20129418', 'luis.juarez@mail.com', 5, 1),
(103, 'Tamara Benitez', 29, '94395138', 'tamara.benitez@mail.com', 2, 2),
(104, 'Hector Aguilar', 20, '99041637', 'hector.aguilar@mail.com', 5, 3),
(105, 'Norberto Mejia', 18, '40215645', 'norberto.mejia@mail.com', 3, 4),
(106, 'Julia Fernadez', 39, '72447017', 'julia.fernadez@mail.com', 2, 5),
(107, 'Gerardo Alvarez', 27, '43209085', 'gerardo.alvarez@mail.com', 5, 6),
(108, 'Zara Aguilar', 38, '69028044', 'zara.aguilar@mail.com', 2, 7),
(109, 'Norberto Juarez', 29, '68985372', 'norberto.juarez@mail.com', 3, 8),
(110, 'Carlos Alvarez', 21, '25828931', 'carlos.alvarez@mail.com', 5, 9),
(111, 'Joaquin Aguilar', 24, '44422981', 'joaquin.aguilar@mail.com', 5, 10),
(112, 'Omar Rosales', 33, '20747782', 'omar.rosales@mail.com', 4, 11),
(113, 'Zara Mejia', 28, '81860882', 'zara.mejia@mail.com', 3, 12),
(114, 'Carlos Benitez', 19, '22277255', 'carlos.benitez@mail.com', 3, 13),
(115, 'Veronica Bravo', 32, '40828262', 'veronica.bravo@mail.com', 2, 14),
(116, 'Wenceslao Herrera', 33, '23028745', 'wenceslao.herrera@mail.com', 5, 15),
(117, 'Isidro Fonseca', 24, '43140061', 'isidro.fonseca@mail.com', 2, 16),
(118, 'Maria Infante', 23, '26174116', 'maria.infante@mail.com', 4, 17),
(119, 'Isidro Herrera', 29, '75817229', 'isidro.herrera@mail.com', 4, 18),
(120, 'Veronica Aguilar', 18, '81347444', 'veronica.aguilar@mail.com', 4, 19),
(121, 'Carlos Perez', 19, '64871743', 'carlos.perez@mail.com', 2, 20),
(122, 'Julia Fonseca', 35, '75214386', 'julia.fonseca@mail.com', 2, 21),
(123, 'Julia Lopez', 38, '48433415', 'julia.lopez@mail.com', 5, 22),
(124, 'Ernesto Guerrero', 32, '73337526', 'ernesto.guerrero@mail.com', 5, 23),
(125, 'Tamara Melchor', 20, '31334697', 'tamara.melchor@mail.com', 4, 24),
(126, 'Aldo Perez', 38, '11977284', 'aldo.perez@mail.com', 1, 25),
(127, 'Hector Jimenez', 23, '39568522', 'hector.jimenez@mail.com', 1, 26),
(128, 'Pedro Dominguez', 22, '40740674', 'pedro.dominguez@mail.com', 4, 27),
(129, 'Omar Fernadez', 31, '82134331', 'omar.fernadez@mail.com', 4, 28),
(130, 'Norberto Dominguez', 34, '57522038', 'norberto.dominguez@mail.com', 5, 29),
(131, 'Marco Martinez', 21, '87145707', 'marco.martinez@mail.com', 3, 30),
(132, 'Julia Castro', 24, '67846524', 'julia.castro@mail.com', 2, 31),
(133, 'Rodrigo Herrera', 22, '86006369', 'rodrigo.herrera@mail.com', 1, 32),
(134, 'Ernesto Gonzalezz', 31, '77275173', 'ernesto.gonzalezz@mail.com', 2, 33),
(135, 'Veronica Juarez', 38, '12472828', 'veronica.juarez@mail.com', 2, 34),
(136, 'Julia Gonzalezz', 19, '85984175', 'julia.gonzalezz@mail.com', 3, 35),
(137, 'Maria Dominguez', 22, '68566080', 'maria.dominguez@mail.com', 1, 36),
(138, 'Omar Leon', 36, '77337525', 'omar.leon@mail.com', 5, 37),
(139, 'Omar Fonseca', 26, '37998601', 'omar.fonseca@mail.com', 4, 38),
(140, 'Rodrigo Herrera', 20, '65335481', 'rodrigo.herrera@mail.com', 4, 39),
(141, 'Aldo Benitez', 36, '66120799', 'aldo.benitez@mail.com', 2, 40),
(142, 'Federico Castro', 39, '86077770', 'federico.castro@mail.com', 2, 41),
(143, 'Federico Guerrero', 35, '94458162', 'federico.guerrero@mail.com', 1, 42),
(144, 'Gerardo Melchor', 29, '29840083', 'gerardo.melchor@mail.com', 1, 43),
(145, 'Tamara Infante', 28, '67799942', 'tamara.infante@mail.com', 4, 44),
(146, 'Wenceslao Rosales', 28, '41040330', 'wenceslao.rosales@mail.com', 3, 45),
(147, 'Norberto Bravo', 31, '87390677', 'norberto.bravo@mail.com', 2, 46),
(148, 'Luis Gonzalezz', 33, '45079009', 'luis.gonzalezz@mail.com', 1, 47),
(149, 'Ernesto Lopez', 27, '39362996', 'ernesto.lopez@mail.com', 4, 48),
(150, 'Rodrigo Aguilar', 21, '35248924', 'rodrigo.aguilar@mail.com', 3, 49),
(151, 'Julia Rosales', 38, '26300851', 'julia.rosales@mail.com', 2, 50),
(152, 'Tamara Salas', 22, '48981737', 'tamara.salas@mail.com', 1, 51),
(153, 'Berta Aguilar', 33, '25894142', 'berta.aguilar@mail.com', 2, 52),
(154, 'Juan Mejia', 38, '74795633', 'juan.mejia@mail.com', 4, 53),
(155, 'Juan Perez', 23, '72613350', 'juan.perez@mail.com', 4, 54),
(156, 'Norberto Gonzalezz', 38, '15942567', 'norberto.gonzalezz@mail.com', 1, 55),
(157, 'Rodrigo Hidalgo', 35, '22121647', 'rodrigo.hidalgo@mail.com', 5, 56),
(158, 'Wenceslao Salas', 22, '91465981', 'wenceslao.salas@mail.com', 3, 57),
(159, 'Aldo Salas', 26, '88871391', 'aldo.salas@mail.com', 3, 58),
(160, 'Aldo Bravo', 38, '40584885', 'aldo.bravo@mail.com', 4, 59),
(161, 'Daniel Casas', 18, '82055305', 'daniel.casas@mail.com', 4, 60),
(162, 'Marco Juarez', 34, '67165913', 'marco.juarez@mail.com', 1, 61),
(163, 'Tamara Dominguez', 30, '68152888', 'tamara.dominguez@mail.com', 2, 62),
(164, 'Joaquin Martinez', 19, '37479650', 'joaquin.martinez@mail.com', 5, 63),
(165, 'Daniel Guerrero', 26, '88122081', 'daniel.guerrero@mail.com', 4, 64),
(166, 'Maria Infante', 32, '26408121', 'maria.infante@mail.com', 2, 65),
(167, 'Ernesto Jimenez', 34, '77582528', 'ernesto.jimenez@mail.com', 4, 66),
(168, 'Marco Castro', 38, '75062135', 'marco.castro@mail.com', 4, 67),
(169, 'Maria Juarez', 22, '55618316', 'maria.juarez@mail.com', 3, 68),
(170, 'Daniel Herrera', 27, '23283087', 'daniel.herrera@mail.com', 3, 69),
(171, 'Isidro Jimenez', 19, '39080879', 'isidro.jimenez@mail.com', 1, 70),
(172, 'Wenceslao Leon', 33, '65417693', 'wenceslao.leon@mail.com', 2, 71),
(173, 'Norberto Alvarez', 18, '81438457', 'norberto.alvarez@mail.com', 1, 72),
(174, 'Norberto Rosales', 38, '23756581', 'norberto.rosales@mail.com', 2, 73),
(175, 'Aldo Herrera', 23, '83552521', 'aldo.herrera@mail.com', 4, 74),
(176, 'Julia Dominguez', 37, '40553868', 'julia.dominguez@mail.com', 2, 75),
(177, 'Juan Bravo', 39, '46694624', 'juan.bravo@mail.com', 5, 76),
(178, 'Pedro Herrera', 34, '35360749', 'pedro.herrera@mail.com', 3, 77),
(179, 'Karol Salas', 28, '80338701', 'karol.salas@mail.com', 4, 78),
(180, 'Federico Infante', 26, '44437328', 'federico.infante@mail.com', 2, 79),
(181, 'Aldo Melchor', 39, '93766118', 'aldo.melchor@mail.com', 1, 80),
(182, 'Tamara Aguilar', 32, '39793357', 'tamara.aguilar@mail.com', 1, 81),
(183, 'Daniel Alvarez', 20, '45162963', 'daniel.alvarez@mail.com', 3, 82),
(184, 'Berta Castro', 38, '31797651', 'berta.castro@mail.com', 5, 83),
(185, 'Aldo Dominguez', 22, '63048411', 'aldo.dominguez@mail.com', 2, 84),
(186, 'Norberto Casas', 35, '33437919', 'norberto.casas@mail.com', 1, 85),
(187, 'Hector Fernadez', 18, '36608897', 'hector.fernadez@mail.com', 5, 86),
(188, 'Wenceslao Infante', 18, '26136073', 'wenceslao.infante@mail.com', 1, 87),
(189, 'Abigail Perez', 39, '72459490', 'abigail.perez@mail.com', 4, 88),
(190, 'Joaquin Pineda', 26, '76537694', 'joaquin.pineda@mail.com', 2, 89),
(191, 'Pedro Bravo', 37, '70633799', 'pedro.bravo@mail.com', 2, 90),
(192, 'Omar Salas', 38, '13627418', 'omar.salas@mail.com', 5, 91),
(193, 'Gerardo Juarez', 32, '82724601', 'gerardo.juarez@mail.com', 4, 92),
(194, 'Aldo Jimenez', 19, '37078956', 'aldo.jimenez@mail.com', 2, 93),
(195, 'Marco Jimenez', 21, '57313345', 'marco.jimenez@mail.com', 3, 94),
(196, 'Karol Lopez', 18, '99922715', 'karol.lopez@mail.com', 1, 95),
(197, 'Karol Infante', 33, '24314835', 'karol.infante@mail.com', 3, 96),
(198, 'Federico Leon', 26, '19130675', 'federico.leon@mail.com', 1, 97),
(199, 'Sandra Baltazar', 35, '95842880', 'sandra.baltazar@mail.com', 2, 98),
(200, 'Juan Juarez', 22, '42213122', 'juan.juarez@mail.com', 1, 99),
(201, 'Pedro Baltazar', 33, '92658368', 'pedro.baltazar@mail.com', 1, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id` int NOT NULL,
  `grado` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `grado`) VALUES
(1, 'PRIMERO'),
(2, 'SEGUNDO'),
(3, 'TERCERO'),
(4, 'CUARTO'),
(5, 'QUINTO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_alumno_grado` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
