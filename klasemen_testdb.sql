-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2022 pada 10.59
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klasemen_testdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_user`
--

CREATE TABLE `login_user` (
  `id` int(100) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_user`
--

INSERT INTO `login_user` (`id`, `username`, `password`) VALUES
(101, 'arifqi@gmail.com', 'klasemen123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi_user`
--

CREATE TABLE `registrasi_user` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `confirm_password` varchar(250) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasemen`
--

CREATE TABLE `tbl_klasemen` (
  `tim` varchar(250) NOT NULL,
  `ranking` int(4) NOT NULL,
  `pertandingan` int(4) NOT NULL,
  `menang` int(4) NOT NULL,
  `seri` int(4) NOT NULL,
  `kalah` int(4) NOT NULL,
  `gol` int(4) NOT NULL,
  `kebobolan` int(4) NOT NULL,
  `selisih_gol` int(4) NOT NULL,
  `poin` int(4) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_klasemen`
--

INSERT INTO `tbl_klasemen` (`tim`, `ranking`, `pertandingan`, `menang`, `seri`, `kalah`, `gol`, `kebobolan`, `selisih_gol`, `poin`, `id`) VALUES
('Persib', 6, 4, 2, 1, 1, 8, 2, 4, 7, 0),
('Persija', 7, 4, 1, 2, 1, 4, 3, 1, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `registrasi_user`
--
ALTER TABLE `registrasi_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_klasemen`
--
ALTER TABLE `tbl_klasemen`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
