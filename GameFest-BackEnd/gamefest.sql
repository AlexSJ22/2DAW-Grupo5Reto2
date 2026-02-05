-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2026 a las 15:58:47
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
-- Base de datos: `gamefest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `titulo` varchar(160) NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `plazasLibres` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `titulo`, `tipo`, `fecha`, `hora`, `plazasLibres`, `imagen`, `descripcion`, `created_by`, `created_at`) VALUES
(1, 'Inauguración oficial GameFest 2025', 'Presentación', '2025-02-13', '10:00:00', 300, 'inauguracion-oficial-gamefest-2025.jpg', 'Acto de apertura con bienvenida, explicación del programa del fin de semana y presentación de las actividades principales.', 1, '2026-02-04 14:56:11'),
(2, 'Charla: Historia del videojuego moderno', 'Charla', '2025-02-13', '11:30:00', 150, 'charla-historia-videojuego-moderno.jpg', 'Recorrido por hitos, plataformas y géneros que han marcado la evolución del videojuego desde los 90 hasta hoy.', 1, '2026-02-04 14:56:11'),
(3, 'Taller de Pixel Art', 'Taller', '2025-02-13', '13:00:00', 40, 'taller-pixel-art.png', 'Taller práctico de pixel art: paletas, sombreado, tiles y animación básica orientada a juegos 2D.', 1, '2026-02-04 14:56:11'),
(4, 'Mesa redonda: Mujeres en la industria del videojuego', 'Mesa Redonda', '2025-02-13', '15:00:00', 120, 'mesa-redonda-mujeres-industria-videojuego.jpg', 'Debate con profesionales del sector sobre referentes, barreras, oportunidades y experiencias en equipos de desarrollo.', 1, '2026-02-04 14:56:11'),
(5, 'Exhibición de consolas retro', 'Exhibición', '2025-02-13', '16:30:00', 200, 'exhibicion-consolas-retro.jpg', 'Zona de exposición y juego libre con consolas clásicas, periféricos y selección de títulos históricos.', 1, '2026-02-04 14:56:11'),
(6, 'Charla: Narrativa interactiva en videojuegos', 'Charla', '2025-02-13', '18:00:00', 100, 'charla-narrativa-interactiva-videojuegos.png', 'Cómo se diseñan decisiones, ramas y consecuencias: estructuras narrativas y ejemplos de narrativa emergente.', 1, '2026-02-04 14:56:11'),
(7, 'Torneo de Rocket League', 'Torneo', '2025-02-13', '19:30:00', 32, 'torneo-rocket-league-esports.jpg', 'Competición con formato eliminatorio. Check-in 15 minutos antes. Premios para el top 3.', 1, '2026-02-04 14:56:11'),
(8, 'Workshop: Diseño de niveles', 'Taller', '2025-02-13', '21:00:00', 25, 'taller-diseno-de-niveles.png', 'Diseño práctico de niveles: ritmo, dificultad, señalización, métricas básicas y playtesting iterativo.', 1, '2026-02-04 14:56:11'),
(9, 'Afterwork Gaming & Networking', 'Networking', '2025-02-13', '22:30:00', 80, 'afterwork-gaming-networking.jpg', 'Encuentro informal para hacer networking, compartir proyectos y conocer a gente del sector.', 1, '2026-02-04 14:56:11'),
(10, 'Charla: El futuro del cloud gaming', 'Charla', '2025-02-14', '10:00:00', 140, 'charla-futuro-cloud-gaming.png', 'Streaming, latencia, modelos de negocio y retos técnicos. Qué es viable hoy y qué está por llegar.', 1, '2026-02-04 14:56:11'),
(11, 'Taller de Unreal Engine 5', 'Taller', '2025-02-14', '11:30:00', 50, 'taller-unreal-engine-5.jpg', 'Introducción práctica: creación de escena, iluminación, Blueprints y primeros pasos hacia un prototipo jugable.', 1, '2026-02-04 14:56:11'),
(12, 'Torneo de Valorant', 'Torneo', '2025-02-14', '13:30:00', 32, 'torneo-valorant-esports.jpg', 'Torneo por equipos con bracket. Se publican reglas y emparejamientos al inicio de la sesión.', 1, '2026-02-04 14:56:11'),
(13, 'Mesa redonda: IA aplicada al gameplay', 'Mesa Redonda', '2025-02-14', '15:00:00', 110, 'mesa-redonda-ia-aplicada-al-gameplay.png', 'IA en NPCs, generación procedural y herramientas creativas: oportunidades, límites y buenas prácticas.', 1, '2026-02-04 14:56:11'),
(14, 'Charla: Monetización ética en videojuegos', 'Charla', '2025-02-14', '16:30:00', 90, 'charla-monetizacion-etica-videojuegos.jpg', 'Modelos sostenibles y responsables: transparencia, bienestar del jugador y ejemplos de diseño no agresivo.', 1, '2026-02-04 14:56:11'),
(15, 'Exhibición VR Experience', 'Exhibición', '2025-02-14', '18:00:00', 60, 'exhibicion-vr-experience.jpg', 'Zona VR con experiencias cortas por turnos. Recomendado reservar plaza y seguir indicaciones de seguridad.', 1, '2026-02-04 14:56:11'),
(16, 'Taller de Audio para Videojuegos', 'Taller', '2025-02-14', '19:30:00', 35, 'taller-audio-para-videojuegos.jpg', 'Diseño de sonido: FX, música adaptativa, mezcla básica y pautas para integrar audio en motores de juego.', 1, '2026-02-04 14:56:11'),
(17, 'Competición de Speedrun', 'Competición', '2025-02-14', '21:00:00', 20, 'competicion-speedrun-esports.jpg', 'Competición contrarreloj. Se valoran ejecución, consistencia y cumplimiento de reglas de categoría.', 1, '2026-02-04 14:56:11'),
(18, 'Noche Indie Showcase', 'Exhibición', '2025-02-14', '22:30:00', 100, 'noche-indie-showcase.jpg', 'Presentación de proyectos indie con demos jugables y feedback para los equipos participantes.', 1, '2026-02-04 14:56:11'),
(19, 'Charla: Desarrollo de videojuegos educativos', 'Charla', '2025-02-15', '10:00:00', 120, 'charla-videojuegos-educativos.jpg', 'Diseño de juegos con objetivos pedagógicos: motivación, evaluación, accesibilidad y enfoque por competencias.', 1, '2026-02-04 14:56:11'),
(20, 'Torneo de Mario Kart 8 Deluxe', 'Torneo', '2025-02-15', '11:30:00', 48, 'torneo-mario-kart-8-deluxe.jpg', 'Torneo por rondas con clasificación. Perfecto para todos los niveles: divertido y competitivo a la vez.', 1, '2026-02-04 14:56:11'),
(21, 'Taller de Game Design Document', 'Taller', '2025-02-15', '13:00:00', 30, 'taller-game-design-document.jpg', 'Cómo redactar un GDD útil: visión, mecánicas, loops, economía, riesgos, alcance y plan de iteración.', 1, '2026-02-04 14:56:11'),
(22, 'Mesa redonda: El futuro del eSports', 'Mesa Redonda', '2025-02-15', '14:30:00', 100, 'mesa-redonda-futuro-esports.jpg', 'Ligas, organización, comunidad y negocio: mirada 360º con debate entre perfiles competitivos y producción.', 1, '2026-02-04 14:56:11'),
(23, 'Charla: UX y accesibilidad en videojuegos', 'Charla', '2025-02-15', '16:00:00', 80, 'charla-ux-accesibilidad-videojuegos.jpg', 'Diseño centrado en el jugador: legibilidad, mapeo de controles, opciones de accesibilidad y testing.', 1, '2026-02-04 14:56:11'),
(24, 'Exhibición de arcades clásicos', 'Exhibición', '2025-02-15', '17:30:00', 150, 'exhibicion-arcades-clasicos.jpg', 'Zona arcade con máquinas recreativas clásicas, desafíos rápidos y ranking de puntuaciones.', 1, '2026-02-04 14:56:11'),
(25, 'Taller de optimización gráfica', 'Taller', '2025-02-15', '19:00:00', 40, 'taller-optimizacion-grafica.png', 'Optimización de rendimiento: perfiles, draw calls, LODs, texturas, sombras y estrategias de escalado.', 1, '2026-02-04 14:56:11'),
(26, 'Competición de Cosplay', 'Competición', '2025-02-15', '20:30:00', 60, 'competicion-cosplay.jpg', 'Concurso de cosplay con jurado. Se valora caracterización, confección, puesta en escena y originalidad.', 1, '2026-02-04 14:56:11'),
(27, 'Clausura GameFest 2025', 'Presentación', '2025-02-15', '22:00:00', 300, 'clausura-gamefest-2025.jpg', 'Cierre con resumen del fin de semana, agradecimientos, entrega de premios y anuncio de la próxima edición.', 1, '2026-02-04 14:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `genero` varchar(80) NOT NULL,
  `plataformas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`plataformas`)),
  `imagen` varchar(255) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id`, `titulo`, `genero`, `plataformas`, `imagen`, `descripcion`) VALUES
(1, 'Minecraft', 'Sandbox', '[\"PC\", \"Consolas\", \"Móviles\"]', 'minecraft.jpg', 'Construcción y exploración en mundo abierto. Recolecta recursos, crea herramientas y construye lo que imagines.'),
(2, 'Fortnite', 'Battle Royale', '[\"PC\", \"Consolas\", \"Móviles\"]', 'fortnite.jpg', 'Acción competitiva con eventos en directo y modos variados. Construcción, combate y personalización.'),
(3, 'Apex Legends', 'Battle Royale', '[\"PC\", \"Consolas\"]', 'apex_legends.jpg', 'Shooter por escuadras con leyendas y habilidades. Ritmo rápido, movilidad y juego en equipo.'),
(4, 'League of Legends', 'MOBA', '[\"PC\"]', 'league_of_legends.jpg', 'Estrategia 5v5 con campeones y roles. Control de objetivos, coordinación y dominio del mapa.'),
(5, 'VALORANT', 'Shooter táctico', '[\"PC\"]', 'valorant.jpg', 'Shooter 5v5 con agentes y habilidades. Precisión, control de economía y estrategia por rondas.'),
(6, 'Counter-Strike 2', 'Shooter competitivo', '[\"PC\"]', 'cs2.jpg', 'Shooter táctico por rondas. Economía, utilidad, coordinación y ejecuciones de equipo.'),
(7, 'Call of Duty', 'Shooter', '[\"PC\", \"Consolas\"]', 'call_of_duty.jpg', 'Acción FPS con multijugador competitivo, progresión y modos rápidos centrados en reflejos y mapa.'),
(8, 'Destiny 2', 'Acción / Looter Shooter', '[\"PC\", \"Consolas\"]', 'destiny2.jpg', 'Cooperativo y PvP en un universo persistente. Misiones, raids y progresión basada en equipo.'),
(9, 'Elden Ring', 'RPG de acción', '[\"PC\", \"Consolas\"]', 'elden_ring.jpg', 'Exploración en mundo abierto, builds y combates exigentes. Narrativa ambiental y descubrimiento constante.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `role`, `created_at`) VALUES
(1, 'admin', 'admin@gamefest.local', '$2y$10$vykd6mw6jLBVp1CbWCu9i.SdooaGAZVwzhWFRBm7dDMmE/tzVZcuq', 'ADMIN', '2026-02-04 14:56:11'),
(2, 'alumno', 'alumno@gamefest.local', '$2y$10$/l17B/EvpfsM78E83rm7j.Eh6jrIJgbGKFKDItxmjlPjuGkIH3Dny', 'USER', '2026-02-04 14:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_events`
--

CREATE TABLE `user_events` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_events`
--

INSERT INTO `user_events` (`user_id`, `event_id`, `created_at`) VALUES
(2, 2, '2026-02-04 14:56:11'),
(2, 11, '2026-02-04 14:56:11'),
(2, 20, '2026-02-04 14:56:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_events_created_by` (`created_by`),
  ADD KEY `idx_events_fecha_hora` (`fecha`,`hora`);

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `user_events`
--
ALTER TABLE `user_events`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `idx_user_events_user` (`user_id`),
  ADD KEY `idx_user_events_event` (`event_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `fk_events_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_events`
--
ALTER TABLE `user_events`
  ADD CONSTRAINT `fk_user_events_event` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_events_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
