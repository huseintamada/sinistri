-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2025 pada 13.05
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sinistri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nip`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `no_hp`, `email`, `alamat`, `photo`, `id_user`) VALUES
(1, '000111222333444555', 'Tamada', 'Laki-laki', '2004-10-10', '089662207145', 'admin@gmail.com', 'Depok', NULL, 72);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alamat`
--

CREATE TABLE `tb_alamat` (
  `id_alamat` int(10) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_alamat`
--

INSERT INTO `tb_alamat` (`id_alamat`, `dusun`, `desa`, `kecamatan`, `kabupaten`) VALUES
(81, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(82, 'TRINI', 'TRINI', 'Kec. Gamping', 'Sleman'),
(83, 'Gedongan', 'Sinduadi', 'Kec. Gamping', 'Sleman'),
(84, 'KWARASAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(85, 'NUSUPAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(86, 'Ngawen', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(87, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(88, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(89, 'PUNDONG 1', 'TIRTOADI', 'Kec. Mlati', 'Sleman'),
(90, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(91, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(92, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(93, 'Baturan', 'Baturan', 'Kec. Gamping', 'Sleman'),
(94, 'BATURAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(95, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(96, 'MURANGAN VVI', 'triharjo', 'Kec. Mlati', 'Sleman'),
(97, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(98, 'NITIPURAN', 'NGESTI HARJO', 'Kec. Kasihan', 'Sleman'),
(99, '-', 'SENDANGADI', 'Kec. Mlati', 'Sleman'),
(100, 'Pogung Dalangan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(101, '-', '-', 'Kec. Gamping', 'Sleman'),
(102, 'GAMPING KIDUL', 'AMBARKETAWANG', 'Kec. Gamping', 'Sleman'),
(103, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(104, 'NGANTI', 'SENDANGADI', 'Kec. Mlati', 'Sleman'),
(105, 'TUGURAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(106, 'GETAS GANDEKAN', 'TLOGOADI', 'Kec. Mlati', 'Sleman'),
(107, 'Kutu Asem', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(108, 'SALAKAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(109, '-', '-', 'Kec. Gamping', 'Sleman'),
(110, 'POGUNG REJO', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(111, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(112, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(113, '-', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(114, '-', 'SIDOMOYO', 'Kec. Godean', 'Sleman'),
(115, 'JANTURAN  ', 'WARUNGBOTO', 'Kec. Umbulharjo', 'Sleman'),
(116, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(117, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(118, 'NGAWEN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(119, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(120, '-', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(121, '-', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(122, 'JETIS', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(123, '-', 'MLATI', 'Kec. Mlati', 'Sleman'),
(124, 'BATURAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(125, 'Mulyorejo', 'Kupang', 'Kupang', 'Sleman'),
(126, 'BATURAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(127, 'KANCILAN JABAN', 'SINDUHARJO', 'Kec. Gamping', 'Sleman'),
(128, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(129, '-', '-', 'Kec. Gamping', 'Sleman'),
(130, 'Desa Sukomulyo', 'Sukomulyo', 'Kec. Kaliwungu Selatan', 'Sleman'),
(131, 'KAINGAN PONOWAREN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(132, 'GEDONGAN', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(133, 'TRIHANGGO', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(134, 'Trini', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(135, 'BATURAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(136, 'BLUNYAHREJO', 'KARANGWARU', 'Kec. Tegalrejo', 'Sleman'),
(137, 'PANGGUNGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(138, 'PUNDONG 2', 'TIRTOADI', 'Kec. Mlati', 'Sleman'),
(139, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(140, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(141, 'Biru', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(142, 'PATRAN TEGAL', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(143, 'TUGURAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(144, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(145, 'Tegalsari', 'Tegaltirto', 'Kec. Berbah', 'Sleman'),
(146, 'PANGGUNGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(147, 'BRAGASAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(148, 'JONGKE TENGAH', 'SENDANGADI', 'Kec. Mlati', 'Sleman'),
(149, '-', 'Nogotirto', 'Kec. Gamping', 'Sleman'),
(150, 'SALAKAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(151, 'KWARASAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(152, 'NGAWEN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(153, '-', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(154, 'PANGGUNGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(155, 'KUTU RADEN', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(156, 'Biru', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(157, 'DONOKITRI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(158, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(159, '-', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(160, 'NUSUPAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(161, '-', 'Tihanggo', 'Kec. Gamping', 'Sleman'),
(162, 'Kwarasan', 'Nogotirto', 'Kec. Gamping', 'Sleman'),
(163, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(164, 'TRINI', 'GAMPING', 'Kec. Mlati', 'Sleman'),
(165, 'KRONGGAHAN I', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(166, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(167, 'RAJEK NGEMPLAK', 'TIRTOADI', 'Kec. Gamping', 'Sleman'),
(168, 'DONOKITRI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(169, 'BATURAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(170, 'Mayangan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(171, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(172, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(173, 'NGENTAK GEDE BEDOG', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(174, 'GEDONGAN', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(175, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(176, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(177, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(178, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(179, 'BEDOG', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(180, 'BATURAN LOR', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(181, 'Trihanggo', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(182, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(183, 'KWARASAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(184, 'GAMPING KIDUL', 'AMBARKETAWANG', 'Kec. Gamping', 'Sleman'),
(185, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(186, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(187, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(188, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(189, 'Jambon', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(190, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(191, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(192, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(193, 'Jambon', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(194, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(195, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(196, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(197, 'Karang Tengah', 'Nogotirto', 'Kec. Gamping', 'Sleman'),
(198, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(199, 'Ngawen', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(200, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(201, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(202, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(203, '-', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(204, 'BRAGASAN MAYANGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(205, 'Karangbajang', 'Tlogoadi', 'Kec. Mlati', 'Sleman'),
(206, 'Trini', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(207, 'Paingan', 'Maguwoharjo', 'Kec. Depok', 'Sleman'),
(208, 'NGAWEN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(209, 'KUTU ASEM', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(210, 'Donokitri', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(211, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(212, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(213, 'PANGGUNGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(214, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(215, 'Mayangan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(216, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(217, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(218, 'Kutu Raden', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(219, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(220, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(221, 'Donokitri', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(222, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(223, 'Kutu Asem', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(224, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(225, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(226, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(227, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(228, 'Bragasan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(229, 'Kutu Asem', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(230, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(231, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(232, 'Bragasan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(233, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(234, 'Baturan Kidul', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(235, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(236, 'Kutu Raden', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(237, 'Baturan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(238, 'Gabahan', 'Sumberadi', 'Kec. Mlati', 'Sleman'),
(239, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(240, 'Duwet', 'Sendangadi', 'Kec. Mlati', 'Sleman'),
(241, 'Biru', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(242, 'Salakan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(243, 'Kragilan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(244, 'Biru', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(245, 'MAYANGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(247, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(248, 'PERUM GRIYA ARGA PERMAI KWARASAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(249, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(250, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(251, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(252, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(253, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(254, 'NGAGLIK', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(255, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(256, 'BATURAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(257, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(258, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(259, 'GEDONGAN', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(260, 'TUGURAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(261, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(262, '-', 'Ulee Patta', 'Kec. Jaya Baru', 'Sleman'),
(263, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(264, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(265, 'DONOKITRI MAYANGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(266, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(267, 'KWARASAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(268, 'KARANG TENGAH', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(269, 'NANDAN', 'SARIHARJO', 'Kec. Ngaglik', 'Sleman'),
(270, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(271, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(272, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(273, 'NGAWEN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(274, 'MAYANGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(275, 'KEDON BEDOG', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(276, 'SALAKAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(277, 'NGAWEN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(278, 'JETIS', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(279, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(280, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(281, 'NGAWEN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(282, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(283, 'DONOKITRI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(284, 'JOMBOR LOR', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(285, 'PANGGUNGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(286, 'TRINI', 'SINDUADI', 'Kec. Gamping', 'Sleman'),
(287, 'Ngluwak', 'Jatikuwung', 'Kec. Jatipuro', 'Karanganyar'),
(288, 'BRAGASAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(289, 'JONGKE TENGAH', 'SENDANGADI', 'Kec. Mlati', 'Sleman'),
(290, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(291, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(292, 'TRINI', 'SINDUADI', 'Kec. Gamping', 'Sleman'),
(293, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(294, 'Ling Mendut II', 'Mendut', 'Kec. Magelang Tengah', 'Magelang'),
(295, 'MULUNGAN WETAN', 'SENDANGADI', 'Kec. Mlati', 'Sleman'),
(296, 'Karang Bajang', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(297, 'Modinan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(298, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(299, 'BRAGASAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(300, 'Dlanggon', 'Blanceran', 'Kec. Karanganom', 'Sleman'),
(301, 'BRAGASAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(302, 'PATRAN', 'BANYURADEN', 'Kec. Gamping', 'Sleman'),
(303, 'Jambon', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(304, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(305, 'Tuguran', 'Nogotirto', 'Kec. Gamping', 'Sleman'),
(306, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(307, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(308, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(309, '-', 'CIPAYUNG', 'Kec. Cipayung', 'Jakarta Timur'),
(310, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(311, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(312, 'TRINI', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(313, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(314, 'PANGGUNGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(315, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(316, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(317, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(318, 'Tambak', 'Ngestiharjo', 'Kec. Kasihan', 'Sleman'),
(319, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(320, 'BRAGASAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(321, 'JETIS', 'SINDUADI', 'Kec. Mlati', 'Sleman'),
(322, 'JAMBON', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(323, 'Jetis', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(324, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(325, '-', 'CONDONGCATUR', 'Kec. Depok', 'Sleman'),
(326, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(327, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(328, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(329, 'DONOKITRI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(330, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(331, '-', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(332, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(333, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(334, 'TRINI', 'sinduadi', 'Kec. Mlati', 'Sleman'),
(335, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(336, 'Gedongan', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(337, 'BEDOG', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(338, 'Trini', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(339, 'Baturan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(340, 'KWARASAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(341, '-', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(342, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(343, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(344, 'TRINI', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(345, 'Biru', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(346, 'Mayangan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(347, 'TRINI', 'SINDUADI', 'Kec. Gamping', 'Sleman'),
(348, 'TUGURAN', 'NOGOTIRTO', 'Kec. Gamping', 'Sleman'),
(349, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(350, 'Trini', 'Sinduadi', 'Kec. Mlati', 'Sleman'),
(351, '-', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(352, 'BRAGASAN MAYANGAN', 'TRIHANGGO', 'Kec. Gamping', 'Sleman'),
(353, 'BATURAN', 'TRIHANGGO', 'Kec. Tegalrejo', 'Yogyakarta'),
(354, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(355, 'Baturan', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(356, 'Trini', 'Sinduadi', 'Kec. Gamping', 'Sleman'),
(357, 'Trini', 'Trihanggo', 'Kec. Gamping', 'Sleman'),
(358, 'TRINI', 'TRIHANGG0', 'Kec. Gamping', 'Sleman'),
(359, 'Jl. H Mawi', 'Waru', 'CIputat Timur', 'Karawang'),
(360, 'Jl. H Mawi', 'Kalang Surya', 'Parung', 'Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_arsipnilai`
--

CREATE TABLE `tb_arsipnilai` (
  `id_arsip` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `nilai` float NOT NULL,
  `id_kd` int(10) DEFAULT NULL,
  `id_datasiswa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_datasiswa`
--

CREATE TABLE `tb_datasiswa` (
  `id_datasiswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `tahun_ajaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `no_hp`, `email`, `alamat`, `photo`, `id_user`) VALUES
(92, '1234556789', 'Ahmad Husein Tamada', 'Laki-laki', '2004-10-10', '089662207145', 'tamada@gmail.com', 'Depok', NULL, 428);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kd`
--

CREATE TABLE `tb_kd` (
  `id_kd` int(10) NOT NULL,
  `nama_kd` varchar(15) NOT NULL,
  `jenis_penilaian` enum('PTS','PAS') NOT NULL,
  `id_mapel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `wali_kelas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matapelajaran`
--

CREATE TABLE `tb_matapelajaran` (
  `id_mapel` int(10) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `level` enum('7','8','9','10','11','12') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `nilai` float NOT NULL,
  `id_kd` int(10) NOT NULL,
  `id_datasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_orangtua`
--

CREATE TABLE `tb_orangtua` (
  `id_orangtua` int(10) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `id_alamat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(10) NOT NULL,
  `jabatan` enum('Kepala Sekolah','Guru Kelas','Guru Agama','Guru Penjas','Guru Bahasa','Tata Usaha','Penjaga Sekolah') NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `id_guru` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_tahun` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_orangtua` int(10) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahunajaran`
--

CREATE TABLE `tb_tahunajaran` (
  `id_tahun` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `shared` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tahunajaran`
--

INSERT INTO `tb_tahunajaran` (`id_tahun`, `nama`, `semester`, `shared`, `status`) VALUES
(18, '2024/2025', 'Ganjil', '1', '1'),
(19, '2024/2025', 'Genap', '0', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','siswa','guru','wali kelas') NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `level`, `status`) VALUES
(72, 'admin', '191304bcf295dca2f24b82bec0796d98', 'admin', '1'),
(428, 'tamada@gmail.com', '495eacd9280cf86c4baeb20717d01c9e', 'guru', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `tb_admin_FK` (`id_user`);

--
-- Indeks untuk tabel `tb_alamat`
--
ALTER TABLE `tb_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `tb_arsipnilai`
--
ALTER TABLE `tb_arsipnilai`
  ADD PRIMARY KEY (`id_arsip`),
  ADD KEY `tb_arsipnilai_FK` (`id_kd`),
  ADD KEY `tb_arsipnilai_FK_1` (`id_datasiswa`);

--
-- Indeks untuk tabel `tb_datasiswa`
--
ALTER TABLE `tb_datasiswa`
  ADD PRIMARY KEY (`id_datasiswa`),
  ADD KEY `tb_datasiswa_FK` (`id_kelas`),
  ADD KEY `tb_datasiswa_FK_1` (`id_siswa`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `tb_guru_FK` (`id_user`);

--
-- Indeks untuk tabel `tb_kd`
--
ALTER TABLE `tb_kd`
  ADD PRIMARY KEY (`id_kd`),
  ADD KEY `tb_tema_FK` (`id_mapel`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `tb_nilai_FK_1` (`id_kd`),
  ADD KEY `tb_nilai_FK` (`id_datasiswa`);

--
-- Indeks untuk tabel `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  ADD PRIMARY KEY (`id_orangtua`),
  ADD KEY `tb_orangtua_FK` (`id_alamat`);

--
-- Indeks untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`),
  ADD KEY `tb_pengajar_FK` (`id_guru`),
  ADD KEY `tb_pengajar_FK_1` (`id_kelas`),
  ADD KEY `tb_pengajar_FK_2` (`id_mapel`),
  ADD KEY `tb_pengajar_FK_3` (`id_tahun`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `tb_siswa_FK` (`id_orangtua`),
  ADD KEY `tb_siswa_FK_2` (`id_user`);

--
-- Indeks untuk tabel `tb_tahunajaran`
--
ALTER TABLE `tb_tahunajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_alamat`
--
ALTER TABLE `tb_alamat`
  MODIFY `id_alamat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT untuk tabel `tb_arsipnilai`
--
ALTER TABLE `tb_arsipnilai`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT untuk tabel `tb_datasiswa`
--
ALTER TABLE `tb_datasiswa`
  MODIFY `id_datasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `tb_kd`
--
ALTER TABLE `tb_kd`
  MODIFY `id_kd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  MODIFY `id_mapel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2456;

--
-- AUTO_INCREMENT untuk tabel `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  MODIFY `id_orangtua` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT untuk tabel `tb_tahunajaran`
--
ALTER TABLE `tb_tahunajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_FK` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_arsipnilai`
--
ALTER TABLE `tb_arsipnilai`
  ADD CONSTRAINT `tb_arsipnilai_FK` FOREIGN KEY (`id_kd`) REFERENCES `tb_kd` (`id_kd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_arsipnilai_FK_1` FOREIGN KEY (`id_datasiswa`) REFERENCES `tb_datasiswa` (`id_datasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_datasiswa`
--
ALTER TABLE `tb_datasiswa`
  ADD CONSTRAINT `tb_datasiswa_FK` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_datasiswa_FK_1` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD CONSTRAINT `tb_guru_FK` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kd`
--
ALTER TABLE `tb_kd`
  ADD CONSTRAINT `tb_tema_FK` FOREIGN KEY (`id_mapel`) REFERENCES `tb_matapelajaran` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `tb_nilai_FK` FOREIGN KEY (`id_datasiswa`) REFERENCES `tb_datasiswa` (`id_datasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_nilai_FK_1` FOREIGN KEY (`id_kd`) REFERENCES `tb_kd` (`id_kd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
  ADD CONSTRAINT `tb_orangtua_FK` FOREIGN KEY (`id_alamat`) REFERENCES `tb_alamat` (`id_alamat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD CONSTRAINT `tb_pengajar_FK` FOREIGN KEY (`id_guru`) REFERENCES `tb_guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengajar_FK_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengajar_FK_2` FOREIGN KEY (`id_mapel`) REFERENCES `tb_matapelajaran` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengajar_FK_3` FOREIGN KEY (`id_tahun`) REFERENCES `tb_tahunajaran` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_FK` FOREIGN KEY (`id_orangtua`) REFERENCES `tb_orangtua` (`id_orangtua`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_siswa_FK_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
