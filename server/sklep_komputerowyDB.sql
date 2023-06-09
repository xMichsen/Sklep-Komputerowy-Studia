-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Maj 2023, 16:04
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep_komputerowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `koszyk_id` int(11) NOT NULL,
  `uzytkownik_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `koszyk`
--

INSERT INTO `koszyk` (`koszyk_id`, `uzytkownik_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(16, 16),
(17, 17),
(18, 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk_produkty`
--

CREATE TABLE `koszyk_produkty` (
  `koszyk_id` int(11) DEFAULT NULL,
  `id_produktu` int(11) DEFAULT NULL,
  `ilosc` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `koszyk_produkty`
--

INSERT INTO `koszyk_produkty` (`koszyk_id`, `id_produktu`, `ilosc`, `id`) VALUES
(3, 3, 1, 17),
(4, 3, 1, 18),
(5, 3, 1, 19),
(2, 10, 1, 21),
(2, 1, 1, 24),
(2, 1, 1, 25),
(16, 1, 1, 47),
(16, 1, 1, 51),
(16, 3, 1, 54),
(2, 4, 1, 76),
(2, 1, 1, 77),
(2, 8, 1, 78),
(2, 11, 1, 79),
(2, 29, 1, 80),
(8, 8, 1, 91),
(8, 11, 1, 92),
(8, 1, 1, 93),
(8, 4, 1, 94),
(1, 1, 1, 97),
(1, 4, 1, 98),
(1, 3, 1, 99),
(18, 1, 1, 100),
(18, 4, 1, 101),
(18, 21, 1, 102),
(18, 13, 1, 103),
(1, 9, 1, 104),
(1, NULL, 1, 106);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista`
--

CREATE TABLE `lista` (
  `lista_id` int(11) NOT NULL,
  `uzytkownik_id` int(11) DEFAULT NULL,
  `nazwa_listy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `lista`
--

INSERT INTO `lista` (`lista_id`, `uzytkownik_id`, `nazwa_listy`) VALUES
(24, 1, 'Kino domowe'),
(25, 8, 'na narty'),
(26, 1, 'Na studia'),
(27, 1, 'Do pracy'),
(29, 18, 'Kino domowe'),
(30, 1, 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista_produkty`
--

CREATE TABLE `lista_produkty` (
  `lista_id` int(11) DEFAULT NULL,
  `id_produktu` int(11) DEFAULT NULL,
  `ilosc` int(11) NOT NULL DEFAULT 1,
  `id_rekordu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `lista_produkty`
--

INSERT INTO `lista_produkty` (`lista_id`, `id_produktu`, `ilosc`, `id_rekordu`) VALUES
(24, 14, 1, 6),
(25, 8, 1, 7),
(24, 3, 1, 11),
(24, 6, 1, 13),
(27, 13, 1, 19),
(26, 13, 1, 20),
(27, 3, 1, 21),
(29, 16, 1, 23),
(26, 3, 1, 25),
(27, 29, 1, 26),
(24, 1, 1, 28),
(30, 46, 1, 29);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `opinia_id` int(11) UNSIGNED NOT NULL,
  `produkt_id` int(11) DEFAULT NULL,
  `uzytkownik_id` int(11) DEFAULT NULL,
  `tresc` text DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `opinie`
--

INSERT INTO `opinie` (`opinia_id`, `produkt_id`, `uzytkownik_id`, `tresc`, `ocena`) VALUES
(1, 1, 2, 'Świetny produkt!', 5),
(2, 1, 3, 'Słaba jakość wykonania', 2),
(4, 1, 1, 'Bardzo dobry produkt.', 5),
(6, 3, 3, 'Jakość produktu jest niska.', 1),
(7, 4, 4, 'Szybka dostawa.', 4),
(8, 5, 5, 'Cena jest przystępna.', 4),
(9, 6, 6, 'Świetna jakość dźwięku.', 5),
(10, 7, 7, 'Niezawodny produkt.', 4),
(11, 8, 8, 'Bardzo funkcjonalny.', 5),
(12, 9, 9, 'Trwały produkt.', 5),
(13, 10, 10, 'Produkt nie spełnił moich oczekiwań.', 2),
(14, 11, 11, 'Szybka i bezproblemowa obsługa.', 5),
(15, 12, 12, 'Produkt działa bez zarzutu.', 4),
(16, 13, 13, 'Nie jestem zadowolony z jakości produktu.', 2),
(17, 14, 14, 'Produkt nie działał od początku.', 1),
(18, 15, 1, 'Bardzo dobry stosunek jakości do ceny.', 5),
(19, 16, 2, 'Nie polecam tego produktu.', 1),
(20, 17, 3, 'Łatwy w użyciu.', 4),
(21, 18, 4, 'Nieoczekiwanie dobra jakość dźwięku.', 5),
(22, 19, 5, 'Szybka i profesjonalna obsługa klienta.', 5),
(23, 20, 6, 'Nie jestem zadowolony z wyglądu produktu.', 3),
(24, 21, 7, 'Szybka dostawa, produkt zgodny z opisem.', 4),
(25, 22, 8, 'Bardzo trwały produkt.', 5),
(26, 23, 9, 'Produkt jest po prostu średni.', 3),
(27, 24, 10, 'Nie działał od razu, ale obsługa klienta pomogła mi go uruchomić.', 4),
(28, 25, 11, 'Produkt spełnia moje oczekiwania.', 4),
(29, 26, 12, 'Bardzo dobry produkt, polecam!', 5),
(30, 27, 5, 'Produkt spełnił moje oczekiwania.', 4),
(31, 28, 9, 'Nie polecam, produkt się rozpadł po kilku dniach.', 1),
(32, 29, 1, 'Bardzo łatwy w obsłudze.', 5),
(33, 30, 3, 'Świetny stosunek jakości do ceny.', 4),
(34, 31, 7, 'Bardzo szybka dostawa, produkt zgodny z opisem.', 5),
(35, 32, 10, 'Nie jestem zadowolony z jakości wykonania.', 2),
(36, 33, 8, 'Produkt działa bez zarzutu.', 4),
(37, 34, 6, 'Łatwy w użyciu, polecam.', 5),
(38, 35, 2, 'Nieoczekiwanie dobra jakość obrazu.', 4),
(39, 36, 4, 'Produkt jest bardzo wytrzymały i solidnie wykonany.', 5),
(40, 37, 13, 'Nie polecam, nie działa zgodnie z opisem.', 2),
(41, 38, 14, 'Bardzo miły kontakt z obsługą klienta.', 5),
(42, 39, 6, 'Łatwe w obsłudze, nawet dla początkujących.', 4),
(43, 1, 2, 'Nie spełnił moich oczekiwań, nie polecam.', 2),
(45, 3, 9, 'Dobra jakość dźwięku, ale trochę za drogi.', 4),
(46, 4, 5, 'Produkt działa bez zarzutu, polecam.', 5),
(47, 5, 12, 'Szybka dostawa i profesjonalna obsługa klienta.', 5),
(48, 6, 10, 'Nieoczekiwanie dobry produkt, polecam.', 4),
(49, 7, 1, 'Nie jestem zadowolony z jakości wykonania.', 2),
(50, 8, 8, 'Produkt działa bez zarzutu, polecam.', 5),
(51, 9, 3, 'Łatwy w użyciu, polecam.', 4),
(52, 10, 11, 'Produkt spełnił moje oczekiwania.', 4),
(53, 11, 4, 'Świetny produkt, polecam.', 5),
(54, 12, 13, 'Nie polecam, produkt jest wadliwy.', 1),
(55, 13, 14, 'Produkt jest przeciętny, nie zachwycił mnie.', 3),
(56, 14, 6, 'Produkt jest bardzo wygodny w użyciu.', 4),
(57, 15, 2, 'Bardzo dobry stosunek jakości do ceny.', 5),
(58, 16, 7, 'Nie jestem zadowolony z jakości produktu.', 2),
(62, 1, 1, 'Testowa opinia', 1),
(63, 10, 1, 'Działa niezawodnie :)', 5),
(64, 46, 1, 'Wolny strasznie lepiej kupić SSD', 2),
(65, 1, 1, 'Super komputer liga śmiga', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `cena` decimal(10,2) NOT NULL,
  `zdjecie` varchar(200) NOT NULL,
  `opis` text NOT NULL,
  `kategoria` varchar(100) NOT NULL,
  `specyfikacje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa`, `cena`, `zdjecie`, `opis`, `kategoria`, `specyfikacje`) VALUES
(1, 'Komputer stacjonarny HP Pavilion 590-p0005nw', '2199.99', 'komputer.png', 'Opis produktu...', 'Komputery', 'Specyfikacje produktu...'),
(3, 'Konsola PlayStation 5', '2399.99', 'ps5.png', 'Opis produktu...', 'Gaming', 'Specyfikacje produktu...'),
(4, 'Laptop Lenovo IdeaPad 3 15ITL6', '3299.99', 'laptop.png', 'Opis produktu...', 'Komputery', 'Specyfikacje produktu...'),
(5, 'Monitor LG UltraGear 27GL83A-B', '1999.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(6, 'Telewizor LG OLED55C14LB', '7199.99', 'dummy.png', 'Opis produktu...', 'Telewizory', 'Specyfikacje produktu...'),
(7, 'Słuchawki bezprzewodowe Sony WH-1000XM4', '1399.99', 'dummy.png', 'Opis produktu...', 'Akcesoria', 'Specyfikacje produktu...'),
(8, 'Klawiatura mechaniczna HyperX Alloy FPS Pro', '389.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(9, 'Procesor Intel Core i7-11700K', '2299.99', 'dummy.png', 'Opis produktu...', 'Podzespoly', 'Specyfikacje produktu...'),
(10, 'Smartfon Xiaomi Mi 11 Lite 5G', '1499.99', 'dummy.png', 'Opis produktu...', 'Smartfony', 'Specyfikacje produktu...'),
(11, 'Klawiatura membranowa Logitech K120', '49.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(12, 'Mysz bezprzewodowa Logitech MX Master 3', '479.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(13, 'Karta graficzna GeForce RTX 3080 Ti', '7999.99', 'dummy.png', 'Opis produktu...', 'Podzespoly', 'Specyfikacje produktu...'),
(14, 'Słuchawki douszne JBL Tune 215TWS', '199.99', 'dummy.png', 'Opis produktu...', 'Akcesoria', 'Specyfikacje produktu...'),
(15, 'Smartfon iPhone 13 Pro', '5699.99', 'dummy.png', 'Opis produktu...', 'Smartfony', 'Specyfikacje'),
(16, 'Słuchawki bezprzewodowe JBL Tune 220TWS', '249.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(17, 'Klawiatura mechaniczna Logitech G213 Prodigy', '249.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(18, 'Mysz bezprzewodowa Logitech MX Anywhere 3', '399.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(19, 'Kabel HDMI 2.0', '49.99', 'dummy.png', 'Opis produktu...', 'Akcesoria', 'Specyfikacje produktu...'),
(20, 'Głośnik Bluetooth JBL Flip 5', '499.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(21, 'Telewizor Samsung UE50TU7172', '2599.99', 'dummy.png', 'Opis produktu...', 'Telewizory', 'Specyfikacje produktu...'),
(22, 'Kamera internetowa Logitech C920 HD Pro', '499.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(23, 'Drukarka laserowa HP LaserJet Pro M15w', '299.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(24, 'Procesor Intel Core i9-12900K', '3399.99', 'dummy.png', 'Opis produktu...', 'Podzespoly', 'Specyfikacje produktu...'),
(25, 'Karta graficzna Nvidia GeForce RTX 3080', '5999.99', 'dummy.png', 'Opis produktu...', 'Podzespoly', 'Specyfikacje produktu...'),
(26, 'Dysk SSD Samsung 970 EVO Plus 1TB', '999.99', 'dummy.png', 'Opis produktu...', 'Podzespoly', 'Specyfikacje produktu...'),
(27, 'Pamięć RAM Corsair Vengeance RGB Pro 32GB', '999.99', 'dummy.png', 'Opis produktu...', 'Podzespoly', 'Specyfikacje produktu...'),
(28, 'Smartwatch Samsung Galaxy Watch 4', '1199.99', 'dummy.png', 'Opis produktu...', 'Peryferia', 'Specyfikacje produktu...'),
(29, 'Gra Cyberpunk 2077', '199.99', 'dummy.png', 'Opis produktu...', 'Gaming', 'Specyfikacje produktu...'),
(30, 'Słuchawki bezprzewodowe Sony WH-1000XM4', '1299.99', 'dummy.png', 'Opis produktu...', 'Akcesoria', 'Specyfikacje produktu...'),
(31, 'Laptop Lenovo ThinkPad', '2999.99', 'dummy.png', 'Laptop dla wymagających użytkowników', 'Polecane', 'Procesor: Intel Core i7, RAM: 16GB, Dysk: 512GB SSD'),
(32, 'Komputer stacjonarny HP', '3499.99', 'dummy.png', 'Komputer idealny do pracy biurowej', 'Polecane', 'Procesor: Intel Core i5, RAM: 8GB, Dysk: 1TB HDD'),
(33, 'Smartfon Samsung Galaxy', '1499.99', 'dummy.png', 'Najnowszy model flagowy od Samsunga', 'Polecane', 'Ekran: 6,5 cala, Procesor: Exynos 2100, RAM: 8GB, Pamięć wewnętrzna: 256GB'),
(34, 'Tablet Apple iPad', '1999.99', 'dummy.png', 'Najnowszy model iPada z ekranem Retina', 'Polecane', 'Ekran: 10,2 cala, Procesor: A14 Bionic, Pamięć wewnętrzna: 128GB'),
(35, 'Klawiatura mechaniczna Logitech', '399.99', 'dummy.png', 'Profesjonalna klawiatura mechaniczna z podświetleniem RGB', 'Polecane', 'Typ przełączników: Romer-G Tactile, Podświetlenie: RGB, Klawisze programowalne'),
(36, 'Mysz gamingowa Razer', '249.99', 'dummy.png', 'Mysz dla wymagających graczy', 'Polecane', 'Czułość: 16000 DPI, Podświetlenie: RGB, Liczba przycisków: 7'),
(37, 'Słuchawki bezprzewodowe Sony', '899.99', 'dummy.png', 'Słuchawki bezprzewodowe z funkcją redukcji hałasu', 'Polecane', 'Typ bezprzewodowy: Bluetooth 5.0, Czas pracy na baterii: do 30 godzin'),
(38, 'Monitor Dell UltraSharp', '2799.99', 'dummy.png', 'Profesjonalny monitor z matrycą IPS i rozdzielczością 4K', 'Polecane', 'Rozdzielczość: 3840 x 2160, Przekątna ekranu: 27 cali, Częstotliwość odświeżania: 60 Hz'),
(39, 'Kamera internetowa Logitech', '449.99', 'dummy.png', 'Kamera internetowa dla profesjonalistów', 'Polecane', 'Rozdzielczość: Full HD 1080p, Kąt widzenia: 90 stopni, Mikrofon: stereo'),
(46, 'Dysk Twardy HDD 500GB', '300.00', 'dummy.png', 'Dysk HDD twardy', 'Promocje', 'Bardzo wolny ale tani');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id_uzytkownika` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `haslo` varchar(50) DEFAULT NULL,
  `rola` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id_uzytkownika`, `imie`, `email`, `login`, `haslo`, `rola`) VALUES
(1, 'Michał', 'xmichsen@gmail.com', 'michsen', 'haslo', 'admin'),
(2, 'MichuKFC', 'email@example.com', 'michukfc', 'haslo', 'admin'),
(3, 'Karol', 'email@example.com', 'kwojcik', 'haslo', 'admin'),
(4, 'Piotr', 'email@example.com', 'piopio', 'haslo', 'admin'),
(5, 'JP2', 'kremowka@gmail.com', 'JanPablo', 'haslo', 'uzytkownik'),
(6, 'Emilia', 'xd@wp.pl', 'erekawek', 'Leon1234', NULL),
(7, 'Paweł', 'pablo@op.pl', 'pablo', 'haslo1234', NULL),
(8, 'Małysz', 'amalysz@wp.pl', 'adammalysz', 'haslo1234', NULL),
(9, 'Pudzian', 'pudzian@gmail.com', 'pudzianowskiszef', 'haslo1234', NULL),
(10, 'testowy', 'tst@wp.pl', 'testowy1', 'haslo1234', NULL),
(11, 'testowy2', 'test2@wp.pl', 'testowy2', 'haslo1234', NULL),
(12, 'Grzegorz', 'icantbreathe@o2.pl', 'grzegorz', 'haslo1234', NULL),
(13, 'KrzysztofKonon', 'konon@wp.pl', 'kononowicz', 'haslo1234', NULL),
(14, 'Major', 'szkolna@wp.pl', 'major', 'haslo1234', NULL),
(16, 'test1', 'test@wp.pl', 'testowy', 'haslo1234', NULL),
(17, 'testowy9', 'sfsdfds@wp.pl', 'loginxd', 'haslo1234', NULL),
(18, 'Karol', 'michalsacharczuk99@gmail.com', 'loginTestowy2', 'haslo1234', NULL);

--
-- Wyzwalacze `uzytkownicy`
--
DELIMITER $$
CREATE TRIGGER `nowy_uzytkownik` AFTER INSERT ON `uzytkownicy` FOR EACH ROW BEGIN
  INSERT INTO koszyk (koszyk_id, uzytkownik_id) VALUES (NEW.id_uzytkownika, NEW.id_uzytkownika);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `data_zamowienia` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_uzytkownika`, `data_zamowienia`) VALUES
(1, 1, '2023-04-06 10:30:00'),
(2, 2, '2023-04-06 10:33:00'),
(3, 1, '2023-05-18 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia_produkty`
--

CREATE TABLE `zamowienia_produkty` (
  `id_zamowienia` int(11) NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zamowienia_produkty`
--

INSERT INTO `zamowienia_produkty` (`id_zamowienia`, `id_produktu`, `ilosc`) VALUES
(1, 4, 2),
(2, 3, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`koszyk_id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`);

--
-- Indeksy dla tabeli `koszyk_produkty`
--
ALTER TABLE `koszyk_produkty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `koszyk_id` (`koszyk_id`),
  ADD KEY `id_produktu` (`id_produktu`);

--
-- Indeksy dla tabeli `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`lista_id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`);

--
-- Indeksy dla tabeli `lista_produkty`
--
ALTER TABLE `lista_produkty`
  ADD PRIMARY KEY (`id_rekordu`),
  ADD KEY `lista_id` (`lista_id`),
  ADD KEY `id_produktu` (`id_produktu`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`opinia_id`),
  ADD KEY `produkt_id` (`produkt_id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownika`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `zamowienia_produkty`
--
ALTER TABLE `zamowienia_produkty`
  ADD PRIMARY KEY (`id_zamowienia`,`id_produktu`),
  ADD KEY `id_produktu` (`id_produktu`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `koszyk_produkty`
--
ALTER TABLE `koszyk_produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT dla tabeli `lista`
--
ALTER TABLE `lista`
  MODIFY `lista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `lista_produkty`
--
ALTER TABLE `lista_produkty`
  MODIFY `id_rekordu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `opinie`
--
ALTER TABLE `opinie`
  MODIFY `opinia_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownicy` (`id_uzytkownika`);

--
-- Ograniczenia dla tabeli `koszyk_produkty`
--
ALTER TABLE `koszyk_produkty`
  ADD CONSTRAINT `fk_koszyk_produkty_produkty` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`) ON DELETE CASCADE,
  ADD CONSTRAINT `koszyk_produkty_ibfk_1` FOREIGN KEY (`koszyk_id`) REFERENCES `koszyk` (`koszyk_id`),
  ADD CONSTRAINT `koszyk_produkty_ibfk_2` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`);

--
-- Ograniczenia dla tabeli `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `lista_ibfk_1` FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownicy` (`id_uzytkownika`);

--
-- Ograniczenia dla tabeli `lista_produkty`
--
ALTER TABLE `lista_produkty`
  ADD CONSTRAINT `fk_lista_id` FOREIGN KEY (`lista_id`) REFERENCES `lista` (`lista_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lista_produkty_produkty` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`) ON DELETE CASCADE,
  ADD CONSTRAINT `lista_produkty_ibfk_1` FOREIGN KEY (`lista_id`) REFERENCES `lista` (`lista_id`),
  ADD CONSTRAINT `lista_produkty_ibfk_2` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`);

--
-- Ograniczenia dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD CONSTRAINT `fk_opinie_produkty` FOREIGN KEY (`produkt_id`) REFERENCES `produkty` (`id_produktu`) ON DELETE CASCADE,
  ADD CONSTRAINT `opinie_ibfk_1` FOREIGN KEY (`produkt_id`) REFERENCES `produkty` (`id_produktu`),
  ADD CONSTRAINT `opinie_ibfk_2` FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownicy` (`id_uzytkownika`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`);

--
-- Ograniczenia dla tabeli `zamowienia_produkty`
--
ALTER TABLE `zamowienia_produkty`
  ADD CONSTRAINT `fk_zamowienia_produkty_produkty` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`) ON DELETE CASCADE,
  ADD CONSTRAINT `zamowienia_produkty_ibfk_1` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienia` (`id_zamowienia`),
  ADD CONSTRAINT `zamowienia_produkty_ibfk_2` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
