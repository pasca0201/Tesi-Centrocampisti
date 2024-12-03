-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Nov 21, 2024 alle 15:43
-- Versione del server: 5.7.24
-- Versione PHP: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prova tesi centrocampisti`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `giocatori`
--

CREATE TABLE `giocatori` (
  `id_giocatore` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `eta` int(11) DEFAULT NULL,
  `nazionalita` varchar(50) DEFAULT NULL,
  `squadra` varchar(50) DEFAULT NULL,
  `posizione` varchar(30) DEFAULT NULL,
  `valore_mercato` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `giocatori`
--

INSERT INTO `giocatori` (`id_giocatore`, `nome`, `cognome`, `eta`, `nazionalita`, `squadra`, `posizione`, `valore_mercato`) VALUES
(1, 'Hakan', 'Calhanoglu', 30, 'Turchia', 'Inter', 'Centrocampista Difensivo', '45.00'),
(4, 'Mario', 'Pasalic', 29, 'Croazia', 'Atalanta', 'Centrocampista Offensivo', '13.00'),
(5, 'Davide', 'Frattesi', 24, 'Italia', 'Inter', 'Centrocampista Offensivo', '35.00'),
(6, 'Matteo', 'Pessina', 27, 'Italia', 'Monza', 'Centrocampista Difensivo', '15.00'),
(7, 'Lazar', 'Samardzic', 22, 'Serbia', 'Udinese', 'Centrocampista Offensivo', '20.00'),
(8, 'Ruben', 'Loftus-Cheek', 28, 'Inghilterra', 'Milan', 'Centrocampista Offensivo', '25.00'),
(9, 'Jose', 'Ederson', 24, 'Brasile', 'Atalanta', 'Centrocampista Difensivo', '40.00'),
(10, 'Matias', 'Vecino', 32, 'Uruguay', 'Lazio', 'Centrocampista Offensivo', '2.00'),
(19, 'Nicolas', 'Viola', 34, 'Italia', 'Cagliari', 'Centrocampista Offensivo', '0.80'),
(20, 'Michael', 'Folorunsho', 26, 'Italia', 'Hellas Verona', 'Centrocampista Offensivo', '8.50'),
(21, 'Luca', 'Mazzitelli', 28, 'Italia', 'Frosinone', 'Centrocampista Difensivo', '4.00'),
(26, 'Szymon', 'Zurkowski', 26, 'Polonia', 'Empoli', 'Centrocampista Offensivo', '2.00'),
(27, 'Tijjani', 'Reijnders', 25, 'Olanda', 'Milan', 'Centrocampista Difensivo', '30.00'),
(28, 'Abou', 'Harroui', 26, 'Olanda', 'Hellas Verona', 'Centrocampista Offensivo', '2.70'),
(29, 'Ivan', 'Ilic', 23, 'Serbia', 'Torino', 'Centrocampista Difensivo', '18.00'),
(30, 'Piotr', 'Zielinski', 29, 'Polonia', 'Inter', 'Centrocampista Offensivo', '22.00'),
(31, 'Henrikh', 'Mkhitaryan', 35, 'Armenia', 'Inter', 'Centrocampista Difensivo', '6.00'),
(32, 'Nicolò', 'Barella', 27, 'Italia', 'Inter', 'Centrocampista Offensivo', '80.00'),
(33, 'Morten', 'Frendrup', 23, 'Danimarca', 'Genoa', 'Centrocampista Difensivo', '15.00'),
(34, 'Alfred', 'Duncan', 31, 'Ghana', 'Fiorentina', 'Centrocampista Difensivo', '4.00'),
(35, 'Weston', 'McKennie', 28, 'USA', 'Juventus', 'Centrocampista Offensivo', '28.00'),
(36, 'Zambo', 'Anguissa', 28, 'Camerun', 'Napoli', 'Centrocampista Difensivo', '27.00'),
(37, 'Yunus', 'Musah', 21, 'USA', 'Milan', 'Centrocampista Offensivo', '22.00'),
(38, 'Nicolò', 'Fagioli', 23, 'Italia', 'Juventus', 'Centrocampista Offensivo', '20.00'),
(39, 'Edoardo', 'Bove', 22, 'Italia', 'Roma', 'Centrocampista Difensivo', '14.00'),
(40, 'Nicolò', 'Rovella', 22, 'Italia', 'Lazio', 'Centrocampista Difensivo', '18.00'),
(41, 'Michel', 'Aebischer', 27, 'Svizzera', 'Bologna', 'Centrocampista Difensivo', '11.00'),
(42, 'Nikola', 'Moro', 26, 'Croazia', 'Bologna', 'Centrocampista Difensivo', '5.00'),
(43, 'Yussef', 'Maleh', 26, 'Italia', 'Empoli', 'Centrocampista Difensivo', '4.50'),
(44, 'Tommaso', 'Baldanzi', 21, 'Italia', 'Roma', 'Centrocampista Offensivo', '15.00'),
(45, 'Razvan', 'Marin', 28, 'Romania', 'Empoli', 'Centrocampista Difensivo', '3.50'),
(46, 'Tommaso', 'Pobega', 25, 'Italia', 'Milan', 'Centrocampista Offensivo', '10.00'),
(47, 'Gaetano', 'Oristanio', 21, 'Italia', 'Cagliari', 'Centrocampista Offensivo', '4.00'),
(48, 'Suat', 'Serdar', 27, 'Turchia', 'Hellas Verona', 'Centrocampista Difensivo', '5.00'),
(49, 'Karol', 'Linetty', 29, 'Polonia', 'Torino', 'Centrocampista Difensivo', '3.50'),
(50, 'Toma', 'Basic', 27, 'Croazia', 'Salernitana', 'Centrocampista Difensivo', '2.80'),
(54, 'Matteo', 'Guendouzi', 25, 'Francia', 'Lazio', 'Centrocampista Difensivo', '25.00'),
(55, 'Martin', 'Payero', 25, 'Argentina', 'Udinese', 'Centrocampista Offensivo', '4.00'),
(57, 'Morten', 'Thorsby', 28, 'Norvegia', 'Genoa', 'Centrocampista Difensivo', '3.00'),
(58, 'Oier', 'Zarraga', 25, 'Spagna', 'Udinese', 'Centrocampista Offensivo', '2.00'),
(59, 'Ondrej', 'Duda', 29, 'Slovacchia', 'Hellas Verona', 'Centrocampista Difensivo', '4.00'),
(60, 'Sandi', 'Lovric', 26, 'Slovenia', 'Udinese', 'Centrocampista Difensivo', '8.00'),
(61, 'Roberto', 'Gagliardini', 30, 'Italia', 'Monza', 'Centrocampista Difensivo', '4.00'),
(62, 'Jacopo', 'Fazzini', 21, 'Italia', 'Empoli', 'Centrocampista Difensivo', '6.00'),
(63, 'Gaetano', 'Castrovilli', 27, 'Italia', 'Fiorentina', 'Centrocampista Offensivo', '7.00'),
(64, 'Remo', 'Freuler', 32, 'Svizzera', 'Bologna', 'Centrocampista Difensivo', '6.50'),
(67, 'Warren', 'Bondo', 20, 'Francia', 'Monza', 'Centrocampista Difensivo', '6.00'),
(68, 'Hamza', 'Rafia', 25, 'Tunisia', 'Lecce', 'Centrocampista Offensivo', '1.70'),
(69, 'Alessandro', 'Deiola', 28, 'Italia', 'Cagliari', 'Centrocampista Offensivo', '2.00'),
(71, 'Leandro', 'Paredes', 29, 'Argentina', 'Roma', 'Centrocampista Difensivo', '8.00'),
(90, 'Bryan', 'Cristante', 29, 'Italia', 'Roma', 'Centrocampista Difensivo', '20.00'),
(91, 'Rolando', 'Mandragora', 26, 'Italia', 'Fiorentina', 'Centrocampista Difensivo', '8.00'),
(92, 'Melo', 'Arthur', 27, 'Brasile', 'Fiorentina', 'Centrocampista Difensivo', '15.00'),
(93, 'Ismael', 'Bennacer', 26, 'Algeria', 'Milan', 'Centrocampista Difensivo', '18.00'),
(96, 'Ibrahim', 'Sulemana', 21, 'Ghana', 'Cagliari', 'Centrocampista Difensivo', '4.00'),
(97, 'Manuel', 'Locatelli', 26, 'Italia', 'Juventus', 'Centrocampista Difensivo', '28.00'),
(98, 'Samuele', 'Ricci', 22, 'Italia', 'Torino', 'Centrocampista Difensivo', '25.00'),
(117, 'Milan', 'Badelj', 35, 'Croazia', 'Genoa', 'Centrocampista Difensivo', '0.80'),
(118, 'Yacine', 'Adli', 23, 'Francia', 'Milan', 'Centrocampista Difensivo', '15.00'),
(119, 'Kristjan', 'Asslani', 22, 'Albania', 'Inter', 'Centrocampista Difensivo', '18.00'),
(120, 'Matteo', 'Prati', 20, 'Italia', 'Cagliari', 'Centrocampista Difensivo', '10.00'),
(123, 'Antoine', 'Makoumbou', 25, 'Congo', 'Cagliari', 'Centrocampista Difensivo', '4.50'),
(125, 'Danilo', 'Cataldi', 29, 'Italia', 'Lazio', 'Centrocampista Difensivo', '5.00'),
(126, 'Teun', 'Koopminers', 26, 'Olanda', 'Atalanta', 'Centrocampista Offensivo', '50.00'),
(127, 'Andrea', 'Colpani', 25, 'Italia', 'Monza', 'Centrocampista Offensivo', '18.00'),
(128, 'Lorenzo', 'Pellegrini', 27, 'Italia', 'Roma', 'Centrocampista Offensivo', '25.00'),
(129, 'Lewis', 'Ferguson', 24, 'Scozia', 'Bologna', 'Centrocampista Offensivo', '24.00'),
(134, 'Daniel', 'Maldini', 22, 'Italia', 'Monza', 'Centrocampista Offensivo', '6.00'),
(137, 'Giovanni', 'Fabbian', 21, 'Italia', 'Bologna', 'Centrocampista Offensivo', '14.00'),
(138, 'Stanislav', 'Lobotka', 29, 'Slovacchia', 'Napoli', 'Centrocampista Difensivo', '28.00'),
(142, 'Ruslan', 'Malinovskyi', 31, 'Ucraina', 'Genoa', 'Centrocampista Offensivo', '5.00'),
(148, 'Marco', 'Brescianini', 23, 'Italia', 'Frosinone', 'Centrocampista Difensivo', '8.00'),
(149, 'Fabio', 'Miretti', 20, 'Italia', 'Juventus', 'Centrocampista Offensivo', '15.00'),
(150, 'Othmane', 'El Azzouzi', 22, 'Marocco', 'Frosinone', 'Centrocampista Difensivo', '2.50'),
(151, 'Ylber', 'Ramadani', 27, 'Albania', 'Lecce', 'Centrocampista Difensivo', '6.00'),
(152, 'Grigoris', 'Kastanos', 26, 'Cipro', 'Salernitana', 'Centrocampista Offensivo', '2.00'),
(153, 'Stefano', 'Sensi', 29, 'Italia', 'Monza', 'Centrocampista Offensivo', '4.00'),
(154, 'Kacper', 'Urbanski', 20, 'Polonia', 'Bologna', 'Centrocampista Offensivo', '4.00'),
(155, 'Hans', 'Nicolussi Caviglia', 24, 'Italia', 'Venezia', 'Centrocampista Difensivo', '3.00'),
(156, 'Michel', 'Adopo', 24, 'Francia', 'Cagliari', 'Centrocampista Difensivo', '3.00'),
(157, 'Nicolas', 'Haas', 28, 'Svizzera', 'Empoli', 'Centrocampista Difensivo', '0.70'),
(158, 'Marten', 'De Roon', 33, 'Olanda', 'Atalanta', 'Centrocampista Difensivo', '7.00'),
(159, 'Adrien', 'Tameze', 30, 'Francia', 'Torino', 'Centrocampista Difensivo', '5.00'),
(160, 'Alberto', 'Grassi', 29, 'Italia', 'Empoli', 'Centrocampista Difensivo', '1.80'),
(161, 'Emil', 'Bohinen', 25, 'Norvegia', 'Genoa', 'Centrocampista Difensivo', '1.80'),
(162, 'Charles', 'De Ketelaere', 23, 'Belgio', 'Atalanta', 'Centrocampista Offensivo', '34.00'),
(163, 'Tomas', 'Suslov', 22, 'Slovacchia', 'Verona', 'Centrocampista Offensivo', '7.00'),
(164, 'Nikola', 'Vlasic', 27, 'Croazia', 'Torino', 'Centrocampista Offensivo', '13.00'),
(165, 'Gianluca', 'Gaetano', 24, 'Italia', 'Cagliari', 'Centrocampista Offensivo', '6.00'),
(166, 'Remi', 'Oudin', 27, 'Francia', 'Lecce', 'Centrocampista Offensivo', '3.50'),
(167, 'Jakub', 'Jankto', 28, 'Rep. Ceca', 'Cagliari', 'Centrocampista Offensivo', '1.20');

-- --------------------------------------------------------

--
-- Struttura della tabella `statistiche_fisiologiche`
--

CREATE TABLE `statistiche_fisiologiche` (
  `id_giocatore` int(11) DEFAULT NULL,
  `velocita_media` decimal(5,2) DEFAULT NULL,
  `km_percorsi` decimal(5,2) DEFAULT NULL,
  `sprint_ad_alta_intensita` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `statistiche_fisiologiche`
--

INSERT INTO `statistiche_fisiologiche` (`id_giocatore`, `velocita_media`, `km_percorsi`, `sprint_ad_alta_intensita`) VALUES
(1, '7.44', '10.00', '0.07'),
(4, '7.23', '9.00', '0.10'),
(5, '7.38', '6.00', '0.13'),
(6, '7.46', '11.00', '0.08'),
(7, '7.15', '9.00', '0.09'),
(8, '6.91', '9.00', '0.08'),
(9, '7.48', '11.00', '0.10'),
(10, '7.11', '7.00', '0.09'),
(19, '7.53', '8.00', '0.09'),
(20, '6.66', '10.00', '0.10'),
(21, '7.13', '10.00', '0.09'),
(26, '7.55', '10.00', '0.09'),
(27, '7.25', '10.00', '0.10'),
(28, '7.16', '8.00', '0.11'),
(29, '7.23', '10.00', '0.11'),
(30, '7.19', '9.00', '0.08'),
(31, '7.56', '10.00', '0.11'),
(32, '7.67', '10.00', '0.11'),
(33, '7.26', '11.00', '0.08'),
(34, '6.22', '8.00', '0.07'),
(35, '7.09', '10.00', '0.11'),
(36, '6.90', '10.00', '0.09'),
(37, '7.38', '8.00', '0.12'),
(38, '7.32', '7.00', '0.07'),
(39, '7.61', '9.00', '0.08'),
(40, '7.09', '10.00', '0.09'),
(41, '7.35', '9.00', '0.10'),
(42, '7.26', '6.00', '0.09'),
(43, '7.06', '10.00', '0.10'),
(44, '7.39', '8.00', '0.08'),
(45, '7.13', '9.00', '0.06'),
(46, '8.04', '7.00', '0.10'),
(47, '7.06', '7.00', '0.11'),
(48, '7.09', '10.00', '0.09'),
(49, '6.62', '9.00', '0.08'),
(54, '7.58', '10.00', '0.10'),
(55, '6.57', '8.00', '0.11'),
(57, '7.67', '9.00', '0.08'),
(58, '6.87', '7.00', '0.09'),
(59, '6.93', '10.00', '0.07'),
(60, '7.29', '10.00', '0.09'),
(61, '7.46', '10.00', '0.09'),
(62, '7.69', '7.00', '0.10'),
(63, '6.88', '8.00', '0.12'),
(64, '7.69', '11.00', '0.09'),
(67, '6.92', '8.00', '0.07'),
(68, '7.78', '7.00', '0.09'),
(69, '7.52', '10.00', '0.09'),
(71, '6.60', '9.00', '0.06'),
(90, '7.25', '11.00', '0.07'),
(91, '6.89', '8.00', '0.08'),
(92, '6.86', '8.00', '0.08'),
(93, '6.98', '8.00', '0.09'),
(96, '7.16', '9.00', '0.08'),
(97, '7.27', '11.00', '0.05'),
(98, '7.27', '10.00', '0.07'),
(117, '7.02', '10.00', '0.05'),
(118, '7.39', '9.00', '0.08'),
(119, '7.83', '8.00', '0.07'),
(120, '7.44', '11.00', '0.06'),
(123, '7.32', '11.00', '0.08'),
(125, '8.17', '9.00', '0.09'),
(126, '7.53', '11.00', '0.09'),
(127, '7.06', '9.00', '0.09'),
(128, '7.19', '9.00', '0.12'),
(129, '7.66', '12.00', '0.09'),
(134, '7.00', '5.00', '0.08'),
(137, '7.56', '7.00', '0.10'),
(138, '7.03', '10.00', '0.09'),
(142, '7.19', '9.00', '0.07'),
(148, '6.98', '9.00', '0.10'),
(149, '8.07', '7.00', '0.10'),
(150, '7.80', '7.00', '0.10'),
(152, '6.58', '8.00', '0.07'),
(153, '8.40', '2.00', '0.10'),
(154, '7.97', '8.00', '0.09'),
(155, '8.27', '7.00', '0.08'),
(156, '7.71', '2.00', '0.10'),
(157, '7.76', '13.00', '0.10'),
(158, '7.10', '11.00', '0.08'),
(159, '6.64', '9.00', '0.08'),
(160, '7.58', '10.00', '0.07'),
(161, '7.52', '6.00', '0.09'),
(162, '6.91', '7.00', '0.11'),
(163, '7.10', '9.00', '0.10'),
(164, '7.04', '10.00', '0.10'),
(165, '7.22', '8.00', '0.08'),
(166, '7.22', '8.00', '0.09'),
(167, '7.15', '7.00', '0.10');

-- --------------------------------------------------------

--
-- Struttura della tabella `statistiche_internazionali`
--

CREATE TABLE `statistiche_internazionali` (
  `id_giocatore` int(11) NOT NULL,
  `presenze_internazionali` int(11) DEFAULT '0',
  `presenze_nazionale` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `statistiche_internazionali`
--

INSERT INTO `statistiche_internazionali` (`id_giocatore`, `presenze_internazionali`, `presenze_nazionale`) VALUES
(1, 78, 94),
(4, 61, 70),
(5, 10, 23),
(6, 20, 16),
(7, 3, 15),
(8, 41, 10),
(9, 15, 2),
(10, 50, 69),
(19, 0, 0),
(20, 0, 2),
(21, 5, 0),
(26, 5, 7),
(27, 40, 19),
(28, 0, 0),
(29, 0, 21),
(30, 69, 97),
(31, 149, 95),
(32, 45, 57),
(33, 8, 1),
(34, 16, 10),
(35, 28, 56),
(36, 37, 70),
(37, 11, 42),
(38, 11, 7),
(39, 26, 0),
(40, 7, 7),
(41, 45, 29),
(42, 22, 1),
(43, 5, 1),
(44, 9, 0),
(45, 14, 63),
(46, 14, 3),
(47, 0, 0),
(48, 11, 4),
(49, 5, 47),
(50, 15, 2),
(54, 49, 9),
(55, 0, 3),
(57, 6, 22),
(58, 0, 0),
(59, 33, 79),
(60, 10, 35),
(61, 23, 7),
(62, 0, 0),
(63, 7, 4),
(64, 46, 76),
(67, 0, 0),
(68, 0, 36),
(69, 0, 0),
(71, 70, 68),
(90, 84, 43),
(91, 34, 1),
(92, 38, 22),
(93, 30, 50),
(96, 1, 0),
(97, 32, 28),
(98, 8, 0),
(117, 74, 55),
(118, 10, 0),
(119, 13, 27),
(120, 0, 0),
(123, 2, 10),
(125, 40, 0),
(126, 61, 21),
(127, 2, 0),
(128, 75, 36),
(129, 18, 12),
(134, 7, 1),
(137, 4, 0),
(138, 32, 63),
(142, 39, 66),
(148, 1, 2),
(149, 10, 1),
(150, 7, 5),
(151, 4, 42),
(152, 3, 66),
(153, 8, 9),
(154, 3, 9),
(155, 0, 0),
(156, 1, 0),
(157, 0, 0),
(158, 60, 42),
(159, 9, 0),
(160, 0, 0),
(161, 0, 0),
(162, 41, 20),
(163, 0, 34),
(164, 54, 56),
(165, 5, 0),
(166, 0, 0),
(167, 0, 45);

-- --------------------------------------------------------

--
-- Struttura della tabella `statistiche_psicologiche`
--

CREATE TABLE `statistiche_psicologiche` (
  `id_giocatore` int(11) DEFAULT NULL,
  `minuti_giocati` int(11) DEFAULT NULL,
  `cartellini_gialli` int(11) DEFAULT NULL,
  `cartellini_rossi` int(11) DEFAULT NULL,
  `partite_saltate_infortunio` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `statistiche_psicologiche`
--

INSERT INTO `statistiche_psicologiche` (`id_giocatore`, `minuti_giocati`, `cartellini_gialli`, `cartellini_rossi`, `partite_saltate_infortunio`) VALUES
(1, 2147, 5, 0, 2),
(4, 1130, 3, 0, 0),
(5, 1089, 1, 0, 2),
(6, 3467, 3, 1, 1),
(7, 2560, 3, 0, 4),
(8, 2223, 5, 0, 6),
(9, 3090, 8, 0, 0),
(10, 1285, 8, 0, 7),
(19, 1344, 3, 0, 2),
(20, 2984, 5, 0, 3),
(21, 2365, 4, 1, 6),
(26, 912, 4, 0, 5),
(27, 2829, 8, 0, 0),
(28, 1077, 2, 0, 21),
(29, 2257, 3, 0, 7),
(30, 2023, 1, 0, 8),
(31, 2945, 4, 0, 0),
(32, 2859, 7, 0, 0),
(33, 3417, 6, 0, 0),
(34, 2008, 2, 0, 2),
(35, 2770, 6, 0, 1),
(36, 2995, 2, 0, 4),
(37, 1630, 5, 0, 5),
(38, 464, 1, 0, 0),
(39, 1937, 2, 0, 0),
(40, 1322, 6, 0, 7),
(41, 2395, 8, 0, 0),
(42, 936, 0, 0, 0),
(43, 2798, 11, 0, 0),
(44, 1367, 3, 0, 6),
(45, 1973, 3, 0, 3),
(46, 367, 0, 0, 20),
(47, 1201, 1, 0, 7),
(48, 1658, 7, 0, 2),
(49, 1997, 12, 0, 3),
(54, 2371, 3, 1, 2),
(55, 1801, 6, 1, 0),
(57, 1306, 2, 0, 2),
(58, 487, 0, 0, 0),
(59, 2647, 10, 2, 5),
(60, 2145, 1, 1, 8),
(61, 2553, 5, 0, 5),
(62, 1366, 6, 0, 6),
(63, 387, 0, 0, 31),
(64, 2814, 9, 0, 0),
(67, 1605, 9, 0, 0),
(68, 1290, 4, 0, 0),
(69, 1760, 7, 0, 0),
(71, 2811, 15, 1, 0),
(90, 3573, 8, 0, 0),
(91, 1753, 5, 0, 1),
(92, 2127, 2, 0, 3),
(93, 1231, 2, 0, 15),
(96, 1456, 4, 0, 6),
(97, 3234, 6, 0, 0),
(98, 2573, 6, 1, 2),
(117, 2664, 6, 0, 2),
(118, 1527, 3, 0, 0),
(119, 879, 1, 0, 1),
(120, 2160, 4, 0, 0),
(123, 2933, 3, 2, 3),
(125, 1466, 8, 0, 0),
(126, 2815, 5, 0, 2),
(127, 2791, 1, 0, 0),
(128, 2014, 7, 0, 6),
(129, 2925, 8, 0, 8),
(134, 668, 1, 0, 12),
(137, 1163, 4, 0, 0),
(138, 3514, 4, 0, 0),
(142, 1662, 7, 0, 6),
(148, 2517, 1, 0, 1),
(149, 1174, 3, 0, 1),
(150, 537, 4, 0, 5),
(151, 2977, 13, 0, 2),
(152, 1578, 5, 0, 9),
(153, 56, 0, 0, 14),
(154, 1014, 2, 0, 0),
(155, 292, 1, 0, 0),
(156, 153, 0, 0, 2),
(157, 100, 1, 0, 3),
(158, 2819, 10, 0, 3),
(159, 3264, 3, 0, 4),
(160, 1963, 5, 1, 5),
(161, 658, 1, 0, 4),
(162, 2135, 1, 0, 2),
(163, 2257, 7, 0, 0),
(164, 2808, 3, 0, 5),
(165, 984, 2, 1, 3),
(166, 1901, 3, 0, 0),
(167, 930, 0, 0, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `statistiche_tattiche`
--

CREATE TABLE `statistiche_tattiche` (
  `id_giocatore` int(11) DEFAULT NULL,
  `passaggi_completati` int(10) DEFAULT NULL,
  `dribbling_riusciti` int(11) DEFAULT NULL,
  `precisione_passaggi` decimal(5,2) DEFAULT NULL,
  `perc_cross_riusciti` decimal(5,2) DEFAULT NULL,
  `percentuale_dribbling_riusciti` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `statistiche_tattiche`
--

INSERT INTO `statistiche_tattiche` (`id_giocatore`, `passaggi_completati`, `dribbling_riusciti`, `precisione_passaggi`, `perc_cross_riusciti`, `percentuale_dribbling_riusciti`) VALUES
(1, 2147, 7, '0.95', '0.37', '0.50'),
(4, 1130, 11, '0.87', '0.10', '0.49'),
(5, 286, 6, '0.84', '0.10', '0.32'),
(6, 2009, 14, '0.87', '0.35', '0.52'),
(7, 833, 48, '0.79', '0.32', '0.50'),
(8, 718, 28, '0.86', '0.31', '0.57'),
(9, 1647, 22, '0.86', '0.39', '0.52'),
(10, 734, 10, '0.40', '0.08', '0.71'),
(19, 421, 16, '0.74', '0.33', '0.47'),
(20, 718, 22, '0.65', '0.17', '0.34'),
(21, 1253, 11, '0.77', '0.10', '0.65'),
(26, 238, 4, '0.81', '0.17', '0.31'),
(27, 1686, 34, '0.92', '0.35', '0.67'),
(28, 361, 19, '0.82', '0.33', '0.48'),
(29, 1233, 18, '0.86', '0.38', '0.55'),
(30, 1157, 16, '0.88', '0.26', '0.50'),
(31, 1636, 18, '0.88', '0.13', '0.51'),
(32, 2090, 28, '0.89', '0.26', '0.51'),
(33, 1188, 17, '0.81', '0.17', '0.65'),
(34, 952, 22, '0.81', '0.34', '0.56'),
(35, 942, 17, '0.81', '0.28', '0.38'),
(36, 1799, 26, '0.88', '0.29', '0.45'),
(37, 602, 21, '0.86', '0.21', '0.50'),
(38, 183, 3, '0.91', '0.37', '0.60'),
(39, 766, 8, '0.85', '0.13', '0.53'),
(40, 951, 9, '0.89', '0.15', '0.56'),
(41, 1476, 13, '0.92', '0.08', '0.59'),
(42, 554, 5, '0.83', '0.23', '0.50'),
(43, 965, 7, '0.80', '0.34', '0.50'),
(44, 423, 16, '0.85', '0.33', '0.38'),
(45, 799, 15, '0.73', '0.30', '0.52'),
(46, 133, 3, '0.78', '0.00', '0.60'),
(47, 207, 30, '0.74', '0.28', '0.57'),
(48, 589, 18, '0.75', '0.13', '0.60'),
(49, 861, 7, '0.87', '0.37', '0.47'),
(54, 1056, 7, '0.93', '0.20', '0.33'),
(55, 518, 24, '0.78', '0.20', '0.43'),
(57, 320, 4, '0.63', '0.33', '0.50'),
(58, 110, 1, '0.83', '0.20', '0.50'),
(59, 1109, 21, '0.79', '0.34', '0.66'),
(60, 623, 16, '0.81', '0.35', '0.53'),
(61, 1327, 7, '0.84', '0.22', '0.54'),
(62, 439, 19, '0.75', '0.24', '0.53'),
(63, 104, 3, '0.70', '0.22', '0.25'),
(64, 1866, 7, '0.91', '0.13', '0.58'),
(67, 613, 14, '0.90', '0.50', '0.78'),
(68, 460, 12, '0.75', '0.18', '0.46'),
(69, 499, 4, '0.71', '0.13', '0.57'),
(71, 2024, 8, '0.89', '0.24', '0.57'),
(90, 2142, 15, '0.83', '0.18', '0.63'),
(91, 720, 6, '0.82', '0.21', '0.54'),
(92, 1467, 10, '0.85', '0.42', '0.71'),
(93, 775, 16, '0.90', '0.19', '0.59'),
(96, 434, 9, '0.83', '0.15', '0.53'),
(97, 1965, 14, '0.86', '0.60', '0.67'),
(98, 1248, 10, '0.88', '0.21', '0.36'),
(117, 1379, 16, '0.81', '0.36', '0.52'),
(118, 1241, 20, '0.82', '0.32', '0.70'),
(119, 705, 3, '0.93', '0.14', '0.60'),
(120, 727, 4, '0.75', '0.40', '0.44'),
(123, 1187, 21, '0.87', '0.36', '0.70'),
(125, 893, 6, '0.88', '0.29', '0.75'),
(126, 1274, 20, '0.84', '0.36', '0.42'),
(127, 855, 26, '0.83', '0.33', '0.38'),
(128, 766, 18, '0.83', '0.34', '0.55'),
(129, 1748, 13, '0.89', '0.28', '0.46'),
(134, 176, 16, '0.82', '0.33', '0.48'),
(137, 279, 11, '0.80', '0.25', '0.50'),
(138, 2268, 15, '0.92', '0.33', '0.58'),
(142, 691, 10, '0.82', '0.26', '0.38'),
(148, 752, 18, '0.80', '0.30', '0.45'),
(149, 413, 21, '0.80', '0.34', '0.50'),
(150, 388, 0, '0.84', '0.50', '0.00'),
(151, 1226, 23, '0.80', '0.30', '0.62'),
(152, 559, 12, '0.75', '0.18', '0.52'),
(153, 51, 1, '0.90', '0.50', '1.00'),
(154, 359, 18, '0.84', '0.27', '0.85'),
(155, 117, 0, '0.85', '0.39', '0.00'),
(156, 88, 2, '0.88', '0.39', '1.00'),
(157, 51, 5, '0.90', '0.00', '0.40'),
(158, 1679, 3, '0.85', '0.15', '0.38'),
(159, 1059, 12, '0.82', '0.17', '0.71'),
(160, 845, 5, '0.82', '0.17', '0.56'),
(161, 363, 5, '0.79', '0.25', '0.38'),
(162, 725, 39, '0.76', '0.18', '0.50'),
(163, 490, 38, '0.79', '0.22', '0.58'),
(164, 955, 29, '0.83', '0.33', '0.67'),
(165, 295, 11, '0.80', '0.24', '0.39'),
(166, 626, 4, '0.69', '0.24', '0.36'),
(167, 220, 1, '0.69', '0.13', '0.33');

-- --------------------------------------------------------

--
-- Struttura della tabella `statistiche_tecniche_difensive`
--

CREATE TABLE `statistiche_tecniche_difensive` (
  `id_giocatore` int(11) NOT NULL,
  `percentuale_duelli` decimal(5,2) NOT NULL,
  `duelli_totali` int(11) NOT NULL,
  `indice_recupero_palla` decimal(5,2) NOT NULL,
  `rapporto_duelli_aerei` decimal(5,2) NOT NULL,
  `duelli_aerei_totali` int(11) NOT NULL,
  `percentuale_contrasti` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `statistiche_tecniche_difensive`
--

INSERT INTO `statistiche_tecniche_difensive` (`id_giocatore`, `percentuale_duelli`, `duelli_totali`, `indice_recupero_palla`, `rapporto_duelli_aerei`, `duelli_aerei_totali`, `percentuale_contrasti`) VALUES
(1, '0.58', 212, '0.96', '0.60', 48, '0.27'),
(4, '0.47', 173, '0.91', '0.53', 66, '0.16'),
(5, '0.44', 104, '0.72', '0.48', 29, '0.09'),
(6, '0.53', 252, '0.91', '0.51', 67, '0.17'),
(7, '0.44', 273, '0.87', '0.31', 49, '0.11'),
(8, '0.53', 269, '0.81', '0.55', 76, '0.13'),
(9, '0.80', 213, '0.85', '0.54', 59, '0.25'),
(10, '0.51', 166, '0.99', '0.51', 69, '0.17'),
(19, '0.44', 169, '0.69', '0.36', 50, '0.08'),
(20, '0.48', 465, '0.79', '0.49', 158, '0.10'),
(21, '0.51', 263, '0.85', '0.51', 81, '0.15'),
(26, '0.37', 116, '0.66', '0.32', 25, '0.08'),
(27, '0.49', 219, '0.78', '0.32', 25, '0.18'),
(28, '0.55', 127, '0.88', '0.57', 21, '0.15'),
(29, '0.49', 171, '0.88', '0.48', 40, '0.08'),
(30, '0.48', 131, '0.86', '0.34', 16, '0.19'),
(31, '0.53', 232, '0.91', '0.45', 33, '0.23'),
(32, '0.49', 258, '0.86', '0.58', 35, '0.17'),
(33, '0.62', 346, '0.94', '0.49', 59, '0.36'),
(34, '0.48', 214, '0.86', '0.97', 59, '0.18'),
(35, '0.50', 225, '0.86', '0.55', 69, '0.19'),
(36, '0.49', 349, '0.85', '0.51', 94, '0.10'),
(37, '0.51', 163, '0.84', '0.46', 30, '0.14'),
(38, '0.52', 27, '0.85', '1.00', 1, '0.19'),
(39, '0.52', 253, '0.78', '0.46', 67, '0.21'),
(40, '0.49', 164, '0.90', '0.55', 20, '0.24'),
(41, '0.48', 186, '0.88', '0.46', 26, '0.17'),
(42, '0.46', 90, '0.80', '0.33', 18, '0.26'),
(43, '0.48', 278, '0.90', '0.33', 53, '0.26'),
(44, '0.47', 130, '0.70', '0.11', 9, '0.10'),
(45, '0.59', 169, '0.83', '0.48', 25, '0.21'),
(46, '0.56', 50, '0.88', '0.60', 5, '0.28'),
(47, '0.41', 231, '0.60', '0.56', 40, '0.07'),
(48, '0.50', 216, '0.89', '0.50', 44, '0.26'),
(49, '0.41', 173, '0.91', '0.54', 37, '0.16'),
(54, '0.46', 190, '0.90', '0.33', 44, '0.13'),
(55, '0.48', 265, '0.85', '0.51', 41, '0.19'),
(57, '0.46', 209, '0.69', '0.52', 130, '0.09'),
(58, '0.42', 24, '0.80', '0.50', 6, '0.18'),
(59, '0.51', 266, '0.88', '0.29', 27, '0.23'),
(60, '0.44', 159, '0.86', '0.29', 27, '0.13'),
(61, '0.56', 231, '0.90', '0.54', 83, '0.23'),
(62, '0.49', 222, '0.80', '0.31', 45, '0.18'),
(63, '0.32', 43, '0.74', '0.60', 5, '0.07'),
(64, '0.50', 239, '0.90', '0.43', 47, '0.29'),
(67, '0.53', 135, '0.80', '0.56', 16, '0.26'),
(68, '0.49', 202, '0.76', '0.31', 29, '0.23'),
(69, '0.47', 192, '0.85', '0.55', 69, '0.13'),
(71, '0.56', 203, '0.95', '0.82', 17, '0.28'),
(90, '0.49', 366, '0.91', '0.56', 137, '0.10'),
(91, '0.50', 176, '0.90', '0.42', 73, '0.21'),
(92, '0.65', 166, '0.91', '0.50', 14, '0.34'),
(93, '0.54', 162, '0.81', '0.41', 32, '0.19'),
(96, '0.48', 141, '0.84', '0.37', 35, '0.17'),
(97, '0.56', 239, '0.91', '0.62', 42, '0.31'),
(98, '0.52', 201, '0.91', '0.42', 45, '0.16'),
(117, '0.47', 195, '0.90', '0.52', 27, '0.20'),
(118, '0.52', 151, '0.90', '0.60', 25, '0.19'),
(119, '0.56', 59, '0.95', '0.33', 12, '0.07'),
(120, '0.51', 125, '0.94', '0.39', 23, '0.29'),
(123, '0.49', 191, '0.84', '0.36', 30, '0.19'),
(125, '0.54', 81, '0.95', '0.60', 10, '0.22'),
(126, '0.38', 301, '0.76', '0.46', 63, '0.11'),
(127, '0.43', 239, '0.70', '0.29', 34, '0.10'),
(128, '0.48', 214, '0.82', '0.45', 31, '0.15'),
(129, '0.52', 305, '0.86', '0.49', 80, '0.12'),
(134, '0.46', 90, '0.62', '0.42', 19, '0.07'),
(137, '0.47', 128, '0.70', '0.43', 40, '0.13'),
(138, '0.54', 239, '0.95', '0.35', 34, '0.26'),
(142, '0.44', 189, '0.80', '0.50', 44, '0.17'),
(148, '0.61', 227, '0.72', '0.39', 49, '0.08'),
(149, '0.82', 160, '0.77', '0.28', 18, '0.14'),
(150, '0.37', 65, '0.88', '0.29', 17, '0.15'),
(151, '0.48', 324, '0.90', '0.50', 56, '0.20'),
(152, '0.51', 203, '0.76', '0.41', 58, '0.12'),
(153, '0.50', 6, '0.75', '0.00', 0, '0.25'),
(154, '0.54', 123, '0.68', '0.64', 33, '0.15'),
(155, '0.61', 28, '0.86', '0.75', 4, '0.30'),
(156, '0.63', 16, '0.76', '0.75', 4, '0.30'),
(157, '0.63', 16, '1.00', '0.75', 4, '0.75'),
(158, '0.46', 271, '0.95', '0.58', 64, '0.25'),
(159, '0.49', 188, '0.86', '0.46', 69, '0.17'),
(160, '0.55', 173, '0.95', '0.61', 61, '0.18'),
(161, '0.49', 68, '0.90', '0.54', 24, '0.17'),
(162, '0.52', 304, '0.64', '0.53', 75, '0.13'),
(163, '0.51', 283, '0.75', '0.35', 20, '0.17'),
(164, '0.46', 251, '0.81', '0.38', 63, '0.10'),
(165, '0.33', 121, '0.76', '0.16', 32, '0.06'),
(166, '0.46', 114, '0.83', '0.50', 24, '0.18'),
(167, '0.42', 57, '0.92', '0.33', 12, '0.21');

-- --------------------------------------------------------

--
-- Struttura della tabella `statistiche_tecniche_offensive`
--

CREATE TABLE `statistiche_tecniche_offensive` (
  `id_giocatore` int(11) DEFAULT NULL,
  `gol` int(11) DEFAULT NULL,
  `assist` int(11) DEFAULT NULL,
  `tiri_in_porta` int(11) DEFAULT NULL,
  `passaggi_chiave` int(11) DEFAULT NULL,
  `expected_goals` decimal(5,2) DEFAULT NULL,
  `tiri_totali` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `statistiche_tecniche_offensive`
--

INSERT INTO `statistiche_tecniche_offensive` (`id_giocatore`, `gol`, `assist`, `tiri_in_porta`, `passaggi_chiave`, `expected_goals`, `tiri_totali`) VALUES
(1, 13, 3, 23, 48, '9.98', 62),
(4, 6, 6, 18, 25, '7.95', 40),
(5, 6, 3, 14, 7, '8.65', 32),
(6, 6, 3, 13, 24, '6.19', 27),
(7, 6, 2, 17, 60, '3.76', 57),
(8, 6, 1, 14, 24, '3.99', 40),
(9, 6, 1, 11, 17, '4.51', 38),
(10, 6, 1, 11, 6, '4.24', 33),
(19, 5, 2, 12, 31, '3.55', 38),
(20, 5, 1, 14, 17, '4.30', 47),
(21, 5, 0, 18, 13, '2.27', 49),
(26, 4, 0, 6, 4, '1.45', 18),
(27, 3, 3, 8, 47, '4.09', 44),
(28, 3, 3, 12, 13, '1.38', 33),
(29, 3, 2, 11, 45, '2.57', 27),
(30, 3, 2, 9, 46, '2.77', 30),
(31, 2, 8, 6, 32, '3.49', 39),
(32, 2, 3, 12, 39, '5.04', 40),
(33, 2, 5, 4, 8, '1.54', 30),
(34, 2, 5, 6, 31, '1.75', 23),
(35, 0, 7, 7, 34, '3.14', 23),
(36, 0, 2, 6, 37, '2.70', 33),
(37, 0, 2, 5, 12, '0.65', 14),
(38, 0, 2, 2, 9, '0.28', 6),
(39, 0, 2, 6, 14, '1.52', 19),
(40, 0, 2, 1, 8, '0.57', 5),
(41, 0, 1, 5, 16, '0.97', 18),
(42, 1, 0, 1, 11, '1.01', 11),
(43, 0, 1, 2, 33, '0.93', 18),
(44, 2, 0, 9, 17, '1.75', 29),
(45, 0, 3, 9, 30, '1.01', 35),
(46, 0, 0, 4, 1, '0.32', 5),
(47, 2, 1, 5, 14, '2.04', 23),
(48, 0, 2, 7, 15, '1.06', 22),
(49, 0, 0, 1, 15, '0.54', 16),
(54, 2, 3, 7, 20, '1.35', 26),
(55, 2, 2, 8, 12, '1.42', 38),
(57, 2, 2, 7, 7, '2.07', 13),
(58, 2, 0, 2, 2, '0.56', 6),
(59, 1, 4, 7, 49, '2.15', 24),
(60, 1, 3, 12, 40, '3.51', 43),
(61, 1, 2, 9, 18, '4.72', 36),
(62, 1, 1, 4, 23, '1.07', 23),
(63, 1, 2, 2, 5, '0.58', 5),
(64, 1, 1, 4, 18, '1.59', 14),
(67, 1, 1, 4, 6, '1.02', 17),
(68, 1, 0, 3, 15, '0.66', 16),
(69, 1, 0, 6, 10, '2.92', 25),
(71, 3, 5, 6, 22, '3.03', 32),
(90, 3, 4, 9, 26, '4.36', 54),
(91, 3, 3, 11, 10, '3.85', 30),
(92, 2, 3, 6, 31, '1.02', 12),
(93, 2, 2, 2, 15, '1.85', 12),
(96, 2, 0, 3, 4, '0.56', 13),
(97, 1, 4, 3, 22, '1.19', 24),
(98, 1, 2, 5, 24, '1.25', 30),
(117, 1, 3, 5, 15, '1.33', 21),
(118, 1, 2, 1, 20, '0.17', 4),
(119, 1, 2, 4, 6, '0.69', 15),
(120, 1, 1, 11, 13, '2.13', 36),
(123, 1, 0, 2, 14, '0.62', 8),
(125, 1, 0, 2, 11, '0.31', 12),
(126, 12, 5, 20, 55, '6.48', 54),
(127, 8, 4, 19, 52, '5.20', 65),
(128, 8, 3, 20, 33, '5.23', 47),
(129, 6, 3, 20, 29, '6.61', 60),
(134, 4, 1, 7, 11, '1.51', 21),
(137, 5, 2, 10, 14, '4.74', 28),
(138, 0, 1, 4, 22, '0.63', 14),
(142, 4, 1, 13, 10, '0.98', 39),
(148, 4, 2, 1, 20, '2.03', 31),
(149, 1, 1, 3, 23, '1.33', 20),
(150, 2, 2, 2, 4, '0.47', 2),
(151, 1, 0, 6, 16, '1.13', 31),
(152, 3, 3, 10, 25, '2.41', 30),
(153, 0, 1, 0, 2, '0.08', 2),
(154, 0, 1, 6, 15, '1.48', 17),
(155, 0, 1, 0, 7, '0.11', 3),
(156, 0, 1, 1, 1, '0.25', 1),
(157, 0, 0, 1, 0, '0.07', 1),
(158, 0, 5, 3, 18, '0.61', 16),
(159, 0, 0, 2, 12, '0.47', 12),
(160, 0, 1, 5, 5, '0.91', 23),
(161, 0, 0, 0, 7, '0.08', 4),
(162, 10, 8, 25, 41, '7.58', 45),
(163, 3, 5, 16, 23, '3.38', 52),
(164, 3, 2, 11, 33, '3.21', 46),
(165, 5, 1, 10, 20, '1.72', 23),
(166, 3, 2, 8, 56, '1.36', 34),
(167, 1, 2, 6, 4, '1.45', 12);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `giocatori`
--
ALTER TABLE `giocatori`
  ADD PRIMARY KEY (`id_giocatore`);

--
-- Indici per le tabelle `statistiche_fisiologiche`
--
ALTER TABLE `statistiche_fisiologiche`
  ADD KEY `id_giocatore` (`id_giocatore`);

--
-- Indici per le tabelle `statistiche_internazionali`
--
ALTER TABLE `statistiche_internazionali`
  ADD PRIMARY KEY (`id_giocatore`);

--
-- Indici per le tabelle `statistiche_psicologiche`
--
ALTER TABLE `statistiche_psicologiche`
  ADD KEY `id_giocatore` (`id_giocatore`);

--
-- Indici per le tabelle `statistiche_tattiche`
--
ALTER TABLE `statistiche_tattiche`
  ADD KEY `id_giocatore` (`id_giocatore`);

--
-- Indici per le tabelle `statistiche_tecniche_difensive`
--
ALTER TABLE `statistiche_tecniche_difensive`
  ADD PRIMARY KEY (`id_giocatore`);

--
-- Indici per le tabelle `statistiche_tecniche_offensive`
--
ALTER TABLE `statistiche_tecniche_offensive`
  ADD KEY `id_giocatore` (`id_giocatore`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `statistiche_fisiologiche`
--
ALTER TABLE `statistiche_fisiologiche`
  ADD CONSTRAINT `statistiche_fisiologiche_ibfk_1` FOREIGN KEY (`id_giocatore`) REFERENCES `giocatori` (`id_giocatore`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `statistiche_internazionali`
--
ALTER TABLE `statistiche_internazionali`
  ADD CONSTRAINT `statistiche_internazionali_ibfk_1` FOREIGN KEY (`id_giocatore`) REFERENCES `giocatori` (`id_giocatore`);

--
-- Limiti per la tabella `statistiche_psicologiche`
--
ALTER TABLE `statistiche_psicologiche`
  ADD CONSTRAINT `statistiche_psicologiche_ibfk_1` FOREIGN KEY (`id_giocatore`) REFERENCES `giocatori` (`id_giocatore`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `statistiche_tattiche`
--
ALTER TABLE `statistiche_tattiche`
  ADD CONSTRAINT `statistiche_tattiche_ibfk_1` FOREIGN KEY (`id_giocatore`) REFERENCES `giocatori` (`id_giocatore`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `statistiche_tecniche_difensive`
--
ALTER TABLE `statistiche_tecniche_difensive`
  ADD CONSTRAINT `statistiche_tecniche_difensive_ibfk_1` FOREIGN KEY (`id_giocatore`) REFERENCES `giocatori` (`id_giocatore`) ON DELETE CASCADE;

--
-- Limiti per la tabella `statistiche_tecniche_offensive`
--
ALTER TABLE `statistiche_tecniche_offensive`
  ADD CONSTRAINT `statistiche_tecniche_offensive_ibfk_1` FOREIGN KEY (`id_giocatore`) REFERENCES `giocatori` (`id_giocatore`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
