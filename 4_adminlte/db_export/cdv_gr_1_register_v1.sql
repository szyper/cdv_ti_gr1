-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Maj 2023, 10:54
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
-- Baza danych: `cdv_gr_1_register`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `city` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city`) VALUES
(1, 2, 'Bolesławiec'),
(2, 2, 'Nowogrodziec'),
(3, 2, 'Bielawa'),
(4, 2, 'Dzierżoniów'),
(5, 2, 'Pieszyce'),
(6, 2, 'Piława Górna'),
(7, 2, 'Niemcza'),
(8, 2, 'Głogów'),
(9, 2, 'Góra'),
(10, 2, 'Wąsosz'),
(11, 2, 'Jawor'),
(12, 2, 'Bolków'),
(13, 2, 'Karpacz'),
(14, 2, 'Kowary'),
(15, 2, 'Piechowice'),
(16, 2, 'Szklarska Poręba'),
(17, 2, 'Kamienna Góra'),
(18, 2, 'Lubawka'),
(19, 2, 'Duszniki-Zdrój'),
(20, 2, 'Kłodzko'),
(21, 2, 'Kudowa-Zdrój'),
(22, 2, 'Nowa Ruda'),
(23, 2, 'Polanica-Zdrój'),
(24, 2, 'Bystrzyca Kłodzka'),
(25, 2, 'Lądek-Zdrój'),
(26, 2, 'Międzylesie'),
(27, 2, 'Radków'),
(28, 2, 'Stronie Śląskie'),
(29, 2, 'Szczytna'),
(30, 2, 'Chojnów'),
(31, 2, 'Prochowice'),
(32, 2, 'Lubań'),
(33, 2, 'Świeradów-Zdrój'),
(34, 2, 'Leśna'),
(35, 2, 'Olszyna'),
(36, 2, 'Lubin'),
(37, 2, 'Ścinawa'),
(38, 2, 'Gryfów Śląski'),
(39, 2, 'Lubomierz'),
(40, 2, 'Lwówek Śląski'),
(41, 2, 'Mirsk'),
(42, 2, 'Wleń'),
(43, 2, 'Milicz'),
(44, 2, 'Oleśnica'),
(45, 2, 'Bierutów'),
(46, 2, 'Międzybórz'),
(47, 2, 'Syców'),
(48, 2, 'Twardogóra'),
(49, 2, 'Oława'),
(50, 2, 'Jelcz-Laskowice'),
(51, 2, 'Chocianów'),
(52, 2, 'Polkowice'),
(53, 2, 'Przemków'),
(54, 2, 'Strzelin'),
(55, 2, 'Wiązów'),
(56, 2, 'Środa Śląska'),
(57, 2, 'Świdnica'),
(58, 2, 'Świebodzice'),
(59, 2, 'Jaworzyna Śląska'),
(60, 2, 'Strzegom'),
(61, 2, 'Żarów'),
(62, 2, 'Oborniki Śląskie'),
(63, 2, 'Prusice'),
(64, 2, 'Trzebnica'),
(65, 2, 'Żmigród'),
(66, 2, 'Boguszów-Gorce'),
(67, 2, 'Jedlina-Zdrój'),
(68, 2, 'Szczawno-Zdrój'),
(69, 2, 'Głuszyca'),
(70, 2, 'Mieroszów'),
(71, 2, 'Brzeg Dolny'),
(72, 2, 'Wołów'),
(73, 2, 'Kąty Wrocławskie'),
(74, 2, 'Sobótka'),
(75, 2, 'Siechnice'),
(76, 2, 'Bardo'),
(77, 2, 'Ząbkowice Śląskie'),
(78, 2, 'Ziębice'),
(79, 2, 'Złoty Stok'),
(80, 2, 'Zawidów'),
(81, 2, 'Zgorzelec'),
(82, 2, 'Bogatynia'),
(83, 2, 'Pieńsk'),
(84, 2, 'Węgliniec'),
(85, 2, 'Wojcieszów'),
(86, 2, 'Złotoryja'),
(87, 2, 'Świerzawa'),
(88, 2, 'Jelenia Góra'),
(89, 2, 'Legnica'),
(90, 2, 'Wrocław'),
(91, 2, 'Wałbrzych'),
(92, 4, 'Aleksandrów Kujawski'),
(93, 4, 'Ciechocinek'),
(94, 4, 'Nieszawa'),
(95, 4, 'Brodnica'),
(96, 4, 'Górzno'),
(97, 4, 'Jabłonowo Pomorskie'),
(98, 4, 'Koronowo'),
(99, 4, 'Solec Kujawski'),
(100, 4, 'Chełmno'),
(101, 4, 'Golub-Dobrzyń'),
(102, 4, 'Kowalewo Pomorskie'),
(103, 4, 'Łasin'),
(104, 4, 'Radzyń Chełmiński'),
(105, 4, 'Inowrocław'),
(106, 4, 'Gniewkowo'),
(107, 4, 'Janikowo'),
(108, 4, 'Kruszwica'),
(109, 4, 'Pakość'),
(110, 4, 'Lipno'),
(111, 4, 'Dobrzyń nad Wisłą'),
(112, 4, 'Skępe'),
(113, 4, 'Mogilno'),
(114, 4, 'Strzelno'),
(115, 4, 'Kcynia'),
(116, 4, 'Mrocza'),
(117, 4, 'Nakło nad Notecią'),
(118, 4, 'Szubin'),
(119, 4, 'Radziejów'),
(120, 4, 'Piotrków Kujawski'),
(121, 4, 'Rypin'),
(122, 4, 'Kamień Krajeński'),
(123, 4, 'Sępólno Krajeńskie'),
(124, 4, 'Więcbork'),
(125, 4, 'Nowe'),
(126, 4, 'Świecie'),
(127, 4, 'Chełmża'),
(128, 4, 'Tuchola'),
(129, 4, 'Wąbrzeźno'),
(130, 4, 'Kowal'),
(131, 4, 'Brześć Kujawski'),
(132, 4, 'Chodecz'),
(133, 4, 'Izbica Kujawska'),
(134, 4, 'Lubień Kujawski'),
(135, 4, 'Lubraniec'),
(136, 4, 'Barcin'),
(137, 4, 'Janowiec Wielkopolski'),
(138, 4, 'Łabiszyn'),
(139, 4, 'Żnin'),
(140, 4, 'Bydgoszcz'),
(141, 4, 'Grudziądz'),
(142, 4, 'Toruń'),
(143, 4, 'Włocławek'),
(144, 6, 'Międzyrzec Podlaski'),
(145, 6, 'Terespol'),
(146, 6, 'Biłgoraj'),
(147, 6, 'Frampol'),
(148, 6, 'Józefów'),
(149, 6, 'Tarnogród'),
(150, 6, 'Rejowiec Fabryczny'),
(151, 6, 'Siedliszcze'),
(152, 6, 'Hrubieszów'),
(153, 6, 'Janów Lubelski'),
(154, 6, 'Modliborzyce'),
(155, 6, 'Krasnystaw'),
(156, 6, 'Kraśnik'),
(157, 6, 'Annopol'),
(158, 6, 'Urzędów'),
(159, 6, 'Lubartów'),
(160, 6, 'Kock'),
(161, 6, 'Ostrów Lubelski'),
(162, 6, 'Bełżyce'),
(163, 6, 'Bychawa'),
(164, 6, 'Łęczna'),
(165, 6, 'Łuków'),
(166, 6, 'Stoczek Łukowski'),
(167, 6, 'Opole Lubelskie'),
(168, 6, 'Poniatowa'),
(169, 6, 'Parczew'),
(170, 6, 'Puławy'),
(171, 6, 'Kazimierz Dolny'),
(172, 6, 'Nałęczów'),
(173, 6, 'Radzyń Podlaski'),
(174, 6, 'Dęblin'),
(175, 6, 'Ryki'),
(176, 6, 'Świdnik'),
(177, 6, 'Piaski'),
(178, 6, 'Tomaszów Lubelski'),
(179, 6, 'Lubycza Królewska'),
(180, 6, 'Łaszczów'),
(181, 6, 'Tyszowce'),
(182, 6, 'Włodawa'),
(183, 6, 'Krasnobród'),
(184, 6, 'Szczebrzeszyn'),
(185, 6, 'Zwierzyniec'),
(186, 6, 'Biała Podlaska'),
(187, 6, 'Chełm'),
(188, 6, 'Lublin'),
(189, 6, 'Zamość'),
(190, 8, 'Kostrzyn nad Odrą'),
(191, 8, 'Witnica'),
(192, 8, 'Gubin'),
(193, 8, 'Krosno Odrzańskie'),
(194, 8, 'Międzyrzecz'),
(195, 8, 'Skwierzyna'),
(196, 8, 'Trzciel'),
(197, 8, 'Nowa Sól'),
(198, 8, 'Bytom Odrzański'),
(199, 8, 'Kożuchów'),
(200, 8, 'Nowe Miasteczko'),
(201, 8, 'Cybinka'),
(202, 8, 'Ośno Lubuskie'),
(203, 8, 'Rzepin'),
(204, 8, 'Słubice'),
(205, 8, 'Dobiegniew'),
(206, 8, 'Drezdenko'),
(207, 8, 'Strzelce Krajeńskie'),
(208, 8, 'Lubniewice'),
(209, 8, 'Sulęcin'),
(210, 8, 'Torzym'),
(211, 8, 'Świebodzin'),
(212, 8, 'Zbąszynek'),
(213, 8, 'Babimost'),
(214, 8, 'Czerwieńsk'),
(215, 8, 'Kargowa'),
(216, 8, 'Nowogród Bobrzański'),
(217, 8, 'Sulechów'),
(218, 8, 'Gozdnica'),
(219, 8, 'Żagań'),
(220, 8, 'Iłowa'),
(221, 8, 'Małomice'),
(222, 8, 'Szprotawa'),
(223, 8, 'Łęknica'),
(224, 8, 'Żary'),
(225, 8, 'Jasień'),
(226, 8, 'Lubsko'),
(227, 8, 'Sława'),
(228, 8, 'Szlichtyngowa'),
(229, 8, 'Wschowa'),
(230, 8, 'Gorzów Wielkopolski'),
(231, 8, 'Zielona Góra'),
(232, 10, 'Bełchatów'),
(233, 10, 'Zelów'),
(234, 10, 'Kutno'),
(235, 10, 'Krośniewice'),
(236, 10, 'Żychlin'),
(237, 10, 'Łask'),
(238, 10, 'Łęczyca'),
(239, 10, 'Łowicz'),
(240, 10, 'Koluszki'),
(241, 10, 'Rzgów'),
(242, 10, 'Tuszyn'),
(243, 10, 'Drzewica'),
(244, 10, 'Opoczno'),
(245, 10, 'Konstantynów Łódzki'),
(246, 10, 'Pabianice'),
(247, 10, 'Działoszyn'),
(248, 10, 'Pajęczno'),
(249, 10, 'Sulejów'),
(250, 10, 'Wolbórz'),
(251, 10, 'Poddębice'),
(252, 10, 'Uniejów'),
(253, 10, 'Radomsko'),
(254, 10, 'Kamieńsk'),
(255, 10, 'Przedbórz'),
(256, 10, 'Rawa Mazowiecka'),
(257, 10, 'Biała Rawska'),
(258, 10, 'Sieradz'),
(259, 10, 'Błaszki'),
(260, 10, 'Warta'),
(261, 10, 'Złoczew'),
(262, 10, 'Tomaszów Mazowiecki'),
(263, 10, 'Wieluń'),
(264, 10, 'Wieruszów'),
(265, 10, 'Zduńska Wola'),
(266, 10, 'Szadek'),
(267, 10, 'Głowno'),
(268, 10, 'Ozorków'),
(269, 10, 'Zgierz'),
(270, 10, 'Aleksandrów Łódzki'),
(271, 10, 'Stryków'),
(272, 10, 'Brzeziny'),
(273, 10, 'Łódź'),
(274, 10, 'Piotrków Trybunalski'),
(275, 10, 'Skierniewice'),
(276, 12, 'Bochnia'),
(277, 12, 'Nowy Wiśnicz'),
(278, 12, 'Brzesko'),
(279, 12, 'Czchów'),
(280, 12, 'Alwernia'),
(281, 12, 'Chrzanów'),
(282, 12, 'Libiąż'),
(283, 12, 'Trzebinia'),
(284, 12, 'Dąbrowa Tarnowska'),
(285, 12, 'Szczucin'),
(286, 12, 'Gorlice'),
(287, 12, 'Biecz'),
(288, 12, 'Bobowa'),
(289, 12, 'Krzeszowice'),
(290, 12, 'Skała'),
(291, 12, 'Skawina'),
(292, 12, 'Słomniki'),
(293, 12, 'Świątniki Górne'),
(294, 12, 'Limanowa'),
(295, 12, 'Mszana Dolna'),
(296, 12, 'Miechów'),
(297, 12, 'Dobczyce'),
(298, 12, 'Myślenice'),
(299, 12, 'Sułkowice'),
(300, 12, 'Grybów'),
(301, 12, 'Krynica-Zdrój'),
(302, 12, 'Muszyna'),
(303, 12, 'Piwniczna-Zdrój'),
(304, 12, 'Stary Sącz'),
(305, 12, 'Nowy Targ'),
(306, 12, 'Szczawnica'),
(307, 12, 'Rabka-Zdrój'),
(308, 12, 'Bukowno'),
(309, 12, 'Olkusz'),
(310, 12, 'Wolbrom'),
(311, 12, 'Oświęcim'),
(312, 12, 'Brzeszcze'),
(313, 12, 'Chełmek'),
(314, 12, 'Kęty'),
(315, 12, 'Zator'),
(316, 12, 'Nowe Brzesko'),
(317, 12, 'Proszowice'),
(318, 12, 'Jordanów'),
(319, 12, 'Sucha Beskidzka'),
(320, 12, 'Maków Podhalański'),
(321, 12, 'Ciężkowice'),
(322, 12, 'Radłów'),
(323, 12, 'Ryglice'),
(324, 12, 'Tuchów'),
(325, 12, 'Wojnicz'),
(326, 12, 'Zakliczyn'),
(327, 12, 'Żabno'),
(328, 12, 'Zakopane'),
(329, 12, 'Andrychów'),
(330, 12, 'Kalwaria Zebrzydowska'),
(331, 12, 'Wadowice'),
(332, 12, 'Niepołomice'),
(333, 12, 'Wieliczka'),
(334, 12, 'Kraków'),
(335, 12, 'Nowy Sącz'),
(336, 12, 'Tarnów'),
(337, 14, 'Białobrzegi'),
(338, 14, 'Wyśmierzyce'),
(339, 14, 'Ciechanów'),
(340, 14, 'Glinojeck'),
(341, 14, 'Garwolin'),
(342, 14, 'Łaskarzew'),
(343, 14, 'Pilawa'),
(344, 14, 'Żelechów'),
(345, 14, 'Gostynin'),
(346, 14, 'Milanówek'),
(347, 14, 'Podkowa Leśna'),
(348, 14, 'Grodzisk Mazowiecki'),
(349, 14, 'Grójec'),
(350, 14, 'Mogielnica'),
(351, 14, 'Nowe Miasto nad Pilicą'),
(352, 14, 'Warka'),
(353, 14, 'Kozienice'),
(354, 14, 'Legionowo'),
(355, 14, 'Serock'),
(356, 14, 'Lipsko'),
(357, 14, 'Łosice'),
(358, 14, 'Maków Mazowiecki'),
(359, 14, 'Różan'),
(360, 14, 'Mińsk Mazowiecki'),
(361, 14, 'Halinów'),
(362, 14, 'Kałuszyn'),
(363, 14, 'Mrozy'),
(364, 14, 'Sulejówek'),
(365, 14, 'Mława'),
(366, 14, 'Nowy Dwór Mazowiecki'),
(367, 14, 'Nasielsk'),
(368, 14, 'Zakroczym'),
(369, 14, 'Myszyniec'),
(370, 14, 'Ostrów Mazowiecka'),
(371, 14, 'Brok'),
(372, 14, 'Józefów'),
(373, 14, 'Otwock'),
(374, 14, 'Karczew'),
(375, 14, 'Góra Kalwaria'),
(376, 14, 'Konstancin-Jeziorna'),
(377, 14, 'Piaseczno'),
(378, 14, 'Tarczyn'),
(379, 14, 'Drobin'),
(380, 14, 'Gąbin'),
(381, 14, 'Wyszogród'),
(382, 14, 'Płońsk'),
(383, 14, 'Raciąż'),
(384, 14, 'Piastów'),
(385, 14, 'Pruszków'),
(386, 14, 'Brwinów'),
(387, 14, 'Przasnysz'),
(388, 14, 'Chorzele'),
(389, 14, 'Przysucha'),
(390, 14, 'Pułtusk'),
(391, 14, 'Pionki'),
(392, 14, 'Iłża'),
(393, 14, 'Skaryszew'),
(394, 14, 'Mordy'),
(395, 14, 'Sierpc'),
(396, 14, 'Sochaczew'),
(397, 14, 'Sokołów Podlaski'),
(398, 14, 'Kosów Lacki'),
(399, 14, 'Szydłowiec'),
(400, 14, 'Błonie'),
(401, 14, 'Łomianki'),
(402, 14, 'Ożarów Mazowiecki'),
(403, 14, 'Węgrów'),
(404, 14, 'Łochów'),
(405, 14, 'Kobyłka'),
(406, 14, 'Marki'),
(407, 14, 'Ząbki'),
(408, 14, 'Zielonka'),
(409, 14, 'Radzymin'),
(410, 14, 'Tłuszcz'),
(411, 14, 'Wołomin'),
(412, 14, 'Wyszków'),
(413, 14, 'Zwoleń'),
(414, 14, 'Bieżuń'),
(415, 14, 'Żuromin'),
(416, 14, 'Żyrardów'),
(417, 14, 'Mszczonów'),
(418, 14, 'Ostrołęka'),
(419, 14, 'Płock'),
(420, 14, 'Radom'),
(421, 14, 'Siedlce'),
(422, 16, 'Brzeg'),
(423, 16, 'Grodków'),
(424, 16, 'Lewin Brzeski'),
(425, 16, 'Baborów'),
(426, 16, 'Głubczyce'),
(427, 16, 'Kietrz'),
(428, 16, 'Kędzierzyn-Koźle'),
(429, 16, 'Byczyna'),
(430, 16, 'Kluczbork'),
(431, 16, 'Wołczyn'),
(432, 16, 'Gogolin'),
(433, 16, 'Krapkowice'),
(434, 16, 'Zdzieszowice'),
(435, 16, 'Namysłów'),
(436, 16, 'Głuchołazy'),
(437, 16, 'Korfantów'),
(438, 16, 'Nysa'),
(439, 16, 'Otmuchów'),
(440, 16, 'Paczków'),
(441, 16, 'Dobrodzień'),
(442, 16, 'Gorzów Śląski'),
(443, 16, 'Olesno'),
(444, 16, 'Praszka'),
(445, 16, 'Niemodlin'),
(446, 16, 'Ozimek'),
(447, 16, 'Prószków'),
(448, 16, 'Biała'),
(449, 16, 'Głogówek'),
(450, 16, 'Prudnik'),
(451, 16, 'Kolonowskie'),
(452, 16, 'Leśnica'),
(453, 16, 'Strzelce Opolskie'),
(454, 16, 'Ujazd'),
(455, 16, 'Zawadzkie'),
(456, 16, 'Opole'),
(457, 18, 'Ustrzyki Dolne'),
(458, 18, 'Brzozów'),
(459, 18, 'Dębica'),
(460, 18, 'Brzostek'),
(461, 18, 'Pilzno'),
(462, 18, 'Jarosław'),
(463, 18, 'Radymno'),
(464, 18, 'Pruchnik'),
(465, 18, 'Jasło'),
(466, 18, 'Kołaczyce'),
(467, 18, 'Kolbuszowa'),
(468, 18, 'Dukla'),
(469, 18, 'Iwonicz-Zdrój'),
(470, 18, 'Jedlicze'),
(471, 18, 'Rymanów'),
(472, 18, 'Leżajsk'),
(473, 18, 'Nowa Sarzyna'),
(474, 18, 'Lubaczów'),
(475, 18, 'Cieszanów'),
(476, 18, 'Narol'),
(477, 18, 'Oleszyce'),
(478, 18, 'Łańcut'),
(479, 18, 'Mielec'),
(480, 18, 'Przecław'),
(481, 18, 'Radomyśl Wielki'),
(482, 18, 'Nisko'),
(483, 18, 'Rudnik nad Sanem'),
(484, 18, 'Ulanów'),
(485, 18, 'Przeworsk'),
(486, 18, 'Kańczuga'),
(487, 18, 'Sieniawa'),
(488, 18, 'Ropczyce'),
(489, 18, 'Sędziszów Małopolski'),
(490, 18, 'Dynów'),
(491, 18, 'Błażowa'),
(492, 18, 'Boguchwała'),
(493, 18, 'Głogów Małopolski'),
(494, 18, 'Sokołów Małopolski'),
(495, 18, 'Tyczyn'),
(496, 18, 'Sanok'),
(497, 18, 'Zagórz'),
(498, 18, 'Stalowa Wola'),
(499, 18, 'Zaklików'),
(500, 18, 'Strzyżów'),
(501, 18, 'Baranów Sandomierski'),
(502, 18, 'Nowa Dęba'),
(503, 18, 'Lesko'),
(504, 18, 'Krosno'),
(505, 18, 'Przemyśl'),
(506, 18, 'Rzeszów'),
(507, 18, 'Tarnobrzeg'),
(508, 20, 'Augustów'),
(509, 20, 'Lipsk'),
(510, 20, 'Choroszcz'),
(511, 20, 'Czarna Białostocka'),
(512, 20, 'Łapy'),
(513, 20, 'Michałowo'),
(514, 20, 'Supraśl'),
(515, 20, 'Suraż'),
(516, 20, 'Tykocin'),
(517, 20, 'Wasilków'),
(518, 20, 'Zabłudów'),
(519, 20, 'Bielsk Podlaski'),
(520, 20, 'Brańsk'),
(521, 20, 'Grajewo'),
(522, 20, 'Rajgród'),
(523, 20, 'Szczuczyn'),
(524, 20, 'Hajnówka'),
(525, 20, 'Kleszczele'),
(526, 20, 'Kolno'),
(527, 20, 'Stawiski'),
(528, 20, 'Jedwabne'),
(529, 20, 'Nowogród'),
(530, 20, 'Goniądz'),
(531, 20, 'Knyszyn'),
(532, 20, 'Mońki'),
(533, 20, 'Sejny'),
(534, 20, 'Siemiatycze'),
(535, 20, 'Drohiczyn'),
(536, 20, 'Dąbrowa Białostocka'),
(537, 20, 'Krynki'),
(538, 20, 'Sokółka'),
(539, 20, 'Suchowola'),
(540, 20, 'Wysokie Mazowieckie'),
(541, 20, 'Ciechanowiec'),
(542, 20, 'Czyżew'),
(543, 20, 'Szepietowo'),
(544, 20, 'Zambrów'),
(545, 20, 'Białystok'),
(546, 20, 'Łomża'),
(547, 20, 'Suwałki'),
(548, 22, 'Bytów'),
(549, 22, 'Miastko'),
(550, 22, 'Chojnice'),
(551, 22, 'Brusy'),
(552, 22, 'Czersk'),
(553, 22, 'Człuchów'),
(554, 22, 'Czarne'),
(555, 22, 'Debrzno'),
(556, 22, 'Pruszcz Gdański'),
(557, 22, 'Kartuzy'),
(558, 22, 'Żukowo'),
(559, 22, 'Kościerzyna'),
(560, 22, 'Kwidzyn'),
(561, 22, 'Prabuty'),
(562, 22, 'Lębork'),
(563, 22, 'Łeba'),
(564, 22, 'Malbork'),
(565, 22, 'Nowy Staw'),
(566, 22, 'Krynica Morska'),
(567, 22, 'Nowy Dwór Gdański'),
(568, 22, 'Hel'),
(569, 22, 'Jastarnia'),
(570, 22, 'Puck'),
(571, 22, 'Władysławowo'),
(572, 22, 'Ustka'),
(573, 22, 'Kępice'),
(574, 22, 'Czarna Woda'),
(575, 22, 'Skórcz'),
(576, 22, 'Starogard Gdański'),
(577, 22, 'Skarszewy'),
(578, 22, 'Tczew'),
(579, 22, 'Gniew'),
(580, 22, 'Pelplin'),
(581, 22, 'Reda'),
(582, 22, 'Rumia'),
(583, 22, 'Wejherowo'),
(584, 22, 'Dzierzgoń'),
(585, 22, 'Sztum'),
(586, 22, 'Gdańsk'),
(587, 22, 'Gdynia'),
(588, 22, 'Słupsk'),
(589, 22, 'Sopot'),
(590, 24, 'Będzin'),
(591, 24, 'Czeladź'),
(592, 24, 'Wojkowice'),
(593, 24, 'Siewierz'),
(594, 24, 'Sławków'),
(595, 24, 'Szczyrk'),
(596, 24, 'Czechowice-Dziedzice'),
(597, 24, 'Wilamowice'),
(598, 24, 'Cieszyn'),
(599, 24, 'Ustroń'),
(600, 24, 'Wisła'),
(601, 24, 'Skoczów'),
(602, 24, 'Strumień'),
(603, 24, 'Blachownia'),
(604, 24, 'Koniecpol'),
(605, 24, 'Knurów'),
(606, 24, 'Pyskowice'),
(607, 24, 'Sośnicowice'),
(608, 24, 'Toszek'),
(609, 24, 'Kłobuck'),
(610, 24, 'Krzepice'),
(611, 24, 'Lubliniec'),
(612, 24, 'Woźniki'),
(613, 24, 'Łaziska Górne'),
(614, 24, 'Mikołów'),
(615, 24, 'Orzesze'),
(616, 24, 'Myszków'),
(617, 24, 'Koziegłowy'),
(618, 24, 'Żarki'),
(619, 24, 'Pszczyna'),
(620, 24, 'Racibórz'),
(621, 24, 'Krzanowice'),
(622, 24, 'Kuźnia Raciborska'),
(623, 24, 'Czerwionka-Leszczyny'),
(624, 24, 'Kalety'),
(625, 24, 'Miasteczko Śląskie'),
(626, 24, 'Radzionków'),
(627, 24, 'Tarnowskie Góry'),
(628, 24, 'Bieruń'),
(629, 24, 'Imielin'),
(630, 24, 'Lędziny'),
(631, 24, 'Pszów'),
(632, 24, 'Radlin'),
(633, 24, 'Rydułtowy'),
(634, 24, 'Wodzisław Śląski'),
(635, 24, 'Poręba'),
(636, 24, 'Zawiercie'),
(637, 24, 'Łazy'),
(638, 24, 'Ogrodzieniec'),
(639, 24, 'Pilica'),
(640, 24, 'Szczekociny'),
(641, 24, 'Żywiec'),
(642, 24, 'Bielsko-Biała'),
(643, 24, 'Bytom'),
(644, 24, 'Chorzów'),
(645, 24, 'Częstochowa'),
(646, 24, 'Dąbrowa Górnicza'),
(647, 24, 'Gliwice'),
(648, 24, 'Jastrzębie-Zdrój'),
(649, 24, 'Jaworzno'),
(650, 24, 'Katowice'),
(651, 24, 'Mysłowice'),
(652, 24, 'Piekary Śląskie'),
(653, 24, 'Ruda Śląska'),
(654, 24, 'Rybnik'),
(655, 24, 'Siemianowice Śląskie'),
(656, 24, 'Sosnowiec'),
(657, 24, 'Świętochłowice'),
(658, 24, 'Tychy'),
(659, 24, 'Zabrze'),
(660, 24, 'Żory'),
(661, 26, 'Busko-Zdrój'),
(662, 26, 'Stopnica'),
(663, 26, 'Jędrzejów'),
(664, 26, 'Małogoszcz'),
(665, 26, 'Sędziszów'),
(666, 26, 'Kazimierza Wielka'),
(667, 26, 'Skalbmierz'),
(668, 26, 'Bodzentyn'),
(669, 26, 'Chęciny'),
(670, 26, 'Chmielnik'),
(671, 26, 'Daleszyce'),
(672, 26, 'Końskie'),
(673, 26, 'Stąporków'),
(674, 26, 'Opatów'),
(675, 26, 'Ożarów'),
(676, 26, 'Ostrowiec Świętokrzyski'),
(677, 26, 'Ćmielów'),
(678, 26, 'Kunów'),
(679, 26, 'Działoszyce'),
(680, 26, 'Pińczów'),
(681, 26, 'Sandomierz'),
(682, 26, 'Koprzywnica'),
(683, 26, 'Zawichost'),
(684, 26, 'Skarżysko-Kamienna'),
(685, 26, 'Suchedniów'),
(686, 26, 'Starachowice'),
(687, 26, 'Wąchock'),
(688, 26, 'Osiek'),
(689, 26, 'Połaniec'),
(690, 26, 'Staszów'),
(691, 26, 'Włoszczowa'),
(692, 26, 'Kielce'),
(693, 28, 'Bartoszyce'),
(694, 28, 'Górowo Iławeckie'),
(695, 28, 'Bisztynek'),
(696, 28, 'Sępopol'),
(697, 28, 'Braniewo'),
(698, 28, 'Frombork'),
(699, 28, 'Pieniężno'),
(700, 28, 'Działdowo'),
(701, 28, 'Lidzbark'),
(702, 28, 'Młynary'),
(703, 28, 'Pasłęk'),
(704, 28, 'Tolkmicko'),
(705, 28, 'Ełk'),
(706, 28, 'Giżycko'),
(707, 28, 'Ryn'),
(708, 28, 'Iława'),
(709, 28, 'Lubawa'),
(710, 28, 'Kisielice'),
(711, 28, 'Susz'),
(712, 28, 'Zalewo'),
(713, 28, 'Kętrzyn'),
(714, 28, 'Korsze'),
(715, 28, 'Reszel'),
(716, 28, 'Lidzbark Warmiński'),
(717, 28, 'Orneta'),
(718, 28, 'Mrągowo'),
(719, 28, 'Mikołajki'),
(720, 28, 'Nidzica'),
(721, 28, 'Nowe Miasto Lubawskie'),
(722, 28, 'Olecko'),
(723, 28, 'Barczewo'),
(724, 28, 'Biskupiec'),
(725, 28, 'Dobre Miasto'),
(726, 28, 'Jeziorany'),
(727, 28, 'Olsztynek'),
(728, 28, 'Ostróda'),
(729, 28, 'Miłakowo'),
(730, 28, 'Miłomłyn'),
(731, 28, 'Morąg'),
(732, 28, 'Biała Piska'),
(733, 28, 'Orzysz'),
(734, 28, 'Pisz'),
(735, 28, 'Ruciane-Nida'),
(736, 28, 'Szczytno'),
(737, 28, 'Pasym'),
(738, 28, 'Gołdap'),
(739, 28, 'Węgorzewo'),
(740, 28, 'Elbląg'),
(741, 28, 'Olsztyn'),
(742, 30, 'Chodzież'),
(743, 30, 'Margonin'),
(744, 30, 'Szamocin'),
(745, 30, 'Czarnków'),
(746, 30, 'Krzyż Wielkopolski'),
(747, 30, 'Trzcianka'),
(748, 30, 'Wieleń'),
(749, 30, 'Gniezno'),
(750, 30, 'Czerniejewo'),
(751, 30, 'Kłecko'),
(752, 30, 'Trzemeszno'),
(753, 30, 'Witkowo'),
(754, 30, 'Borek Wielkopolski'),
(755, 30, 'Gostyń'),
(756, 30, 'Krobia'),
(757, 30, 'Pogorzela'),
(758, 30, 'Poniec'),
(759, 30, 'Grodzisk Wielkopolski'),
(760, 30, 'Rakoniewice'),
(761, 30, 'Wielichowo'),
(762, 30, 'Jaraczewo'),
(763, 30, 'Jarocin'),
(764, 30, 'Żerków'),
(765, 30, 'Stawiszyn'),
(766, 30, 'Kępno'),
(767, 30, 'Koło'),
(768, 30, 'Dąbie'),
(769, 30, 'Kłodawa'),
(770, 30, 'Przedecz'),
(771, 30, 'Golina'),
(772, 30, 'Kleczew'),
(773, 30, 'Rychwał'),
(774, 30, 'Sompolno'),
(775, 30, 'Ślesin'),
(776, 30, 'Kościan'),
(777, 30, 'Czempiń'),
(778, 30, 'Krzywiń'),
(779, 30, 'Śmigiel'),
(780, 30, 'Sulmierzyce'),
(781, 30, 'Kobylin'),
(782, 30, 'Koźmin Wielkopolski'),
(783, 30, 'Krotoszyn'),
(784, 30, 'Zduny'),
(785, 30, 'Osieczna'),
(786, 30, 'Rydzyna'),
(787, 30, 'Międzychód'),
(788, 30, 'Sieraków'),
(789, 30, 'Lwówek'),
(790, 30, 'Nowy Tomyśl'),
(791, 30, 'Opalenica'),
(792, 30, 'Zbąszyń'),
(793, 30, 'Oborniki'),
(794, 30, 'Rogoźno'),
(795, 30, 'Ostrów Wielkopolski'),
(796, 30, 'Nowe Skalmierzyce'),
(797, 30, 'Odolanów'),
(798, 30, 'Raszków'),
(799, 30, 'Grabów nad Prosną'),
(800, 30, 'Mikstat'),
(801, 30, 'Ostrzeszów'),
(802, 30, 'Piła'),
(803, 30, 'Łobżenica'),
(804, 30, 'Ujście'),
(805, 30, 'Wyrzysk'),
(806, 30, 'Wysoka'),
(807, 30, 'Chocz'),
(808, 30, 'Dobrzyca'),
(809, 30, 'Pleszew'),
(810, 30, 'Luboń'),
(811, 30, 'Puszczykowo'),
(812, 30, 'Buk'),
(813, 30, 'Kostrzyn'),
(814, 30, 'Kórnik'),
(815, 30, 'Mosina'),
(816, 30, 'Murowana Goślina'),
(817, 30, 'Pobiedziska'),
(818, 30, 'Stęszew'),
(819, 30, 'Swarzędz'),
(820, 30, 'Bojanowo'),
(821, 30, 'Jutrosin'),
(822, 30, 'Miejska Górka'),
(823, 30, 'Rawicz'),
(824, 30, 'Słupca'),
(825, 30, 'Zagórów'),
(826, 30, 'Obrzycko'),
(827, 30, 'Ostroróg'),
(828, 30, 'Pniewy'),
(829, 30, 'Szamotuły'),
(830, 30, 'Wronki'),
(831, 30, 'Środa Wielkopolska'),
(832, 30, 'Dolsk'),
(833, 30, 'Książ Wielkopolski'),
(834, 30, 'Śrem'),
(835, 30, 'Turek'),
(836, 30, 'Dobra'),
(837, 30, 'Tuliszków'),
(838, 30, 'Wągrowiec'),
(839, 30, 'Gołańcz'),
(840, 30, 'Skoki'),
(841, 30, 'Wolsztyn'),
(842, 30, 'Miłosław'),
(843, 30, 'Nekla'),
(844, 30, 'Pyzdry'),
(845, 30, 'Września'),
(846, 30, 'Złotów'),
(847, 30, 'Jastrowie'),
(848, 30, 'Krajenka'),
(849, 30, 'Okonek'),
(850, 30, 'Kalisz'),
(851, 30, 'Konin'),
(852, 30, 'Leszno'),
(853, 30, 'Poznań'),
(854, 32, 'Białogard'),
(855, 32, 'Karlino'),
(856, 32, 'Tychowo'),
(857, 32, 'Choszczno'),
(858, 32, 'Drawno'),
(859, 32, 'Pełczyce'),
(860, 32, 'Recz'),
(861, 32, 'Czaplinek'),
(862, 32, 'Drawsko Pomorskie'),
(863, 32, 'Kalisz Pomorski'),
(864, 32, 'Złocieniec'),
(865, 32, 'Goleniów'),
(866, 32, 'Maszewo'),
(867, 32, 'Nowogard'),
(868, 32, 'Stepnica'),
(869, 32, 'Gryfice'),
(870, 32, 'Płoty'),
(871, 32, 'Trzebiatów'),
(872, 32, 'Cedynia'),
(873, 32, 'Chojna'),
(874, 32, 'Gryfino'),
(875, 32, 'Mieszkowice'),
(876, 32, 'Moryń'),
(877, 32, 'Trzcińsko-Zdrój'),
(878, 32, 'Dziwnów'),
(879, 32, 'Golczewo'),
(880, 32, 'Kamień Pomorski'),
(881, 32, 'Międzyzdroje'),
(882, 32, 'Wolin'),
(883, 32, 'Kołobrzeg'),
(884, 32, 'Gościno'),
(885, 32, 'Bobolice'),
(886, 32, 'Polanów'),
(887, 32, 'Sianów'),
(888, 32, 'Barlinek'),
(889, 32, 'Dębno'),
(890, 32, 'Myślibórz'),
(891, 32, 'Nowe Warpno'),
(892, 32, 'Police'),
(893, 32, 'Lipiany'),
(894, 32, 'Pyrzyce'),
(895, 32, 'Darłowo'),
(896, 32, 'Sławno'),
(897, 32, 'Stargard'),
(898, 32, 'Chociwel'),
(899, 32, 'Dobrzany'),
(900, 32, 'Ińsko'),
(901, 32, 'Suchań'),
(902, 32, 'Szczecinek'),
(903, 32, 'Barwice'),
(904, 32, 'Biały Bór'),
(905, 32, 'Borne Sulinowo'),
(906, 32, 'Świdwin'),
(907, 32, 'Połczyn-Zdrój'),
(908, 32, 'Wałcz'),
(909, 32, 'Człopa'),
(910, 32, 'Mirosławiec'),
(911, 32, 'Tuczno'),
(912, 32, 'Dobra'),
(913, 32, 'Łobez'),
(914, 32, 'Resko'),
(915, 32, 'Węgorzyno'),
(916, 32, 'Koszalin'),
(917, 32, 'Szczecin'),
(918, 32, 'Świnoujście');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `states`
--

INSERT INTO `states` (`id`, `state`) VALUES
(2, 'DOLNOŚLĄSKIE'),
(4, 'KUJAWSKO-POMORSKIE'),
(6, 'LUBELSKIE'),
(8, 'LUBUSKIE'),
(10, 'ŁÓDZKIE'),
(12, 'MAŁOPOLSKIE'),
(14, 'MAZOWIECKIE'),
(16, 'OPOLSKIE'),
(18, 'PODKARPACKIE'),
(20, 'PODLASKIE'),
(22, 'POMORSKIE'),
(24, 'ŚLĄSKIE'),
(26, 'ŚWIĘTOKRZYSKIE'),
(28, 'WARMIŃSKO-MAZURSKIE'),
(30, 'WIELKOPOLSKIE'),
(32, 'ZACHODNIOPOMORSKIE');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `cities_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `cities_id` (`cities_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT dla tabeli `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
