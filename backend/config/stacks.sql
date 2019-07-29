-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 29 jul 2019 om 18:46
-- Serverversie: 10.1.36-MariaDB
-- PHP-versie: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stacks`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

CREATE TABLE `categorie` (
  `categorie_id` int(11) NOT NULL,
  `naam` varchar(20) DEFAULT NULL,
  `omschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categorie`
--

INSERT INTO `categorie` (`categorie_id`, `naam`, `omschrijving`) VALUES
(1, 'Tuinman', 'Het schoonmaken van een oppervlak'),
(2, 'bakker', 'Het maken van Koek, brood en snacks'),
(3, 'afwasser', 'De afwas doen en ervoor zorgen dat alles schoon is'),
(4, 'Dogwalker', 'Honden brengen om te wandelen.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `freelancers`
--

CREATE TABLE `freelancers` (
  `freelancer_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `gebruikersnaam` varchar(50) DEFAULT NULL,
  `naam` varchar(10) DEFAULT NULL,
  `voornaam` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobiel` int(20) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `woonplaats` varchar(100) DEFAULT NULL,
  `opleiding` tinytext,
  `werkervaring` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `freelancers`
--

INSERT INTO `freelancers` (`freelancer_id`, `type_id`, `gebruikersnaam`, `naam`, `voornaam`, `email`, `mobiel`, `adres`, `woonplaats`, `opleiding`, `werkervaring`) VALUES
(1, 1, 'm23ck', 'Mack', 'Andojo', 'andojomack@gmail.com', 8879541, 'Potweg 12', 'Marowijne', 'NATIN', 'Vortex Inc.'),
(2, 1, 'mpawirodinomo', 'Pawirodino', 'Mitchel', 'mpawirodinomo@gmail.com', 7896542, 'skuutweg 69', 'Zorg en Hoop', 'UNASAT', 'Above Normal');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `klant_id` int(11) DEFAULT NULL,
  `freelancer_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `prijs` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klant`
--

CREATE TABLE `klant` (
  `klant_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `gebruikersnaam` varchar(50) DEFAULT NULL,
  `naam` varchar(10) DEFAULT NULL,
  `voornaam` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobiel` int(20) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `woonplaats` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klant`
--

INSERT INTO `klant` (`klant_id`, `type_id`, `gebruikersnaam`, `naam`, `voornaam`, `email`, `mobiel`, `adres`, `woonplaats`) VALUES
(1, 2, 'mclvn', 'Mclovin', 'Henry', 'hmc@gmail.com', 8975462, 'quatroweg 56', 'Kwatta'),
(2, 2, 'eSaniello', 'Samadhan', 'Shaniel', 'shaniel29samadhan@gmail.com', 8896542, 'wietweg 420', 'Leiding');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `klant_id` int(11) DEFAULT NULL,
  `tijd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titel` text NOT NULL,
  `inhoud` text,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `post`
--

INSERT INTO `post` (`post_id`, `klant_id`, `tijd`, `titel`, `inhoud`, `categorie_id`) VALUES
(1, 1, '2019-07-22 18:20:35', 'Tuinman gezocht!', 'ik ben opzoek naar een tuinman en zal SRD 40 betalen voor zijn services, zou jij de juiste kunnen zijn? Bel op 8975632', 1),
(2, 2, '2019-07-22 18:42:48', 'Bakker gezocht!', 'ik ben opzoek naar een bakker die lekkere broden, koekjes, bollen etc. bakt. Ik heb honger!', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reacties`
--

CREATE TABLE `reacties` (
  `reactie_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `freelancer_id` int(11) DEFAULT NULL,
  `reactie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `type_user`
--

CREATE TABLE `type_user` (
  `type_id` int(11) NOT NULL,
  `naam` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `type_user`
--

INSERT INTO `type_user` (`type_id`, `naam`) VALUES
(1, 'freelancer'),
(2, 'klant');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`categorie_id`);

--
-- Indexen voor tabel `freelancers`
--
ALTER TABLE `freelancers`
  ADD PRIMARY KEY (`freelancer_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexen voor tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `klant_id` (`klant_id`),
  ADD KEY `freelancer_id` (`freelancer_id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Indexen voor tabel `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`klant_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexen voor tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `klant_id` (`klant_id`);

--
-- Indexen voor tabel `reacties`
--
ALTER TABLE `reacties`
  ADD PRIMARY KEY (`reactie_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `freelancer_id` (`freelancer_id`);

--
-- Indexen voor tabel `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `freelancers`
--
ALTER TABLE `freelancers`
  MODIFY `freelancer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `klant`
--
ALTER TABLE `klant`
  MODIFY `klant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `reacties`
--
ALTER TABLE `reacties`
  MODIFY `reactie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `type_user`
--
ALTER TABLE `type_user`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `freelancers`
--
ALTER TABLE `freelancers`
  ADD CONSTRAINT `freelancers_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_user` (`type_id`);

--
-- Beperkingen voor tabel `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`klant_id`) REFERENCES `klant` (`klant_id`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`freelancer_id`),
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`categorie_id`);

--
-- Beperkingen voor tabel `klant`
--
ALTER TABLE `klant`
  ADD CONSTRAINT `klant_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_user` (`type_id`);

--
-- Beperkingen voor tabel `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`categorie_id`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`klant_id`) REFERENCES `klant` (`klant_id`);

--
-- Beperkingen voor tabel `reacties`
--
ALTER TABLE `reacties`
  ADD CONSTRAINT `reacties_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `reacties_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`freelancer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
