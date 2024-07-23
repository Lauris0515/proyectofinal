-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2024 a las 00:12:01
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
-- Base de datos: `vitalbot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(200) DEFAULT NULL,
  `respuestas` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `pregunta`, `respuestas`) VALUES
(1, '¿Qué servicios de atención médica domiciliaria ofrecen?', 'Ofrecemos una variedad de servicios, incluyendo visitas médicas, cuidados de enfermería, fisioterapia, terapia ocupacional, administración de medicamentos, cuidados paliativos y monitoreo de pacientes'),
(2, '¿Cómo puedo solicitar una cita para atención médica domiciliaria?', 'Puede solicitar una cita llamando a nuestro número de contacto, completando el formulario en nuestra página web o enviando un correo electrónico a nuestra dirección de contacto'),
(3, '¿Qué profesionales de la salud forman parte de su equipo?', 'Nuestro equipo está compuesto por médicos, enfermeras, fisioterapeutas, terapeutas ocupacionales y trabajadores sociales, todos ellos especializados en atención domiciliaria.'),
(4, '¿Cuáles son los horarios de atención para los servicios domiciliarios?', 'Nuestros servicios están disponibles las 24 horas del día, los 7 días de la semana.'),
(5, '¿La atención médica domiciliaria está cubierta por el seguro de salud?', 'Muchos seguros de salud cubren los servicios de atención médica domiciliaria. Le recomendamos que consulte con su proveedor de seguros para obtener detalles específicos sobre su cobertura.'),
(6, '¿Qué debo hacer si necesito atención médica de emergencia en casa?', 'Si necesita atención médica de emergencia, debe llamar inmediatamente a los servicios de emergencia de su localidad'),
(7, '¿Cómo se garantiza la calidad de la atención médica domiciliaria?', 'Garantizamos la calidad de nuestros servicios mediante la contratación de profesionales de salud calificados, evaluaciones regulares del desempeño y el uso de equipos médicos de alta calidad.'),
(8, '¿Puedo elegir al profesional de salud que me atienda en casa?', 'Siempre intentamos acomodar las preferencias de nuestros pacientes en la medida de lo posible. Si tiene una preferencia específica, por favor infórmenos y haremos lo mejor para cumplir con su solicitu'),
(9, '¿Qué tipo de equipos médicos se utilizan para la atención domiciliaria?', 'Utilizamos una variedad de equipos médicos de última generación para proporcionar una atención eficaz y segura en el hogar del paciente.'),
(10, '¿Ofrecen servicios de atención a largo plazo para pacientes crónicos?', 'Sí, ofrecemos servicios de atención a largo plazo para pacientes con enfermedades crónicas. Desarrollamos planes de cuidado personalizados para asegurar que cada paciente reciba la atención continua q');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
