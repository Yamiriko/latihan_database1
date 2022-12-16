-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Des 2022 pada 05.43
-- Versi server: 10.1.22-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--
CREATE DATABASE IF NOT EXISTS `coba` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `coba`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_coba`
--

DROP TABLE IF EXISTS `tb_coba`;
CREATE TABLE `tb_coba` (
  `kode` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_coba`
--

INSERT INTO `tb_coba` (`kode`, `nama`, `jenis_kelamin`, `tgl_lahir`) VALUES
('A-1', 'Peter Parker', 'Laki-Laki', '2000-03-10'),
('A-2', 'John Cena', 'Laki-Laki', '1983-03-10'),
('A-3', 'Undertaker', 'Laki-Laki', '1978-03-12'),
('A-4', 'Lara Croft', 'Perempuan', '1983-03-10'),
('A-5', 'Emma Watson', 'Perempuan', '1983-03-10'),
('A-6', 'TES input', 'Laki-Laki', '1980-11-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

DROP TABLE IF EXISTS `tb_pengguna`;
CREATE TABLE `tb_pengguna` (
  `nm_pengguna` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `psw_pengguna` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `level_user` enum('Admin','Operator') COLLATE latin1_general_ci DEFAULT NULL,
  `terakhir_login` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`nm_pengguna`, `psw_pengguna`, `level_user`, `terakhir_login`) VALUES
('JeanRiko', '4321', 'Admin', '2022-12-16 11:42:10'),
('operator', '1234', 'Operator', NULL),
('admin', '5678', 'Admin', '2022-12-12 20:23:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna_histori`
--

DROP TABLE IF EXISTS `tb_pengguna_histori`;
CREATE TABLE `tb_pengguna_histori` (
  `kd_histori` int(11) NOT NULL,
  `nm_pengguna` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `keterangan` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_wkt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_pengguna_histori`
--

INSERT INTO `tb_pengguna_histori` (`kd_histori`, `nm_pengguna`, `keterangan`, `tgl_wkt`) VALUES
(1, 'Jeanriko', 'Pengguna ini barusan login', '2022-12-16 11:31:58'),
(2, 'JeanRiko', 'Pengguna ini barusan login', '2022-12-16 11:33:13'),
(3, 'JeanRiko', 'Pengguna ini barusan login', '2022-12-16 11:42:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_coba`
--
ALTER TABLE `tb_coba`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`nm_pengguna`);

--
-- Indeks untuk tabel `tb_pengguna_histori`
--
ALTER TABLE `tb_pengguna_histori`
  ADD PRIMARY KEY (`kd_histori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna_histori`
--
ALTER TABLE `tb_pengguna_histori`
  MODIFY `kd_histori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
