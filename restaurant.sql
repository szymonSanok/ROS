-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Lis 2017, 11:48
-- Wersja serwera: 5.7.14
-- Wersja PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `restaurant`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bread`
--

CREATE TABLE `bread` (
  `id_bread` int(11) NOT NULL,
  `keb_bulka` int(11) NOT NULL,
  `keb_ciasto` int(11) NOT NULL,
  `keb_tortilla` int(11) NOT NULL,
  `keb_drwal` int(11) NOT NULL,
  `hamburger` int(11) NOT NULL,
  `drwal` int(11) NOT NULL,
  `zapiekanka` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `bread`
--

INSERT INTO `bread` (`id_bread`, `keb_bulka`, `keb_ciasto`, `keb_tortilla`, `keb_drwal`, `hamburger`, `drwal`, `zapiekanka`) VALUES
(1, 100, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dodatki`
--

CREATE TABLE `dodatki` (
  `id_dodatki` int(11) NOT NULL,
  `rodzaj` varchar(30) NOT NULL,
  `data` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `dodatki`
--

INSERT INTO `dodatki` (`id_dodatki`, `rodzaj`, `data`) VALUES
(11, 'Nuggetsy male', '25-06-2017 | 11:04:45'),
(10, 'Frytki duze', '25-06-2017 | 11:04:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hamburger`
--

CREATE TABLE `hamburger` (
  `id_hamburger` int(11) NOT NULL,
  `bread` varchar(30) NOT NULL,
  `vege` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `hamburger`
--

INSERT INTO `hamburger` (`id_hamburger`, `bread`, `vege`, `date`) VALUES
(8, 'MegaBurger', 'pomidor ', '25-06-2017 | 11:04:13'),
(9, 'Drwal', 'szczypior cebula ', '25-06-2017 | 11:04:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inne`
--

CREATE TABLE `inne` (
  `id_inne` int(11) NOT NULL,
  `frytki` int(11) NOT NULL,
  `wafle` int(11) NOT NULL,
  `fanex` int(11) NOT NULL,
  `sol` int(11) NOT NULL,
  `lody` int(11) NOT NULL,
  `nuggettsy` int(11) NOT NULL,
  `ser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `inne`
--

INSERT INTO `inne` (`id_inne`, `frytki`, `wafle`, `fanex`, `sol`, `lody`, `nuggettsy`, `ser`) VALUES
(1, 100, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kebab`
--

CREATE TABLE `kebab` (
  `id_kebab` int(30) NOT NULL,
  `bread` varchar(30) NOT NULL,
  `meat` varchar(30) NOT NULL,
  `sosy` varchar(30) NOT NULL,
  `vege` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `nr_zamowienia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `kebab`
--

INSERT INTO `kebab` (`id_kebab`, `bread`, `meat`, `sosy`, `vege`, `date`, `nr_zamowienia`) VALUES
(68, 'Bulka', 'wol', 'mieszany', 'ogorek ', '02-10-2017 | 01:29:15', 0),
(67, 'Bulka', 'wol', 'mieszany', 'pomidor ', '07-09-2017 | 15:17:00', 0),
(66, 'Ciasto', 'drob', 'mieszany', 'pomidor ', '28-06-2017 | 13:24:16', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `meat`
--

CREATE TABLE `meat` (
  `id_meat` int(11) NOT NULL,
  `drob` int(11) NOT NULL,
  `wolowina` int(11) NOT NULL,
  `hamburger` int(11) NOT NULL,
  `drwal` int(11) NOT NULL,
  `salami` int(11) NOT NULL,
  `szynka` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `meat`
--

INSERT INTO `meat` (`id_meat`, `drob`, `wolowina`, `hamburger`, `drwal`, `salami`, `szynka`) VALUES
(1, 100, 67, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `napoje`
--

CREATE TABLE `napoje` (
  `id_napoje` int(11) NOT NULL,
  `woda_gaz` int(11) NOT NULL,
  `woda_ngaz` int(11) NOT NULL,
  `pepsi_b` int(11) NOT NULL,
  `fanta_b` int(11) NOT NULL,
  `sprite_b` int(11) NOT NULL,
  `nestea_b` int(11) NOT NULL,
  `mountain_b` int(11) NOT NULL,
  `pepsi_p` int(11) NOT NULL,
  `fanta_p` int(11) NOT NULL,
  `sprite_p` int(11) NOT NULL,
  `nestea_p` int(11) NOT NULL,
  `mountain_p` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `napoje`
--

INSERT INTO `napoje` (`id_napoje`, `woda_gaz`, `woda_ngaz`, `pepsi_b`, `fanta_b`, `sprite_b`, `nestea_b`, `mountain_b`, `pepsi_p`, `fanta_p`, `sprite_p`, `nestea_p`, `mountain_p`) VALUES
(1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `piwo`
--

CREATE TABLE `piwo` (
  `id_piwo` int(11) NOT NULL,
  `tyskie` int(11) NOT NULL,
  `zubr` int(11) NOT NULL,
  `lech` int(11) NOT NULL,
  `redds` int(11) NOT NULL,
  `prazubr` int(11) NOT NULL,
  `debowe` int(11) NOT NULL,
  `shandy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `piwo`
--

INSERT INTO `piwo` (`id_piwo`, `tyskie`, `zubr`, `lech`, `redds`, `prazubr`, `debowe`, `shandy`) VALUES
(1, 100, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sosy`
--

CREATE TABLE `sosy` (
  `id_sosy` int(11) NOT NULL,
  `czosnek` int(11) NOT NULL,
  `ostry` int(11) NOT NULL,
  `ketchup` int(11) NOT NULL,
  `majonez` int(11) NOT NULL,
  `remoulada` int(11) NOT NULL,
  `wyspy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sosy`
--

INSERT INTO `sosy` (`id_sosy`, `czosnek`, `ostry`, `ketchup`, `majonez`, `remoulada`, `wyspy`) VALUES
(1, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vege`
--

CREATE TABLE `vege` (
  `id_vege` int(11) NOT NULL,
  `kap_biala` int(11) NOT NULL,
  `kap_czerwona` int(11) NOT NULL,
  `pomidor` int(11) NOT NULL,
  `ogorek` int(11) NOT NULL,
  `cebula` int(11) NOT NULL,
  `salata` int(11) NOT NULL,
  `kiszony` int(11) NOT NULL,
  `kukurydza` int(11) NOT NULL,
  `szczypior` int(11) NOT NULL,
  `prazona` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vege`
--

INSERT INTO `vege` (`id_vege`, `kap_biala`, `kap_czerwona`, `pomidor`, `ogorek`, `cebula`, `salata`, `kiszony`, `kukurydza`, `szczypior`, `prazona`) VALUES
(1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_kebab` int(11) NOT NULL,
  `id_zapiekanki` int(11) NOT NULL,
  `id_inne` int(11) NOT NULL,
  `id_hamburger` int(11) NOT NULL,
  `id_piwo` int(11) NOT NULL,
  `id_napoje` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapiekanki`
--

CREATE TABLE `zapiekanki` (
  `id_zapiekanki` int(11) NOT NULL,
  `bread` varchar(30) NOT NULL,
  `sosy` varchar(30) NOT NULL,
  `vege` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `zapiekanki`
--

INSERT INTO `zapiekanki` (`id_zapiekanki`, `bread`, `sosy`, `vege`, `date`) VALUES
(16, 'Salami', 'ostry Majonez ', 'szczypior pomidor ', '25-06-2017 | 11:04:31'),
(14, 'Prazona', 'mieszany lagodny ', 'cebula szczypior ', '25-06-2017 | 10:59:27'),
(15, 'Prazona', 'ostry ketchup ', 'ogorek pomidor ', '25-06-2017 | 11:00:22');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `bread`
--
ALTER TABLE `bread`
  ADD PRIMARY KEY (`id_bread`),
  ADD UNIQUE KEY `id_bread` (`id_bread`);

--
-- Indexes for table `dodatki`
--
ALTER TABLE `dodatki`
  ADD PRIMARY KEY (`id_dodatki`);

--
-- Indexes for table `hamburger`
--
ALTER TABLE `hamburger`
  ADD PRIMARY KEY (`id_hamburger`);

--
-- Indexes for table `inne`
--
ALTER TABLE `inne`
  ADD PRIMARY KEY (`id_inne`),
  ADD UNIQUE KEY `id_inne` (`id_inne`);

--
-- Indexes for table `kebab`
--
ALTER TABLE `kebab`
  ADD PRIMARY KEY (`id_kebab`);

--
-- Indexes for table `meat`
--
ALTER TABLE `meat`
  ADD PRIMARY KEY (`id_meat`),
  ADD UNIQUE KEY `id_meat` (`id_meat`);

--
-- Indexes for table `napoje`
--
ALTER TABLE `napoje`
  ADD PRIMARY KEY (`id_napoje`),
  ADD UNIQUE KEY `id_napoje` (`id_napoje`);

--
-- Indexes for table `piwo`
--
ALTER TABLE `piwo`
  ADD PRIMARY KEY (`id_piwo`),
  ADD UNIQUE KEY `id_piwo` (`id_piwo`);

--
-- Indexes for table `sosy`
--
ALTER TABLE `sosy`
  ADD PRIMARY KEY (`id_sosy`),
  ADD UNIQUE KEY `id_sosy` (`id_sosy`);

--
-- Indexes for table `vege`
--
ALTER TABLE `vege`
  ADD PRIMARY KEY (`id_vege`),
  ADD UNIQUE KEY `id_vege` (`id_vege`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_kebab` (`id_kebab`),
  ADD KEY `id_zapiekanki` (`id_zapiekanki`),
  ADD KEY `id_inne` (`id_inne`),
  ADD KEY `id_hamburger` (`id_hamburger`),
  ADD KEY `id_piwo` (`id_piwo`),
  ADD KEY `id_napoje` (`id_napoje`);

--
-- Indexes for table `zapiekanki`
--
ALTER TABLE `zapiekanki`
  ADD PRIMARY KEY (`id_zapiekanki`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `bread`
--
ALTER TABLE `bread`
  MODIFY `id_bread` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `dodatki`
--
ALTER TABLE `dodatki`
  MODIFY `id_dodatki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `hamburger`
--
ALTER TABLE `hamburger`
  MODIFY `id_hamburger` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `inne`
--
ALTER TABLE `inne`
  MODIFY `id_inne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `kebab`
--
ALTER TABLE `kebab`
  MODIFY `id_kebab` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT dla tabeli `meat`
--
ALTER TABLE `meat`
  MODIFY `id_meat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `napoje`
--
ALTER TABLE `napoje`
  MODIFY `id_napoje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `piwo`
--
ALTER TABLE `piwo`
  MODIFY `id_piwo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `sosy`
--
ALTER TABLE `sosy`
  MODIFY `id_sosy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `vege`
--
ALTER TABLE `vege`
  MODIFY `id_vege` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `zapiekanki`
--
ALTER TABLE `zapiekanki`
  MODIFY `id_zapiekanki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
