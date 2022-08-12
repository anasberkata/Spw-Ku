-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2022 at 09:00 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkncil4_spw`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tool`
--

CREATE TABLE `tbl_tool` (
  `id_tool` int(11) NOT NULL,
  `tool` varchar(128) NOT NULL,
  `brand` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tool_condition` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tool`
--

INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES
(1, 'Showcase', 'Panasonic', 1, 0, 1, 'Kepemilikan Titipan Coca Cola', 1, 1),
(2, 'Freezer', 'Aqua 262 Liter', 1, 0, 1, 'Kepemilikan Titipan AICE', 1, 1),
(3, 'Rak Piring', '3 Tingkat', 1, 200000, 1, 'Kepemilikan SPW', 1, 1),
(5, 'Kompor', 'Rinnai 2 Tungku', 1, 325000, 1, 'Kepemilikan SPW', 1, 1),
(6, 'Kompor Rinnai', '', 1, 0, 1, '', 2, 1),
(7, 'Kompor', 'Rinai 2 Tungku', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(8, 'Gas 3 Kg', '3 Kg', 2, 160000, 1, 'Kepemilikan SPW', 1, 1),
(9, 'Gas 5 Kg', '5 Kg', 1, 400000, 1, 'Kepemilikan SPW', 1, 1),
(10, 'Estalase', '2 Meter', 1, 1200000, 1, 'Kepemilikan SPW', 1, 1),
(11, 'Rice Cooker', '', 1, 250000, 1, 'Kepemilikan SPW', 1, 1),
(12, 'Langseng', '', 1, 50000, 1, 'Kepemilikan SPW', 1, 1),
(13, 'Katel Besar', 'Ukuran Besar', 1, 75000, 1, 'Kepemilikan SPW', 1, 1),
(14, 'Katel Kecil', 'Ukuran Kecil', 1, 45000, 1, 'Kepemilikan SPW', 1, 1),
(15, 'Baskom Besar', 'Ukuran Besar Biru', 1, 75000, 1, 'Kepemilikan SPW', 1, 1),
(16, 'Baskom Kecil', 'Ukuran Kecil Warna Merah', 2, 25000, 1, 'Kepemilikan SPW', 1, 1),
(17, 'Kontener Besar', 'Lion Star', 1, 125000, 1, 'Kepemilikan SPW', 1, 1),
(18, 'Timbingan Digital', 'Kapasitas Max 5 Kg', 5, 100000, 1, 'Kepemilikan SPW', 1, 1),
(19, 'Gunting', '', 1, 25000, 1, 'Kepemilikan SPW', 1, 1),
(20, 'Talenan Kayu', 'Kayu', 2, 10000, 1, 'Kepemilikan SPW', 1, 1),
(21, 'Serokan', 'Stanless', 4, 20000, 1, 'Kepemilikan SPW', 1, 1),
(22, 'Sodet', 'Plastik', 3, 5000, 1, 'Kepemilikan SPW', 1, 1),
(23, 'Sealer', '', 5, 250000, 1, 'Kepemilikan SPW', 1, 1),
(24, 'Timbangan BDigital Besar', 'Kapasitas Max 100 Kg', 1, 400000, 1, 'Kepemilikan SPW', 1, 1),
(25, 'Keler Besar', '', 1, 45000, 1, 'Kepemilikan SPW', 1, 1),
(26, 'Gelas Plastik', 'Plastik', 167, 5000, 1, 'Kepemilikan SPW', 1, 1),
(27, 'Cangkir Plastik', 'Plastik', 6, 5000, 1, 'Kepemilikan SPW', 1, 1),
(28, 'Piring Plastik', 'Plastik', 9, 7000, 1, 'Kepemilikan SPW', 1, 1),
(29, 'Mangkok Plastik', 'Plastik', 254, 7000, 1, 'Kepemilikan SPW', 1, 1),
(30, 'Mangkok Kaca', 'Kaca', 1, 20000, 1, 'Kepemilikan SPW', 1, 1),
(31, 'Box Roti Bening', 'Plastik', 5, 35000, 1, 'Kepemilikan SPW', 1, 1),
(32, 'Baki', '', 2, 20000, 1, 'Kepemilikan SPW', 1, 1),
(33, 'Gayung', 'Gayung', 1, 1000, 0, '', 1, 1),
(34, 'Gayung', 'Plastik', 1, 10000, 1, 'Kepemilikan SPW', 1, 1),
(35, 'Ember', 'Plastik', 1, 15000, 1, 'Kepemilikan SPW', 1, 1),
(36, 'Pe\'lan', '', 3, 15000, 1, 'Kepemilikan SPW', 1, 1),
(37, 'Meja Kecil', 'Kayu', 8, 0, 1, 'Kepemilikan Sekolah', 1, 1),
(38, 'Meja Besar', 'Kayu', 2, 0, 1, 'Kepemilikan Sekolah', 1, 1),
(39, 'Bangku Kayu', 'Kayu', 16, 0, 1, 'Kepemilikan Sekolah', 1, 1),
(40, 'Kursi Plastik', 'Plastik', 2, 50000, 1, 'Kepemilikan SPW', 1, 1),
(41, 'Cetakan Telur', 'Stanless', 1, 35000, 1, 'Kepemilikan SPW', 1, 1),
(42, 'Botol Saus Kecap', 'Plastik', 3, 15000, 1, 'Kepemilikan SPW', 1, 1),
(43, 'Pisau', 'Stanless', 4, 20000, 1, 'Kepemilikan SPW', 1, 1),
(44, 'Centong', 'Plastik', 2, 10000, 1, 'Kepemilikan SPW', 1, 1),
(45, 'Sendok Nasi', 'Plastik', 3, 10000, 1, 'Kepemilikan SPW', 1, 1),
(46, 'Sendok Stanless', 'Stanless', 85, 2000, 1, 'Kepemilikan SPW', 1, 1),
(47, 'Garpu', 'Stanless', 9, 2000, 1, 'Kepemilikan SPW', 1, 1),
(48, 'Sendok Plastik', 'Plastik', 135, 200, 1, 'Kepemilikan SPW', 1, 1),
(49, 'Penjapit', 'Almunium', 1, 15000, 1, 'Kepemilikan SPW', 1, 1),
(50, 'Sapu', 'Kayu', 1, 10000, 1, 'Kepemilikan SPW', 1, 1),
(51, 'Termos Es', 'Kapasitas 20 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(52, 'Sinduk', 'Plastik', 1, 12000, 1, 'Kepemilikan SPW', 1, 1),
(53, 'Gas LPG', '3 Kg', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(54, 'Blender', 'Philips', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(55, 'Galon', '19 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(56, 'Rak Plastik', 'Plastik', 1, 12000, 1, 'Kepemilikan SPW', 1, 1),
(57, 'Galon dengan Kran ', 'Kapasitas 5 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  ADD PRIMARY KEY (`id_tool`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  MODIFY `id_tool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
