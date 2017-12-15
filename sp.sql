-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 14. 12 2017 kl. 22:38:26
-- Serverversion: 10.1.21-MariaDB
-- PHP-version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `albumName` varchar(100) NOT NULL,
  `artistId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `album`
--

INSERT INTO `album` (`id`, `albumName`, `artistId`) VALUES
(1, 'Marshall Mathers', 3),
(2, 'More Life', 1),
(3, 'Views', 1),
(4, '4 Your Eyez Only', 2),
(5, 'The Warm Up', 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `artistName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `artist`
--

INSERT INTO `artist` (`id`, `artistName`) VALUES
(1, 'Drake'),
(2, 'J. Cole'),
(3, 'Eminem');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`,`artistId`),
  ADD KEY `artist` (`artistId`);

--
-- Indeks for tabel `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `artist` FOREIGN KEY (`artistId`) REFERENCES `artist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
