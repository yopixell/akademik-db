-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2025 pada 16.16
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `NIDN` char(10) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `e-mail` varchar(100) NOT NULL,
  `Alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`NIDN`, `Nama`, `e-mail`, `Alamat`) VALUES
('FEMAN40001', 'Satrio S.E.', 'satrio@untid.ac.id', 'Jl. Untid'),
('FKFAR70001', 'Kana S.Farm.', 'kana@untid.ac.id', 'Jl. Cempaka'),
('FKIPG11001', 'Solik S.Pd.', 'solik@untid.ac.id', 'Jl. Muda'),
('FKIPG60001', 'Baha\' S.Pd.', 'baha@untid.ac.id', 'Jl. Salam'),
('FPTEP50001', 'Sabik S.P.', 'sabik@untid.ac.id', 'Jl. alhusna'),
('FTMES20001', 'Roger S.T.', 'roger@untid.ac.id', 'Jl. Kucing'),
('FTSIP30001', 'Gatot S.T.', 'gatot@untid.ac.id', 'Jl. Lord'),
('FTTIF10001', 'Hinata Hyuga S.Kom.', 'hinatahyuga@untid.ac.id', 'Jl. Kenagan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `Kode_Jurusan` tinyint(4) NOT NULL,
  `Nama_Jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`Kode_Jurusan`, `Nama_Jurusan`) VALUES
(1, 'S1 Teknologi Informasi'),
(2, 'S1 Teknik Mesin'),
(3, 'S1 Teknik Elektro'),
(4, 'S1 Manajement'),
(5, 'S1 Teknologi Pangan'),
(6, 'S1 Pendidikan Guru Sekolah Dasar'),
(7, 'S1 Farmasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `Kode_Jurusan` tinyint(4) DEFAULT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_Hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `Kode_Jurusan`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `No_Hp`) VALUES
('24101', 1, 'Zulfa Nasihin', 'Magelang', '2001-11-18', 'L', '088274189233'),
('24102', 1, 'Aditya Setyo Prabowo', 'Temanggung', '2001-12-23', 'L', '081034567932'),
('24103', 1, 'Yofi Widiyanto', 'Temanggung', '2001-01-01', 'L', '081234567890'),
('24104', 1, 'Haruna Al-alishba', 'Sleman', '2000-04-15', 'P', '088894501899'),
('24201', 2, 'Sovia Bahirotun', 'Temanggung', '2001-02-08', 'P', '081236427892'),
('24202', 2, 'Destian Dwi Saputri', 'Temanggung', '2000-01-07', 'P', '080984501882'),
('24301', 2, 'Muhammad Ilham At Tarik', 'Temanggung', '2001-03-29', 'L', '082234567890'),
('24302', 3, 'Sifa Safitri', 'Aceh', '2001-05-16', 'P', '087765932544'),
('24303', 3, 'Rosidi Budiyanto', 'Papua', '2002-08-04', 'L', '087473828484'),
('24401', 4, 'Paijo Samarkondi', 'Jakarta Selatan', '2000-04-21', 'L', '083728478839'),
('24501', 5, 'Tiara Nuraini', 'Salatiga', '2001-08-01', 'P', '086239369890'),
('24601', 6, 'Numara Walter', 'Depok', '2001-09-17', 'P', '083627433776'),
('24602', 6, 'Jihar Aisya', 'Ngawi', '2000-03-05', 'P', '087635446777'),
('24701', 7, 'Dionius Brando', 'Nusa Tenggara Timur', '2000-01-12', 'L', '087523145520'),
('24702', 7, 'Alula Losya', 'Kalimantan Utara', '2001-08-02', 'P', '089776562330');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `KODE_MK` char(20) NOT NULL,
  `NAMA_MK` varchar(20) NOT NULL,
  `SKS` int(11) NOT NULL,
  `NIDN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`KODE_MK`, `NAMA_MK`, `SKS`, `NIDN`) VALUES
('MK101', 'Kalkulus Dasar', 3, 'FTTIF10001'),
('MK201', 'Gambar Teknik', 3, 'FTMES20001'),
('MK301', 'Praktikum Bangunan', 1, 'FTSIP30001'),
('MK401', 'Manajemen Keuangan', 3, 'FEMAN40001'),
('MK501', 'Biologi', 2, 'FPTEP50001'),
('MK601', 'Matematika', 2, 'FKIPG60001'),
('MK701', 'Komunikasi Kesehatan', 3, 'FKFAR70001'),
('MKA01', 'Aljabar', 3, 'FTMES20001'),
('MKA02', 'Bahasa Indonesia', 2, 'FKIPG11001'),
('MKA03', 'Bahasa Inggris', 2, 'FKIPG11001'),
('MKA04', 'Pendidikan Kewargane', 2, 'FKIPG11001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `NPM` char(5) NOT NULL,
  `Kode_MK` char(20) NOT NULL,
  `Nilai` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`NPM`, `Kode_MK`, `Nilai`) VALUES
('24101', 'MK101', 99.99),
('24101', 'MKA03', 80.80),
('24101', 'MKA04', 76.95),
('24102', 'MK101', 86.00),
('24102', 'MKA03', 86.78),
('24103', 'MK101', 100.00),
('24103', 'MKA02', 78.90),
('24103', 'MKA04', 76.32),
('24104', 'MK101', 68.89),
('24201', 'MK201', 90.80),
('24201', 'MKA02', 89.78),
('24202', 'MK201', 97.65),
('24301', 'MK301', 76.88),
('24301', 'MKA02', 98.78),
('24301', 'MKA03', 68.99),
('24302', 'MK301', 99.08),
('24303', 'MK301', 87.96),
('24303', 'MKA02', 83.56),
('24401', 'MK401', 84.96),
('24401', 'MKA01', 85.97),
('24501', 'MK501', 96.75),
('24501', 'MKA03', 73.83),
('24601', 'MK601', 79.85),
('24601', 'MKA02', 79.45),
('24601', 'MKA03', 95.87),
('24602', 'MK601', 83.12),
('24602', 'MKA04', 59.99),
('24701', 'MK701', 75.75),
('24702', 'MK701', 98.86),
('24702', 'MKA02', 85.67);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIDN`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Kode_Jurusan`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`),
  ADD KEY `Kode_Jurusan` (`Kode_Jurusan`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`KODE_MK`),
  ADD KEY `NIDN` (`NIDN`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`NPM`,`Kode_MK`),
  ADD KEY `Kode_MK` (`Kode_MK`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `Kode_Jurusan` FOREIGN KEY (`Kode_Jurusan`) REFERENCES `jurusan` (`Kode_Jurusan`);

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`NIDN`) REFERENCES `dosen` (`NIDN`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`Kode_MK`) REFERENCES `matakuliah` (`KODE_MK`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
