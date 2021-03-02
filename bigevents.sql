-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 05. Dez 2020 um 17:01
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bigevents`
--
CREATE DATABASE IF NOT EXISTS `bigevents` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bigevents`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'number',
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_number` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone_number`, `city`, `zip`, `street`, `house_number`, `url`, `type`) VALUES
(1, 'ORF Radiokulturhaus - extralive', '2020-12-06 20:30:00', 'Online Streaming  The ORF Radiokulturhaus brings culture into the living room in the second Lockdown. Cabaret, readings and concert recordings are on the programme.', 'https://events.wien.info/media/full/RKHGro%C3%9FerSendesaal.jpg', 5000, 'radiokulturhaus@orf.at', '43150170377', 'Vienna', 1040, 'Argentinierstraße', 30, 'radiokulturhaus.orf.at', 'Music'),
(2, 'Porgy & Bess – The show must go on(line)', '2020-12-09 20:00:00', 'Online Streaming \"Pay as you wish\"', 'https://events.wien.info/media/full/04172_4.jpg', 10000, 'porgy@porgy.at', '4315128811', 'Vienna', 1010, 'Riemergasse', 11, 'www.porgy.at', 'Theater'),
(4, 'Red Vienna', '2020-12-12 16:00:00', 'How social democracy began making Vienna a city worth living in for everyone a hundred years ago.', 'https://www.wien.info/media/images/50719-gemeindebau-karl-marx-hof-aussenansicht-innenhof-park-baeume-3to2.jpeg/image_gallery', 12000, 'info@dasrotewien-waschsalon.at', '43112345678', 'Vienna', 1190, 'Halteraugasse', 7, 'http://dasrotewien-waschsalon.at/', 'Movie'),
(5, 'More than a fitted kitchen', '2020-12-19 15:30:00', 'Margarete Schütte-Lihotzky is known nowadays, if at all, as the inventor of the fitted kitchen.', 'https://www.wien.info/media/images/margarete-schuette-lihotzky-3to2-1.jpeg', 9000, 'office@MAK.at', '431711360', 'Vienna', 1010, 'Stubenring', 5, 'http://www.mak.at/', 'Sport');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'test@test.com', '[]', '$2y$13$eZPHKPzmofCxOy2mwlaDP.r/CJArXjptmw.X0/aXzqUVcmNAtudGm');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
