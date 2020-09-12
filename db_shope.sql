-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Sep 2020 pada 07.51
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shope`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produc`
--

CREATE TABLE `tb_produc` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `deskripsi_pendek` tinytext NOT NULL,
  `deskripsi_panjang` text NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `kategori` enum('Handphone','Jam Tangan','kaos','Kameja') NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produc`
--

INSERT INTO `tb_produc` (`id`, `nama`, `harga`, `deskripsi_pendek`, `deskripsi_panjang`, `jenis`, `kategori`, `url`) VALUES
(1, 'vivo V19 128GB', 'Rp. 3,999,000', '', 'Chipset	 	Qualcomm SDM675 Snapdragon 675 (11 nm)\r\nOs	 	Android 10.0; Funtouch 10.0\r\nDisplay	 	6.44 inches\r\nRam / Internal	 	8 GB / 128 GB\r\nSimcard	 	Dual Nano\r\nRear Camera	 	48 MP + 8 MP + 2 MP + 2 MP\r\nFront Camera	 	32 MP\r\nUsb Type	 	Type-C\r\nBattery	 	Non-removable Li-Po 4500 mAh\r\nGaransi	 	Resmi Vivo Indonesia 1 Tahun', 'Handphone', 'Handphone', 'http://localhost/webservice_shope/assets/vivo V19 128GB.jpg'),
(2, 'XIAOMI REDMI 7 2GB', 'Rp1.507.000', '', 'GARANSI RESMI TAM 1 TAHUN [Qualcomm SDM632 Snapdragon 632 (14 nm) CPU Octa-core (4x1.8 GHz Kryo 250 Gold &amp; 4x1.8 GHz Kryo 250 Silver) GPU Adreno 506Size 6.26 inches, 97.8 cm2 (~81.5% screen-to-body ratio) ]', 'Handphone', 'Handphone', 'http://localhost/webservice_shope/assets/XIAOMI REDMI 7 2GB.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(200) NOT NULL,
  `firts_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telp` int(13) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`username`, `firts_name`, `last_name`, `email`, `telp`, `password`) VALUES
('bsh', 'hshs', 'hsjdj', 'hshs@', 797, '$2y$10$PvmdFAJFbTescbUNIKZQZuaVA4vBnFOQNvcFSteYbII3/wSuSArOW'),
('jsjj', 'jdj', 'jdjdj', 'djj@', 959, '$2y$10$ymH64pNlmLT4Hd.CzADxreyKGQVEvrXoChbxmwVAIA6BOMh2jLhwi'),
('RfianHidayat', 'rifanhidayat', '32432', 'rifanhidayat0811@', 13123122, '$2y$10$3nZko/POx5qSiR4BRRtMd.QFbKZ.3F0yXnEnxzev6hif0kxsGq22G'),
('RfianHidayat21', 'rifanhidayat', '32432', 'rifanhidayat0811@1', 13123122, '$2y$10$YswgiBxvwPek.hJaYN8hNeYKctBavvoblcASO4guyzCpmUeuCSpZ.'),
('RifaHidayataa', 'rif', 'hidayat', 'ridaj@gmail.com', 849494, '$2y$10$dzOaWgE.eH16i3wJK.soGOJVa5I2pkP1o2KEObeCYzs7LC98vrQR6'),
('rifanhidayat', 'rifan', 'hidayat', 'rifanhidayat0811@gmail.com', 2147483647, '$2y$10$1g2NhgzAnZ2P9JwW64QoJuN/pj8ESe/d20QH2MgD5gkkTZKUbw8LK'),
('rifanhidayat1', 'Rifan', 'Hidayat', 'rifanhidayat@gmail.com', 8953384, '$2y$10$8ktqIjVmGLC/nlXddzmUtOeAqjH6FXBssbRhOl0XoAB5BsLxM/Ls.'),
('Rifanhidayat11', 'Rifan', 'Hidayat', 'rifanhidayay0811@gmail', 895387, '$2y$10$bkoSaSJK8CkC/3yZr3hUC.X9w733cYTshM50jwxkhzmg0hC/h7guW'),
('rifanhidayat111', 'rifa', 'hidayat', 'ridanhidayat@js', 894546, '$2y$10$Yrsx0g5R9aSupLzAj.QTLOjs/Hp3RNRSB4fZ85Azl2KSGaGTo7EJS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_produc`
--
ALTER TABLE `tb_produc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_produc`
--
ALTER TABLE `tb_produc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
