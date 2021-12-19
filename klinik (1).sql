-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 05:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `namaDokter` varchar(200) NOT NULL,
  `almt` varchar(200) NOT NULL,
  `jeniskelamin` varchar(10) NOT NULL,
  `spesialis` varchar(4) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `namaDokter`, `almt`, `jeniskelamin`, `spesialis`, `telp`) VALUES
(1, 'dr. Hermawan, S.Ked', 'Jl. Bendungan Sutami ', 'Laki-laki', 'UMUM', '089987653256'),
(2, 'drg. Annisa Kurniawan', 'Jl. Veteran', 'Perempuan', 'GIGI', '089567895467'),
(3, 'dr. Diana Basuki, Sp.THT-KL', 'Jl. Soekarno Hatta', 'Perempuan', 'THT', '085815766040');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `idDokter` int(11) NOT NULL,
  `hari` varchar(8) NOT NULL,
  `jampraktek` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `idDokter`, `hari`, `jampraktek`) VALUES
(1, 1, 'Senin', '08.00 - 14.00'),
(2, 1, 'Selasa', '08.00 - 14.00'),
(3, 1, 'Jumat', '09.00 - 15.00'),
(4, 2, 'Rabu', '13.00 - 17.00'),
(5, 2, 'Kamis', '09.00 - 14.00'),
(6, 2, 'Jumat', '12.00 - 15.00'),
(7, 3, 'Selasa', '10.00 - 13. 00'),
(8, 3, 'Jumat', '09.00 - 12.00'),
(9, 3, 'Rabu', '14. 00 - 17.00');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenisKelamin` varchar(12) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `alamat`, `jenisKelamin`, `telepon`) VALUES
(1, 'Maman Suryaman', 'Jl. Kutilang No. 88, Surabaya', 'Laki-laki', '081212121212'),
(2, 'Wiwin Andayani', 'Jl. Diponegoro No.11, Solo', 'Perempuan', '082323232323'),
(3, 'Doni Maruli', 'Jl. Kembang No. 12', 'Laki-laki', '876767676'),
(4, 'Moreno', 'Jl. Dukuh No. 01', 'Laki-laki', '8545454545'),
(5, 'Nina Amrita', 'Jl. Kasembon No. 27', 'Perempuan', '08414141414'),
(6, 'Yono Sitohang', 'Jl. Dewi No, 34', 'Laki-laki', '089898989'),
(7, 'Siska Ardiani', 'Jl. Gading No. 19', 'Perempuan', '087575757575'),
(8, 'Nora Wandhika', 'Jl. Semanggi No. 09', 'Perempuan', '08383838383'),
(9, 'Bima Sakti', 'Jl. Pontianak No. 21', 'Laki-laki', '08323232323'),
(10, 'Chika Cendekia', 'Jl. Sampang No. 27', 'Perempuan', '085454545454'),
(11, 'Lidya Anggraeni ', 'Jl. Semanggi No. 05', 'Perempuan', '089790876570'),
(12, 'Satria', 'Malang', 'Laki-laki', '089765423345'),
(13, 'Steven', 'Malang', 'Laki-laki', '089765456789'),
(14, 'jodi', 'Malang', 'Laki-laki', '8687676667'),
(15, 'Aliya', 'Jl. Pisang Kipas', 'Perempuan', '089756436678'),
(16, 'Firdha', 'Jl. Semanggi No. 05', 'Perempuan', '085678908876'),
(17, 'Faisal', 'Jl. Kenanga', 'Laki-laki', '085789765567');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenisKelamin` varchar(12) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `jenisKelamin`, `telepon`) VALUES
(1, 'Damar Muzzaki', 'Jl. Kerinci No. 22', 'Laki-laki', '081212121212'),
(2, 'Dana Prayoga', 'Jl. Sultan No.67', 'Laki-laki', '0826732432'),
(3, 'Romania', 'Jl. Coklat No. 08', 'Perempuan', '0826372362'),
(4, 'Siska Ardiani', 'Jl. Gading No. 19', 'Perempuan', '087575757575'),
(5, 'Dimas Anggara', 'Jl. Ciledug No. 7', 'Laki-laki', '08637463544'),
(6, 'Sonia Azzahra', 'Jl. Durian No. 34', 'Perempuan', '0874373764'),
(7, 'Dana Prayoga', 'Jl. Kasembon No. 27', 'Laki-laki', '08347346345'),
(8, 'Sisca Wardhani', 'Jl. Kelengkeng No. 12', 'Perempuan', '0847346375'),
(9, 'Nike Tatia', 'Jl. Kemuning No. 55', 'Perempuan', '08473465564'),
(10, 'Bima Sakti', 'Jl. Kelapa No. 9', 'Laki-laki', '0834735343'),
(11, 'Shinta', 'Jakarta', 'Perempuan', '089789098789'),
(12, 'Satria', 'Jakarta', 'Laki-laki', '089789098789'),
(13, 'Joni', 'Malang', 'Laki-laki', '089789065435');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `level`) VALUES
(1, 'admin', 'admin@mail.com', '1234', 'admin'),
(2, 'rara', 'rara@mail.com', '5678', 'user'),
(3, 'guest', 'admin@example.com', '1212', 'user'),
(4, 'khoirunnisak', 'khrnnisak07@gmail.com', '123456', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDokter` (`idDokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
