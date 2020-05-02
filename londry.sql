-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Agu 2019 pada 11.16
-- Versi server: 10.1.32-MariaDB
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
-- Database: `londry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telfon` int(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderan`
--

CREATE TABLE `orderan` (
  `id` int(11) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `jenis_pakaian` varchar(150) NOT NULL,
  `berat` varchar(100) NOT NULL,
  `total_harga` varchar(300) NOT NULL,
  `nama_kasir` varchar(100) NOT NULL,
  `tgl_simpan` varchar(50) NOT NULL,
  `tgl_update` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orderan`
--

INSERT INTO `orderan` (`id`, `nama_customer`, `jenis_pakaian`, `berat`, `total_harga`, `nama_kasir`, `tgl_simpan`, `tgl_update`, `status`) VALUES
(1, 'Naufal Islam', 'Baju Sekolah', '2 Kg', 'Rp. 12.000', 'Abdul Rahman', '2019-08-07', '2019-08-08', 'proses'),
(2, 'Fakhrur Riza', 'Baju Dinas', '3 Kg', 'Rp. 18.000', 'Abdul Rahman', '2019-08-06', '2019-08-06', 'proses'),
(3, 'Galan Dewa S', 'Pakaian Harian', '3 kg', 'Rp. 12.000', 'Abdul Rahman', '2019-08-08', '2019-08-08', 'di ambil'),
(4, 'Angga', 'kaos', '12 kg', 'Rp. 18.000', 'Abdul Rahman', '2019-08-09', '2019-08-10', 'proses'),
(5, 'Dani Prayitno', 'Jeans', '12 kg', 'Rp. 18.000', 'Abdul Rohman', '2019-08-09', '2019-08-10', 'proses'),
(6, 'Dani Prayitno', 'Jeans', '12 kg', 'Rp. 18.000', 'Abdul Rohman', '2019-08-09', '2019-08-10', 'di ambil'),
(11, 'Naufal', 'Ganti', '2 Kg', 'Rp. 12.000', 'Abdul Rahman', '09-08-2019', '09-08-2019', 'proses'),
(19, 'Sinopal', 'Celana', '3', '100000', 'Sinopil', '14-08-2019', '17-08-2019', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orderan`
--
ALTER TABLE `orderan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orderan`
--
ALTER TABLE `orderan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
