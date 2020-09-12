-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Sep 2020 pada 10.26
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
  `kategori` enum('Handphone','Jam Tangan','kaos','Kemeja') NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produc`
--

INSERT INTO `tb_produc` (`id`, `nama`, `harga`, `deskripsi_pendek`, `deskripsi_panjang`, `jenis`, `kategori`, `url`) VALUES
(1, 'vivo V19 128GB', 'Rp. 3,999,000', '', 'Chipset	 	Qualcomm SDM675 Snapdragon 675 (11 nm)\r\nOs	 	Android 10.0; Funtouch 10.0\r\nDisplay	 	6.44 inches\r\nRam / Internal	 	8 GB / 128 GB\r\nSimcard	 	Dual Nano\r\nRear Camera	 	48 MP + 8 MP + 2 MP + 2 MP\r\nFront Camera	 	32 MP\r\nUsb Type	 	Type-C\r\nBattery	 	Non-removable Li-Po 4500 mAh\r\nGaransi	 	Resmi Vivo Indonesia 1 Tahun', 'Handphone', 'Handphone', 'http://localhost/webservice_shope/assets/vivo V19 128GB.jpg'),
(2, 'XIAOMI REDMI 7 2GB', 'Rp1.507.000', '', 'GARANSI RESMI TAM 1 TAHUN [Qualcomm SDM632 Snapdragon 632 (14 nm) CPU Octa-core (4x1.8 GHz Kryo 250 Gold &amp; 4x1.8 GHz Kryo 250 Silver) GPU Adreno 506Size 6.26 inches, 97.8 cm2 (~81.5% screen-to-body ratio) ]', 'Handphone', 'Handphone', 'http://localhost/webservice_shope/assets/XIAOMI REDMI 7 2GB.jpg'),
(3, 'KAOS DISTRO ANIME', 'Rp125.000', '', 'Tampil keren dengan kaos animegearx\r\n\r\nBahannya adem menggunakan cotton combed 30s sehingga nyaman dipakai.\r\n\r\nSablonanya kuat dan tahan lama karena menggunakan tinta plastisol dengan finishing hot press.\r\n\r\nAyo segera Beli kaosnya dan plih ukuran sesuai dengan kamu. Lebih baik pilih ukuran yang lebih besar dari pada kekecilan.\r\n\r\nSize chart\r\nS lebar 46cm x panjang 66 cm\r\nM lebar 48 cm x panjang 68 cm\r\nL lebar 50cm x panjang 70 cm\r\nXl lebar 52cm x panjang 72 cm\r\n\r\nJangan lupa memberikan keterangan Size, warna dan jumlah\r\n\r\nPengiriman tiap hari senin sampai sabtu\r\nUntuk order silahkan tanyakan dulu ketersediaan barangnya.\r\n\r\nBahan berkualitas, desain keren dan jaminan 100%\r\n', 'Kaos', 'kaos', ''),
(4, 'Kaos The 1975', 'Rp150.000', '', 'Deskripsi Kaos The 1975 - A Brief Inquiry Into Online Relationships\r\nBahan Kaos : Gildan / new state apparel Soft Style Built Up ( Tanpa Jahitan Samping )\r\n\r\nUnisex ( Pria dan Wanita )\r\n\r\nWarna Yang tersedia : Hitam, Putih, Navy\r\n\r\nAvailable Size :\r\nXS (44 x 65 cm)\r\nS (47 x 68 cm)\r\nM (50 x 71 cm)\r\nL (53 x 73 cm)\r\nXL (56 x 76 cm)\r\nXXL (59 x 78 cm)\r\n\r\n\r\nMohon untuk menuliskan Size dan warna apabila tersedia pilihan warna pada kolom Catatan\r\n\r\n\r\nBarang akan dikirim pada hari yang sama ( jika tidak ada kendala ) dengan catatan melakukan order dan konfirmasi pembayaran sebelum jam 12 siang, apabila lewat dari jam 12 siang, barang akan dikirim ke esokan harinya', 'Kaos', 'kaos', ''),
(5, 'Watch Winder', 'Rp3.829.000', '', 'Apa perbedaan dengan merk-merk seperti Ta*yu atau merk lain yg lbh murah ?\r\n1. Winder yang kami jual ada beberapa mode putar, kalau merk Ta*yu tidak ada mode putar (1 arah saja)\r\n2. Winder yang kami jual ada auto off ketika winder dibuka, merk Ta*yu tidak auto off apabila winder dibuka (bisa juga diset tetap nyala apabila dibuka)\r\n3. Winder yang kami jual ada saklar on off di bagian belakang\r\n4. Penggunaan material kayu solid tidak mudah retak/pecah, sehingga terlihat kokoh dan ketika di taruh tidak mudah bergerak (berat barang yang diinput jelas lebih berat winder yang kami jual)\r\n5. Finishing cat sangat halus setiap permukaan sama rata, tidak ada cat menumpuk.\r\n6. Motor penggerak menggunakan merk Mabuchi dari Japan (sangat hening dan tanpa getaran)\r\n7. Compatible hampir seluruh jam otomatis yang dijual dipasaran (diameter 45mm++ dan tebal body 13mm)\r\n8. Foam Pad yg bisa disesuaikan dengan besarnya jam\r\n9. Menggunakan bahan leather PU yang tidak berbau\r\n10. Packing standard Export. (Double Box + Foam + Bubble) Sangat aman utk pengiriman luar negeri maupun luar kota.\r\n11. Untuk tipe tertentu box winder dpt dikunci\r\n12. Menggunakan leather synthetic berkualitas tidak mudah pecah/sobek dalam jangka waktu yg lama.\r\n13. Garansi 6 bulan Aftersales Service 100% terjamin!\r\n\r\nWinder 6 slot otomatis dan 10 slot manual\r\n\r\nAvailable Color :\r\n- Finish Glossy Black inside Black\r\n- Finish Glossy Red inside Black\r\n\r\nTerdapat 4 macam putaran yang bisa digunakan :\r\n\r\nFeatures:\r\n4 type Winder Mode:\r\nMode 1: Clockwise Winding 2 Menit, Istirahat 6 Menit, Ulang Kembali\r\nMode 2: Counter-Clockwise Winding 2 Menit, Istirahat 6 Menit, Ulang Kembali\r\nMode 3: Clockwise Winding 2 Menit, Istirahat 6 Menit, Counter-Clockwise Winding 2 Menit, Ulang Kembali\r\nMode 4: Clockwise Winding 5 Menit, Counter-Clockwise Winding 5 Menit, Istirahat 3 Jam, Ulang Kembali\r\n\r\nKelengkapan :\r\n- Watch Winder\r\n- Eu Plug Adaptor\r\n- Manual Box', 'Jam Tangan', 'Jam Tangan', ''),
(6, 'MIDO M026.830', 'Rp13.850.000', '', 'Deskripsi MIDO M026.830.11.041.00 OCEAN STAR TRIBUTE AUTOMATIC BLUE DIAL\r\n- PRODUK BARU & 100% ORIGINAL\r\n- BERGARANSI RESMI 2 TAHUN\r\n- PAKET BERISI JAM TANGAN, BOX, BUKU PANDUAN, DAN KARTU GARANSI\r\n\r\n- CASE DIAMETER : 40.5MM\r\n- CASE THICKNESS : 13.43MM\r\n- CASE MATERIAL : STAINLESS STEEL\r\n- DIAL COLOR : BLUE\r\n- GLASS MATERIAL : SAPPHIRE CRYSTAL\r\n- BAND MATERIAL : STAINLESS STEEL\r\n- BAND WIDTH : 21MM\r\n- AUTOMATIC MOVEMENT\r\n- AUTOMATIC MIDO CALIBER 80 (base ETA C07.621)\r\n- WATER RESISTANT 20 BAR\r\n- DAY AND DATE DISPLAY\r\n- SWISS MADE\r\n- FREE 1 PC BLUE LEATHER STRAP (interchangeable)', 'Jam Tangan', 'Jam Tangan', ''),
(7, 'kemeja flannel', 'Rp120.000', '', 'Size M L XL\r\n.\r\nKemeja Flannel Lengan Panjang Unisex\r\n-------------------------\r\nPrice\r\nM L XL = 120k\r\nMerk : MIKE.PM\r\nMaterial : Woll Premium\r\n100% Foto Asli By @padda.id\r\n--------------------------\r\nSize chart\r\nM = 50 cm x 70 cm\r\nL = 52 cm x 72 cm\r\nXL = 54 cm x 74 cm\r\n--------------------------\r\nFormat pemesanan\r\nNama :\r\nAlamat :\r\nNo Hp :\r\n--------------------------\r\nContact Person\r\nWa : 082386243168\r\n--------------------------\r\nNB : Garansi jika ada kesalahan dari bagian produksi , barang tidak sesuai dengan foto barang boleh ditukar', 'Kemeja', 'Kemeja', '');

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
('nsjansn', 'ndns', 'nznz', 'nsjen@', 97979, '$2y$10$tImEzklpVXmzJRm8qpQoH.XPbu.DDsL0LbNMvaGxtK4F8GLYlo1eu'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
