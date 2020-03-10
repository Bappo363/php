-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 mrt 2020 om 10:30
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '39537b21ea9274f006cc802b537a516c'),
(3, 'Admin1', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `active`) VALUES
(1, 'tafellamp', 'Tafellampen zijn binnenlampen voor op tafel.', 1),
(2, 'buitenlamp', 'Buiten lampen zijn gemaakt om buiten te staan.', 1),
(3, 'designlamp', 'Mooie lamp.', 1),
(4, 'bureaulamp', 'Lampen gemaakt voor op een bureau.', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `street` varchar(54) NOT NULL,
  `houseNumber` int(4) NOT NULL,
  `houseNumber_addon` varchar(2) NOT NULL,
  `zipCode` varchar(6) NOT NULL,
  `city` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `mailadres` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `newsletter_subscription` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `customer`
--

INSERT INTO `customer` (`id`, `gender`, `firstName`, `middleName`, `lastName`, `street`, `houseNumber`, `houseNumber_addon`, `zipCode`, `city`, `phone`, `mailadres`, `password`, `newsletter_subscription`) VALUES
(1, '0', 'Dennis', 'van', 'Storm', 'Duivenstraat', 12, 'B', '1215LN', 'Hilversum', 612391956, 'dennis_storm@hotmail.co.u', '7d0db380a5b95a8ba1da0bca241abda1', 0),
(2, '0', 'Karel', '', 'Ankerwoud', 'Woudstraat', 120, 'BA', '0812RA', 'Waspik', 614925410, 'Karel.anker@gmail.com', '187ef4436122d1cc2f40dc2b92f0eba0', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(300) NOT NULL,
  `category_id` int(20) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `color` varchar(15) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `price`, `color`, `weight`, `active`) VALUES
(2, 'arstid', '.', 1, '39.95', 'wit', '300', 1),
(3, 'buitenlamp', '.', 2, '49.99', 'zwart', '500', 1),
(4, 'gans-lamp', '.', 3, '69.99', 'grey', '750', 1),
(5, 'giraf-lamp', '.', 3, '99.99', 'geel, zwart', '1000', 1),
(6, 'hektar', '.', 1, '39.95', 'zwart', '400', 1),
(7, 'jesse', '.', 3, '49.99', 'zwart', '600', 1),
(8, 'lampje', '.', 3, '99.99', 'zwart', '300', 1),
(9, 'llahra', '.', 3, '49.99', 'donker-bruin', '300', 1),
(10, 'struisvogellamp', '.', 3, '79.99', 'goud', '600', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `image` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `active`) VALUES
(1, 1, 'arstid.jpg', 1),
(2, 2, 'buitenlamp.jpg', 1),
(3, 2, 'buitenlamp2.jpg', 1),
(4, 3, 'gans.jpg', 1),
(5, 3, 'giraf.jpg', 1),
(6, 3, 'giraf2.jpg', 1),
(7, 4, 'hektar.jpg', 1),
(8, 3, 'jesse.png', 1),
(9, 3, 'lampje.jpg', 1),
(10, 4, 'llahra.png', 1),
(11, 3, 'struisvogel.jpg', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `birthDate` date NOT NULL,
  `e-mailadres` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstName`, `middleName`, `lastName`, `birthDate`, `e-mailadres`, `password`) VALUES
(1, 'Tim', '', 'Prins', '2003-09-28', 'tim2003.p@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Jan', 'van', 'Os', '2020-03-02', 'jos@glu.nl', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
