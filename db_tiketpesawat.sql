-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2024 pada 17.06
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiketpesawat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_penerbangan` varchar(12) NOT NULL,
  `nama_maskapai` varchar(25) NOT NULL,
  `asal` varchar(30) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_penerbangan`, `nama_maskapai`, `asal`, `tujuan`, `hari`, `jam`, `tipe`, `harga`) VALUES
('A001', 'AirLines', 'Banjarmasin', 'Jakarta', 'Senin', '04:00:00', 'Ekonomi', 864000),
('A002', 'AirLines', 'Banjarmasin', 'Yogyakarta', 'Kamis', '13:00:00', 'Bisnis', 1950000),
('A003', 'AirLines', 'Banjarmasin', 'Surabaya', 'Sabtu', '17:00:00', 'Ekonomi', 1200000),
('B001', 'Batik Air', 'Banjarmasin', 'Jepang', 'Senin', '12:00:00', 'Ekonomi', 1800000),
('B002', 'Batik Air', 'Banjarmasin', 'Yogyakarta', 'Sabtu', '11:00:00', 'Bisnis', 2340000),
('B003', 'Batik Air', 'Banjarmasin', 'Bandung', 'Kamis', '03:00:00', 'Ekonomi', 1440000),
('C001', 'Citilink', 'Banjarmasin', 'Jakarta', 'Selasa', '05:00:00', 'Ekonomi', 960000),
('C002', 'Citilink', 'Banjarmasin', 'Belanda', 'Senin', '14:00:00', 'Bisnis', 4725000),
('C003', 'Citilink', 'Banjarmasin', 'Amerika', 'Sabtu', '04:00:00', 'Bisnis', 7500000),
('G001', 'Garuda', 'Banjarmasin', 'Arab Saudi', 'Kamis', '19:00:00', 'Ekonomi', 3200000),
('G002', 'Garuda', 'Banjarmasin', 'Surabaya', 'Rabu', '09:00:00', 'Ekonomi', 1440000),
('G003', 'Garuda', 'Banjarmasin', 'Jakarta', 'Minggu', '01:00:00', 'Ekonomi', 960000),
('L001', 'LionAir', 'Banjarmasin', 'Bali', 'Sabtu', '03:00:00', 'Ekonomi', 1840000),
('L002', 'LionAir', 'Banjarmasin', 'Bandung', 'Senin', '13:00:00', 'Ekonomi', 1296000),
('L003', 'LionAir', 'Banjarmasin', 'Surabaya', 'Rabu', '20:00:00', 'Bisnis', 2250000),
('N001', 'Nam Air', 'Banjarmasin', 'Jerman', 'Jum\'at', '01:00:00', 'Bisnis', 5700000),
('N002', 'Nam Air', 'Banjarmasin', 'Medan', 'Senin', '07:00:00', 'Bisnis', 3240000),
('N003', 'Nam Air', 'Banjarmasin', 'Jakarta', 'Senin', '03:00:00', 'Ekonomi', 864000),
('S001', 'Sriwijaya Air', 'Banjarmasin', 'Rusia', 'Minggu', '20:00:00', 'Ekonomi', 800000),
('S002', 'Sriwijaya Air', 'Banjarmasin', 'Jakarta', 'Rabu', '04:00:00', 'Bisnis', 1800000),
('S003', 'Sriwijaya Air', 'Banjarmasin', 'Bali', 'Selasa', '06:00:00', 'Bisnis', 4140000),
('T001', 'Trigana Air', 'Banjarmasin', 'Yogyakarta', 'Rabu', '11:00:00', 'Ekonomi', 1248000),
('T002', 'Trigana Air', 'Banjarmasin', 'Medan', 'Sabtu', '20:00:00', 'Ekonomi', 1600000),
('T003', 'Trigana Air', 'Banjarmasin', 'Rusia', 'Kamis', '12:00:00', 'Bisnis', 1500000),
('T004', 'Tama Airlines', 'Banjarmasin', 'Bali', 'Kamis', '07:00:00', 'Ekonomi', 2208000),
('W001', 'Wings Air', 'Banjarmasin', 'Jepang', 'Jum\'at', '16:00:00', 'Bisnis', 3750000),
('W002', 'Wings Air', 'Banjarmasin', 'Amerika', 'Minggu', '22:00:00', 'Bisnis', 7500000),
('W003', 'Wings Air', 'Banjarmasin', 'Bali', 'Rabu', '08:00:00', 'Bisnis', 4140000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Jakarta'),
(2, 'Yogyakarta'),
(3, 'Bandung'),
(4, 'Surabaya'),
(5, 'Bali'),
(6, 'Medan'),
(7, 'Amerika'),
(8, 'Jepang'),
(9, 'Rusia'),
(10, 'Arab Saudi'),
(11, 'Jerman'),
(12, 'Belanda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` enum('admin','manajer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'manajer', 'manajer', 'manajer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_penerbangan` varchar(12) NOT NULL,
  `nama_maskapai` varchar(25) NOT NULL,
  `asal` varchar(30) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` time NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nik`, `nama`, `id_penerbangan`, `nama_maskapai`, `asal`, `tujuan`, `hari`, `jam`, `tipe`, `harga`) VALUES
(1, '637101200830102', 'Tamami', 'S002', 'Sriwijaya Air', 'Banjarmasin', 'Jakarta', 'Rabu', '04:00:00', 'Bisnis', 1800000),
(2, '6371012418252', 'Junaidi', 'B001', 'Batik Air', 'Banjarmasin', 'Jepang', 'Senin', '12:00:00', 'Ekonomi', 1800000),
(3, '631010234125', 'Kurniawan', 'N001', 'Nam Air', 'Banjarmasin', 'Jerman', 'Jum\'at', '01:00:00', 'Bisnis', 5700000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_penerbangan`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_penerbangan` (`id_penerbangan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
