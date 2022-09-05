-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2022 at 01:07 AM
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
-- Table structure for table `tbl_data_lab`
--

CREATE TABLE `tbl_data_lab` (
  `id_lab` int(11) NOT NULL,
  `lab` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data_lab`
--

INSERT INTO `tbl_data_lab` (`id_lab`, `lab`) VALUES
(1, 'Lab SPW 1'),
(2, 'Lab SPW 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_web`
--

CREATE TABLE `tbl_data_web` (
  `id_data_web` int(11) NOT NULL,
  `title_web` varchar(128) NOT NULL,
  `about_spw` varchar(1000) NOT NULL,
  `vision` varchar(1000) NOT NULL,
  `mission` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data_web`
--

INSERT INTO `tbl_data_web` (`id_data_web`, `title_web`, `about_spw`, `vision`, `mission`) VALUES
(1, 'SPW SMK NEGERI 2 CILAKU', 'Program SEKOLAH PENCETAK WIRASAHA (SPW-KU), merupakan salah satu pilar yang mendukung kegiatan kewirausahaan di SMK N 2 Cilaku Cianjur. Program ini merupakan integrasi dari mata pelajaran Produk Kreatif Kewirausahaan dan mata pelajaran produktif.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchise`
--

CREATE TABLE `tbl_franchise` (
  `id_franchise` int(11) NOT NULL,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_franchise`
--

INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`, `id_lab`) VALUES
(6, '2022-08-30', 13, 1),
(5, '2022-08-29', 7, 2),
(4, '2022-08-29', 7, 1),
(7, '2022-08-30', 13, 2),
(8, '2022-08-31', 11, 1),
(9, '2022-08-31', 11, 2),
(10, '2022-09-01', 6, 1),
(11, '2022-09-01', 6, 2),
(12, '2022-09-02', 9, 1),
(13, '2022-09-02', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchise_detail`
--

CREATE TABLE `tbl_franchise_detail` (
  `id_franchise_detail` int(11) NOT NULL,
  `id_franchise` int(11) NOT NULL,
  `id_franchisor` int(11) NOT NULL,
  `product` varchar(125) NOT NULL,
  `basic_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `qty_last` int(11) NOT NULL,
  `qty_selling` int(11) NOT NULL,
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_franchise_detail`
--

INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES
(9, 4, 1, 'Cirambay', 4000, 5000, 16, 1, 15, 60000, 75000),
(8, 4, 1, 'Pempek', 1700, 2000, 40, 17, 23, 39100, 46000),
(7, 4, 1, 'Keripik Kaca', 2500, 3000, 6, 0, 6, 15000, 18000),
(5, 4, 1, 'Nasi Uduk', 2500, 3000, 59, 3, 56, 140000, 168000),
(6, 4, 1, 'Basruk', 2500, 3000, 25, 17, 8, 20000, 24000),
(10, 4, 1, 'Pentol', 1700, 2000, 185, 18, 167, 283900, 334000),
(11, 4, 1, 'Basreng Cobek', 1700, 2000, 36, 1, 35, 59500, 70000),
(12, 4, 1, 'Nutrisari', 2500, 3000, 60, 43, 17, 42500, 51000),
(13, 4, 1, 'Sostel', 2500, 3000, 30, 14, 16, 40000, 48000),
(14, 4, 1, 'Pop Ice', 2500, 3000, 20, 18, 2, 5000, 6000),
(15, 4, 6, 'Buras', 800, 1000, 35, 14, 21, 16800, 21000),
(16, 4, 6, 'Gehu', 800, 1000, 25, 0, 25, 20000, 25000),
(17, 4, 6, 'Risol', 1000, 1500, 60, 0, 60, 60000, 90000),
(18, 4, 6, 'Nasi Bakar', 3500, 4000, 3, 0, 3, 10500, 12000),
(19, 5, 1, 'Nasi Uduk', 2500, 3000, 50, 0, 50, 125000, 150000),
(20, 5, 1, 'Basruk', 2500, 3000, 25, 11, 14, 35000, 42000),
(21, 5, 1, 'Keripik Kaca', 2500, 3000, 6, 0, 6, 15000, 18000),
(22, 5, 1, 'Pempek', 1700, 2000, 40, 22, 18, 30600, 36000),
(23, 5, 1, 'Cirambay', 4000, 5000, 16, 0, 16, 64000, 80000),
(24, 5, 1, 'Pentol', 1700, 2000, 155, 0, 155, 263500, 310000),
(25, 5, 1, 'Basreng Cobek', 1700, 2000, 25, 17, 8, 13600, 16000),
(26, 5, 1, 'Nutrisari', 2500, 3000, 60, 16, 44, 110000, 132000),
(27, 5, 1, 'Sostel', 2500, 3000, 30, 17, 13, 32500, 39000),
(28, 5, 1, 'Pop Ice', 2500, 3000, 20, 6, 14, 35000, 42000),
(29, 4, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(30, 5, 2, 'Samosa', 800, 1000, 72, 0, 72, 57600, 72000),
(31, 5, 2, 'Cilok Kacang', 1800, 2000, 60, 23, 37, 66600, 74000),
(32, 6, 1, 'Nasi Uduk', 2500, 3000, 52, 17, 35, 87500, 105000),
(33, 6, 1, 'Basruk', 2500, 3000, 25, 5, 20, 50000, 60000),
(34, 6, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000),
(35, 6, 1, 'Cirambay', 4000, 5000, 15, 1, 14, 56000, 70000),
(36, 6, 1, 'Pentol', 1700, 2000, 175, 33, 142, 241400, 284000),
(37, 6, 1, 'Sostel', 2500, 3000, 25, 8, 17, 42500, 51000),
(38, 6, 1, 'Basreng Cobek', 1700, 2000, 40, 0, 40, 68000, 80000),
(39, 6, 1, 'Nutrisari', 2500, 3000, 60, 34, 26, 65000, 78000),
(40, 6, 1, 'Pop Ice', 2500, 3000, 20, 10, 10, 25000, 30000),
(41, 6, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(42, 6, 6, 'Risol', 1000, 1500, 48, 0, 48, 48000, 72000),
(43, 6, 6, 'Gehu', 800, 1000, 45, 0, 45, 36000, 45000),
(44, 6, 6, 'Buras', 800, 1000, 32, 18, 14, 11200, 14000),
(45, 6, 6, 'Nasi Bakar', 3500, 4000, 6, 0, 6, 21000, 24000),
(46, 7, 2, 'Samosa', 800, 1000, 75, 4, 71, 56800, 71000),
(47, 7, 1, 'Nasi Uduk', 2500, 3000, 50, 5, 45, 112500, 135000),
(48, 7, 1, 'Basruk', 2500, 3000, 25, 4, 21, 52500, 63000),
(49, 7, 1, 'Pempek', 1700, 2000, 40, 38, 2, 3400, 4000),
(50, 7, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000),
(51, 7, 1, 'Pentol', 1700, 2000, 145, 0, 145, 246500, 290000),
(52, 7, 1, 'Sostel', 2500, 3000, 25, 17, 8, 20000, 24000),
(53, 7, 1, 'Basreng Cobek', 1700, 2000, 24, 0, 24, 40800, 48000),
(54, 7, 1, 'Nutrisari', 2500, 3000, 60, 33, 27, 67500, 81000),
(55, 7, 1, 'Pop Ice', 2500, 3000, 20, 14, 6, 15000, 18000),
(56, 8, 1, 'Nasi Uduk', 2500, 3000, 50, 29, 21, 52500, 63000),
(57, 8, 1, 'Basruk', 2500, 3000, 26, 0, 26, 65000, 78000),
(58, 8, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000),
(59, 8, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000),
(60, 8, 1, 'Pentol', 1700, 2000, 175, 0, 175, 297500, 350000),
(61, 8, 1, 'Sostel', 2500, 3000, 25, 6, 19, 47500, 57000),
(62, 8, 1, 'Basreng Cobek', 1700, 2000, 32, 2, 30, 51000, 60000),
(63, 8, 1, 'Nutrisari', 2500, 3000, 60, 34, 26, 65000, 78000),
(64, 8, 1, 'Pop Ice', 2500, 3000, 20, 7, 13, 32500, 39000),
(65, 8, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(66, 9, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(67, 9, 1, 'Nasi Uduk', 2500, 3000, 45, 0, 45, 112500, 135000),
(68, 9, 1, 'Basruk', 2500, 3000, 25, 0, 25, 62500, 75000),
(69, 9, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000),
(70, 9, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000),
(71, 9, 1, 'Pentol', 1700, 2000, 150, 0, 150, 255000, 300000),
(72, 9, 1, 'Sostel', 2500, 3000, 25, 7, 18, 45000, 54000),
(73, 9, 1, 'Basreng Cobek', 1700, 2000, 24, 0, 24, 40800, 48000),
(74, 9, 1, 'Nutrisari', 2500, 3000, 60, 34, 26, 65000, 78000),
(75, 9, 1, 'Pop Ice', 2500, 3000, 20, 17, 3, 7500, 9000),
(76, 10, 1, 'Nasi Uduk', 2500, 3000, 42, 2, 40, 100000, 120000),
(77, 10, 1, 'Basruk', 2500, 3000, 25, 1, 24, 60000, 72000),
(78, 10, 1, 'Pempek', 1700, 2000, 50, 11, 39, 66300, 78000),
(79, 10, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000),
(80, 10, 1, 'Pentol', 1700, 2000, 187, 45, 142, 241400, 284000),
(81, 10, 1, 'Sostel', 2500, 3000, 25, 21, 4, 10000, 12000),
(82, 10, 1, 'Basreng Cobek', 1700, 2000, 32, 4, 28, 47600, 56000),
(83, 10, 1, 'Nutrisari', 2500, 3000, 50, 36, 14, 35000, 42000),
(84, 10, 1, 'Pop Ice', 2500, 3000, 20, 19, 1, 2500, 3000),
(85, 10, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(86, 10, 6, 'Risol', 1000, 1500, 105, 10, 95, 95000, 142500),
(87, 10, 6, 'Nasi Bakar', 3500, 4000, 8, 3, 5, 17500, 20000),
(88, 10, 6, 'Gehu', 800, 1000, 125, 1, 124, 99200, 124000),
(89, 11, 1, 'Nasi Uduk', 2500, 3000, 42, 6, 36, 90000, 108000),
(90, 11, 1, 'Basruk', 2500, 3000, 25, 0, 25, 62500, 75000),
(91, 11, 1, 'Pempek', 1700, 2000, 50, 17, 33, 56100, 66000),
(92, 11, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000),
(93, 11, 1, 'Pentol', 1700, 2000, 150, 36, 114, 193800, 228000),
(94, 11, 1, 'Sostel', 2500, 3000, 25, 9, 16, 40000, 48000),
(95, 11, 1, 'Basreng Cobek', 1700, 2000, 32, 15, 17, 28900, 34000),
(96, 11, 1, 'Nutrisari', 2500, 3000, 50, 20, 30, 75000, 90000),
(97, 11, 1, 'Pop Ice', 2500, 3000, 20, 3, 17, 42500, 51000),
(98, 11, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchisor`
--

CREATE TABLE `tbl_franchisor` (
  `id_franchisor` int(11) NOT NULL,
  `franchisor` varchar(125) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_franchisor`
--

INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`) VALUES
(1, 'Pak Deri'),
(2, 'Bu Dyah'),
(3, 'Bu Siti Julaeha'),
(4, 'Bu Tuti'),
(5, 'Pak Anas'),
(6, 'Pak Luky');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `product` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `basic_price` int(100) NOT NULL,
  `selling_price` int(100) NOT NULL,
  `image` varchar(258) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES
(1, 'SPW-001', 1, 4, 'Cibodas Cup', 0, 315, 500, 'default-product.jpg', 1, 1),
(2, 'SPW-002', 1, 4, 'La Vida Cup', 0, 281, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-003', 1, 4, 'Hexua Cup', 24, 281, 500, 'default-product3.jpg', 1, 1),
(4, 'SPW-004', 1, 4, 'SUI Botol 600 mL', 156, 1520, 2000, 'default-product2.jpg', 1, 1),
(6, 'SPW-006', 1, 4, 'Arvin Botol 600 mL', 0, 1500, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 4, 'Ale - Ale', 76, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 4, 'Kiko', 120, 850, 1000, 'default-product.jpg', 1, 1),
(9, 'SPW-009', 2, 4, 'Koko Jelly Drink', 11, 795, 1500, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 4, 'Okky Jelly Drink', 16, 792, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-011', 2, 4, 'Teh Gelas', 9, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-012', 2, 4, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-013', 3, 4, 'Cocorio', 0, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-014', 3, 4, 'Top Ice', 0, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-015', 3, 4, 'Frenta', 0, 0, 0, 'default-product.jpg', 1, 1),
(16, 'SPW-016', 4, 4, 'Beng-beng', 85, 1700, 2000, 'default-product.jpg', 1, 1),
(17, 'SPW-017', 4, 4, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1),
(18, 'SPW-018', 4, 4, 'Chiki Ball', 4, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-019', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-020', 4, 4, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, 'SPW-021', 4, 4, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-022', 4, 4, 'Chocolatos Roll', 17, 795, 1000, 'default-product.jpg', 1, 1),
(23, 'SPW-023', 4, 4, 'Dilan 5 in 1', 12, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-024', 4, 4, 'Garuda Pilus', 122, 425, 500, 'default-product.jpg', 1, 1),
(25, 'SPW-025', 4, 4, 'Garuda Rosta', 0, 850, 1000, 'default-product.jpg', 1, 1),
(26, 'SPW-026', 4, 4, 'Gedy Malkist', 21, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-027', 4, 4, 'Gery Wafer', 21, 1583, 2000, 'default-product.jpg', 1, 1),
(28, 'SPW-028', 4, 4, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-029', 4, 4, 'Goriorio', 29, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-030', 4, 4, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, 'SPW-031', 4, 4, 'Kalpa', 12, 1667, 2000, 'default-product.jpg', 1, 1),
(32, 'SPW-032', 4, 4, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(33, 'SPW-033', 4, 4, 'Mie Shoer Kremez', 8, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-034', 4, 4, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-035', 4, 4, 'Nabati Aah', 62, 425, 500, 'default-product.jpg', 1, 1),
(36, 'SPW-036', 4, 4, 'Nabati Siip', 10, 425, 500, 'default-product.jpg', 1, 1),
(37, 'SPW-037', 4, 4, 'Nextar', 1, 1750, 2000, 'default-product.jpg', 1, 1),
(38, 'SPW-038', 4, 4, 'Oreo Soft Cake', 28, 1750, 2000, 'default-product.jpg', 1, 1),
(39, 'SPW-039', 4, 4, 'Roma Arden', 0, 1700, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-040', 4, 4, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-041', 4, 4, 'Roma Malkist', 30, 900, 1000, 'default-product.jpg', 1, 1),
(42, 'SPW-042', 4, 4, 'Slai O\'Lai', 111, 1334, 2000, 'default-product.jpg', 1, 1),
(43, 'SPW-043', 4, 4, 'Sosis Sonice Sapi / Ayam', 46, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-044', 4, 4, 'Timtam Maxi', 10, 875, 1000, 'default-product.jpg', 1, 1),
(45, 'SPW-045', 4, 4, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-046', 4, 4, 'Wafello', 13, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-047', 5, 4, 'Alpenliebe', 40, 196, 250, 'default-product.jpg', 1, 1),
(48, 'SPW-048', 5, 4, 'Kiss', 10, 0, 0, 'default-product.jpg', 1, 1),
(49, 'SPW-049', 5, 4, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-050', 5, 4, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-051', 5, 4, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1),
(52, 'SPW-052', 7, 4, 'Indomie Ayam Bawang', 64, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-053', 7, 4, 'Indomie Goreng', 26, 2675, 3000, 'default-product.jpg', 1, 1),
(54, 'SPW-054', 7, 4, 'Mie Sedap Ayam Bawang', 80, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-055', 7, 4, 'Mie Sedap Goreng', 40, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-056', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, 'SPW-057', 8, 4, 'Ballpoint Standard AE7', 16, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-058', 8, 4, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-059', 8, 4, 'Buku Saku Tipis', 75, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-060', 8, 4, 'Glue Stick', 12, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-061', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-062', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-063', 8, 4, 'Penggaris 30 Cm', 8, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-064', 8, 4, 'Tip-Ex', 0, 2500, 3000, 'default-product.jpg', 1, 1),
(65, 'SPW-065', 9, 4, 'Mixagrip Per Butir', 27, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-066', 9, 4, 'Hansaplast', 42, 225, 500, 'default-product.jpg', 1, 1),
(67, 'SPW-067', 9, 4, 'Promaag', 15, 667, 1000, 'default-product.jpg', 1, 1),
(68, 'SPW-068', 10, 4, 'Laurier', 8, 430, 500, 'default-product.jpg', 1, 1),
(69, 'SPW-069', 10, 4, 'Hers Protex', 6, 440, 500, 'default-product.jpg', 1, 1),
(70, 'SPW-070', 10, 4, 'Charm', 32, 430, 500, 'default-product.jpg', 1, 1),
(71, 'SPW-071', 10, 4, 'Tissue Tessa', 9, 1771, 2000, 'default-product.jpg', 1, 1),
(72, 'SPW-072', 10, 4, 'Minyak Sayur Promo 1 L', 0, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-073', 10, 4, 'Mama Lemon 1000', 10, 875, 1000, 'default-product.jpg', 1, 1),
(74, 'SPW-074', 10, 4, 'Garam Jempol', 3, 1500, 2000, 'default-product.jpg', 1, 1),
(75, 'SPW-075', 10, 4, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-076', 10, 4, 'Saos Gembol', 0, 2500, 3000, 'default-product.jpg', 1, 1),
(77, 'SPW-077', 10, 4, 'Cuka 1000', 5, 1000, 1000, 'default-product.jpg', 1, 1),
(78, 'SPW-078', 2, 2, 'Pulpy Orange', 41, 3833, 4500, 'default-product.jpg', 1, 1),
(79, 'SPW-079', 2, 2, 'Sprite Pet Seru 390 mL', 141, 3958, 4500, 'default-product.jpg', 1, 1),
(80, 'SPW-080', 2, 2, 'Fanta Pet Seru 390 mL', 70, 3958, 5000, 'default-product.jpg', 1, 1),
(81, 'SPW-081', 2, 2, 'Sprite Pet Imut 250 mL', 52, 2375, 3000, 'default-product.jpg', 1, 1),
(82, 'SPW-082', 2, 2, 'Fanta Pet Imut 250 mL', 54, 2375, 3000, 'default-product.jpg', 1, 1),
(83, 'SPW-083', 2, 2, 'Coca Cola Pet Imut 250 mL', 48, 2375, 3000, 'default-product.jpg', 1, 1),
(85, 'SPW-085', 2, 2, 'Coca Cola Pet Seru 390 mL', 65, 3958, 5000, 'default-product.jpg', 1, 1),
(86, 'SPW-086', 2, 2, 'Nutriboost', 38, 5333, 7000, 'default-product.jpg', 1, 1),
(87, 'SPW-087', 4, 4, 'Choki-Choki', 180, 900, 1500, 'default-product.jpg', 1, 1),
(88, 'SPW-088', 4, 4, 'Top Delfi', 99, 804, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-089', 6, 1, 'AICE Markisa 55 mL', 0, 1550, 3000, 'default-product.jpg', 1, 1),
(90, 'SPW-090', 6, 1, 'AICE Miki-Miki 39 gr', 112, 1558, 2000, 'default-product.jpg', 1, 1),
(91, 'SPW-091', 6, 1, 'AICE Nanas Stick 65gr', 75, 1550, 2000, 'default-product.jpg', 1, 1),
(92, 'SPW-092', 6, 1, 'AICE Semangka Stick 65gr', 81, 1550, 2000, 'default-product.jpg', 1, 1),
(93, 'SPW-093', 6, 1, 'AICE Sweet Corn Stick New 52gr FIFA SS', 198, 2362, 3000, 'default-product.jpg', 1, 1),
(94, 'SPW-094', 6, 1, 'AICE Mochi Stick 30gr SP', 40, 2313, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-095', 6, 1, 'AICE Mochi Durian 45mL SP', 0, 2212, 3000, 'default-product.jpg', 1, 1),
(96, 'SPW-096', 6, 1, 'AICE 2 Colour Chocolate Stick 50 mL', 0, 1912, 2500, 'default-product.jpg', 1, 1),
(97, 'SPW-097', 6, 1, 'AICE Milk Melon 50gr', 139, 1913, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-098', 6, 1, 'AICE Blueberry Yogurt Stick 49 mL', 0, 2500, 3000, 'default-product.jpg', 1, 1),
(99, 'SPW-099', 6, 1, 'AICE Fruit Twister Stick 60 mL', 42, 2425, 3000, 'default-product.jpg', 1, 1),
(100, 'SPW-100', 6, 1, 'AICE Chocolate Crispy Stick 60gr', 0, 4000, 5000, 'default-product.jpg', 1, 1),
(101, 'SPW-101', 6, 1, 'AICE Strawberry Crispy Stick New', 147, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-102', 6, 1, 'AICE Sundae Chocolate Cup 100 mL', 55, 4042, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-103', 6, 1, 'AICE Freezy Choco 49 mL', 0, 1560, 2000, 'default-product.jpg', 1, 1),
(104, 'SPW-104', 6, 1, 'AICE Bingo Cookies Cone 100 mL', 0, 4062, 4000, 'default-product.jpg', 1, 1),
(105, 'SPW-105', 5, 4, 'Bontea Green Lemon / Original', 34, 106, 250, 'default-product.jpg', 1, 1),
(106, 'SPW-106', 5, 4, 'Kiss Zak Cherry', 0, 0, 0, 'default-product.jpg', 1, 1),
(107, 'SPW-107', 5, 4, 'Kopiko Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(108, 'SPW-108', 5, 4, 'Mintz Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(109, 'SPW-109', 5, 4, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-110', 5, 4, 'Yupi', 0, 138, 250, 'default-product.jpg', 1, 1),
(111, 'SPW-111', 4, 4, 'Mio Fullo', 0, 0, 0, 'default-product.jpg', 1, 1),
(112, 'SPW-112', 4, 4, 'Garuda Katom', 0, 0, 2000, 'default-product.jpg', 1, 1),
(113, 'SPW-113', 4, 4, 'Gery Salut Hazelnut', 12, 446, 500, 'default-product.jpg', 1, 1),
(114, 'SPW-114', 4, 4, 'Gery Malkist Kelapa Coklat', 0, 0, 1000, 'default-product.jpg', 1, 1),
(115, 'SPW-115', 4, 4, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-116', 4, 4, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-117', 4, 4, 'Deka Kacang', 0, 870, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-118', 4, 4, 'Kacang Polong', 0, 0, 0, 'default-product.jpg', 1, 1),
(119, 'SPW-119', 4, 4, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1),
(120, 'SPW-120', 4, 4, 'Oreo Cream', 4, 1750, 2000, 'default-product.jpg', 1, 1),
(121, 'SPW-121', 4, 4, 'Roti Aoka', 1, 1800, 2000, 'default-product.jpg', 1, 1),
(122, 'SPW-122', 4, 4, 'Selimut', 16, 0, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-123', 4, 4, 'Tiktak', 20, 840, 1000, 'default-product.jpg', 1, 1),
(124, 'SPW-124', 4, 4, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-125', 4, 4, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, 'SPW-126', 4, 4, 'Monde Serena Gold', 6, 2000, 2500, 'default-product.jpg', 1, 1),
(127, 'SPW-127', 4, 4, 'Nabati Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-128', 2, 4, 'Calpico', 112, 2050, 3000, 'default-product.jpg', 1, 1),
(129, 'SPW-129', 2, 4, 'Kopikap', 117, 821, 1000, 'default-product.jpg', 1, 1),
(130, 'SPW-130', 2, 4, 'Milku 200 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(132, 'SPW-132', 10, 4, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-133', 10, 4, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1),
(134, 'SPW-134', 1, 4, 'Sui Cup 600 mL', 164, 281, 500, 'default-product.jpg', 1, 1),
(135, '', 1, 4, 'Arvin Botol 600ml', 0, 958, 2000, 'default-product.jpg', 2, 1),
(136, '', 1, 4, 'Sui Botol 600ml', 148, 958, 2000, 'IMG_20220824_074621.jpg', 2, 1),
(137, '', 6, 1, 'AICE Mochi Vanilla 30 gr', 50, 2313, 3000, 'default-product.jpg', 2, 1),
(138, '', 2, 2, 'Fanta Pet Seru 390 ml', 25, 3958, 5000, 'default-product.jpg', 2, 1),
(139, '', 6, 1, 'AICE 2 Colors Chocolate Stick 50ml', 49, 1912, 2500, 'default-product.jpg', 2, 1),
(140, '', 6, 1, 'AICE Bingo Cookies Cone 100ml', 48, 4062, 5000, 'default-product.jpg', 2, 1),
(141, '', 6, 1, 'AICE Blueberry Yoghurt Stick 49ml', 37, 1900, 2500, 'default-product.jpg', 2, 1),
(142, '', 6, 1, 'AICE Chocolate Crispy Stick 60g', 20, 4000, 5000, 'default-product.jpg', 2, 1),
(143, '', 6, 1, 'AICE Freezy Choco 49ml', 0, 1560, 2000, 'default-product.jpg', 2, 1),
(144, '', 6, 1, 'AICE Fruit Twister Stick 60ml', 160, 2425, 3000, 'default-product.jpg', 2, 1),
(145, '', 6, 1, 'AICE Milk 55ml', 11, 1940, 2500, 'default-product.jpg', 2, 1),
(146, '', 6, 1, 'AICE Miki-Miki 39g', 71, 1558, 2000, 'IMG_20220827_130747.jpg', 2, 1),
(147, '', 6, 1, 'AICE Milk Melon Stick 50g', 47, 1912, 2500, 'default-product.jpg', 2, 1),
(148, '', 6, 1, 'AICE Mochi Chocolate 45ml-SP', 40, 2313, 3000, 'default-product.jpg', 2, 1),
(149, '', 6, 1, 'AICE Mango Slush 30g', 35, 3017, 4000, 'IMG_20220827_131146.jpg', 2, 1),
(150, '', 6, 1, 'AICE Nanas Stick 65g', 28, 1540, 2000, 'default-product.jpg', 2, 1),
(151, '', 6, 1, 'AICE Semangka Stick 65g', 19, 1540, 2000, 'default-product.jpg', 2, 1),
(152, '', 6, 1, 'AICE Strawberry Crispy Stick New', 41, 2750, 3500, 'default-product.jpg', 2, 1),
(153, '', 6, 1, 'AICE Sundae Strawberry Cup 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1),
(154, '', 6, 1, 'AICE Sweet Corn Stick New 52g Fifa SS', 142, 2362, 3000, 'default-product.jpg', 2, 1),
(156, '', 6, 1, 'AICE Milk Melon Cone 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1),
(157, '', 6, 1, 'AICE Taro Crispy', 2, 2412, 3000, 'IMG_20220827_130709.jpg', 2, 1),
(158, '', 6, 1, 'AICE Choco Boost', 0, 4000, 5000, 'default-product.jpg', 2, 1),
(159, '', 6, 1, 'AICE Max Cone', 24, 4062, 5000, 'IMG_20220827_130927.jpg', 2, 1),
(160, '', 6, 1, 'AICE Berry Max Cone', 24, 4062, 5000, 'default-product.jpg', 2, 1),
(161, '', 6, 1, 'AICE Choco Cookies', 0, 3600, 4500, 'default-product.jpg', 2, 1),
(162, '', 6, 1, 'AICE Coffee Crispy', 0, 2750, 3500, 'default-product.jpg', 2, 1),
(163, '', 2, 2, 'Fanta Pet Imut 250ml', 66, 2375, 3000, 'default-product.jpg', 2, 1),
(164, '', 2, 2, 'Coca-Cola Pet Seru 390ml', 12, 3958, 5000, 'default-product.jpg', 2, 1),
(165, '', 2, 2, 'Coca-Cola Pet Imut 250ml', 71, 2375, 3000, 'default-product.jpg', 2, 1),
(166, '', 2, 2, 'Frestea 350ml', 232, 3500, 4500, 'default-product.jpg', 2, 1),
(167, '', 2, 2, 'Nutriboost', 72, 5333, 7000, 'default-product.jpg', 2, 1),
(168, '', 2, 2, 'Pulpy Orange', 42, 3833, 4500, 'default-product.jpg', 2, 1),
(169, '', 2, 2, 'Sprite Pet Imut 250ml', 20, 2375, 3000, 'default-product.jpg', 2, 1),
(170, '', 2, 2, 'Sprite Pet Seru 390ml', 36, 3958, 4500, 'default-product.jpg', 2, 1),
(171, '', 1, 4, 'Cibodas Cup', 0, 315, 500, 'default-product.jpg', 2, 1),
(172, '', 1, 4, 'La Vida Cup / SUI Cup', 226, 281, 500, 'default-product.jpg', 2, 1),
(173, '', 2, 4, 'Ale-Ale', 0, 792, 1000, 'default-product.jpg', 2, 1),
(174, '', 3, 4, 'Kiko', 0, 850, 1000, 'default-product.jpg', 2, 1),
(176, '', 2, 4, 'Okky Jelly Drink', 27, 792, 1000, 'default-product.jpg', 2, 1),
(177, '', 2, 4, 'Teh Gelas', 52, 813, 1000, 'default-product.jpg', 2, 1),
(178, '', 2, 4, 'Calpico 85ml / Calpis', 48, 2050, 3000, 'default-product.jpg', 2, 1),
(179, '', 2, 4, 'Milku 200ml', 0, 2583, 3000, 'default-product.jpg', 2, 1),
(180, '', 2, 4, 'Ultra 200ml', 0, 4104, 5000, 'default-product.jpg', 2, 1),
(181, '', 5, 4, 'Alpenliebe', 0, 200, 250, 'default-product.jpg', 2, 1),
(182, '', 5, 4, 'Bontea Green', 202, 104, 250, 'default-product.jpg', 2, 1),
(183, '', 5, 4, 'Kiss', 0, 196, 250, 'default-product.jpg', 2, 1),
(184, '', 5, 4, 'Kopiko', 239, 170, 250, 'default-product.jpg', 2, 1),
(185, '', 5, 4, 'Mint', 1, 196, 250, 'default-product.jpg', 2, 1),
(186, '', 5, 4, 'Relaxa', 0, 100, 250, 'default-product.jpg', 2, 1),
(187, '', 5, 0, 'Yupi', 0, 138, 250, 'default-product.jpg', 2, 1),
(188, '', 4, 4, 'Roti Aoka / Roti Coy', 28, 1800, 2000, 'default-product.jpg', 2, 1),
(189, '', 4, 4, 'Bengbeng', 91, 1700, 2000, 'default-product.jpg', 2, 1),
(190, '', 4, 4, 'Better', 18, 890, 1000, 'default-product.jpg', 2, 1),
(191, '', 4, 4, 'Chiki Ball', 19, 900, 1000, 'default-product.jpg', 2, 1),
(192, '', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(193, '', 4, 4, 'Chitato Beef / Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(195, '', 4, 4, 'Chocolatos Roll 1000', 0, 795, 1000, 'default-product.jpg', 2, 1),
(196, '', 4, 4, 'Chocolatos Roll 500', 35, 450, 500, 'default-product.jpg', 2, 1),
(197, '', 4, 4, 'Chocolatos Wafer Cream', 7, 900, 1500, 'default-product.jpg', 2, 1),
(198, '', 4, 4, 'Choki Choki', 23, 870, 1000, 'default-product.jpg', 2, 1),
(199, '', 4, 4, 'Dilan 5 in 1', 21, 1567, 2000, 'default-product.jpg', 2, 1),
(200, '', 4, 4, 'Garuda Kacang Kulit Besar', 0, 1850, 2000, 'default-product.jpg', 2, 1),
(201, '', 4, 4, 'Garuda Kacang Kulit Kecil', 2, 850, 1000, 'default-product.jpg', 2, 1),
(202, '', 4, 4, 'Garuda Pilus', 95, 425, 500, 'default-product.jpg', 2, 1),
(203, '', 4, 4, 'Garuda Kacang Atom', 0, 1800, 2000, 'default-product.jpg', 2, 1),
(204, '', 4, 4, 'Gery Malkist', 3, 440, 500, 'default-product.jpg', 2, 1),
(205, '', 4, 4, 'Gery Salut', 11, 446, 500, 'default-product.jpg', 2, 1),
(206, '', 4, 4, 'Gery Odonut', 43, 438, 500, 'default-product.jpg', 2, 1),
(207, '', 4, 4, 'Gery Wafer', 3, 1583, 2000, 'default-product.jpg', 2, 1),
(208, '', 4, 4, 'Good Time', 26, 875, 1000, 'default-product.jpg', 2, 1),
(209, '', 4, 4, 'Goriorio', 54, 450, 500, 'default-product.jpg', 2, 1),
(210, '', 4, 4, 'Jetz Stick', 10, 900, 1000, 'default-product.jpg', 2, 1),
(211, '', 4, 4, 'Kacang Koro', 20, 850, 1000, 'default-product.jpg', 2, 1),
(212, '', 4, 4, 'Kacang Polong', 0, 870, 1000, 'default-product.jpg', 2, 1),
(213, '', 4, 4, 'Kalpa', 51, 1817, 2000, 'default-product.jpg', 2, 1),
(214, '', 4, 4, 'Keju Cake', 21, 1750, 2000, 'default-product.jpg', 2, 1),
(215, '', 4, 4, 'Mie Shor Kremez', 0, 450, 500, 'default-product.jpg', 2, 1),
(216, '', 4, 4, 'Fullo Pack Of Vanila Milk /Mio Fullo', 48, 446, 500, 'default-product.jpg', 2, 1),
(217, '', 4, 4, 'Monde Serena', 18, 2000, 2500, 'default-product.jpg', 2, 1),
(218, '', 4, 4, 'Mayasi Ala Kacang Jepang', 0, 850, 1000, 'default-product.jpg', 2, 1),
(219, '', 4, 4, 'Nabati Aah', 101, 425, 500, 'default-product.jpg', 2, 1),
(220, '', 4, 4, 'Nabati Richoco', 48, 500, 1000, 'default-product.jpg', 2, 1),
(221, '', 4, 4, 'Nabati Siip', 113, 450, 500, 'default-product.jpg', 2, 1),
(222, '', 4, 4, 'Nextar', 52, 1750, 2000, 'default-product.jpg', 2, 1),
(223, '', 4, 4, 'Oreo Cream', 40, 1750, 2000, 'default-product.jpg', 2, 1),
(224, '', 4, 4, 'Oreo Soft Cake', 17, 1750, 2000, 'default-product.jpg', 2, 1),
(225, '', 4, 4, 'Regal', 27, 930, 1000, 'default-product.jpg', 2, 1),
(226, '', 4, 4, 'Roma Gandum Sandwich', 6, 1792, 2000, 'default-product.jpg', 2, 1),
(227, '', 4, 4, 'Roma Malkist / Abon', 20, 900, 1000, 'default-product.jpg', 2, 1),
(228, '', 4, 4, 'Richeese Bisvit Selimut', 28, 500, 1000, 'default-product.jpg', 2, 1),
(229, '', 4, 4, 'Slai O\'Lai', 37, 1335, 2000, 'default-product.jpg', 2, 1),
(230, '', 4, 4, 'Sosis Sonice', 139, 813, 1000, 'default-product.jpg', 2, 1),
(231, '', 4, 4, 'Tango 1000', 0, 900, 1000, 'default-product.jpg', 2, 1),
(232, '', 4, 4, 'Tiktak / Tictac', 0, 870, 1000, 'default-product.jpg', 2, 1),
(233, '', 10, 4, 'Royco Ayam', 30, 400, 500, 'default-product.jpg', 2, 1),
(234, '', 4, 4, 'Timtam Maxi', 12, 875, 1000, 'default-product.jpg', 2, 1),
(236, '', 4, 4, 'Delfi Top Chocolate', 45, 813, 1000, 'default-product.jpg', 2, 1),
(237, '', 4, 4, 'Wafello', 0, 900, 1000, 'default-product.jpg', 2, 1),
(238, '', 7, 4, 'Indomie Ayam Bawang', 31, 2525, 3000, 'default-product.jpg', 2, 1),
(239, '', 7, 4, 'Indomie Goreng', 0, 2675, 3000, 'default-product.jpg', 2, 1),
(240, '', 7, 4, 'Mie Sedap Ayam Bawang', 30, 2363, 3000, 'default-product.jpg', 2, 1),
(241, '', 7, 0, 'Mie Sedap Goreng', 0, 2525, 3000, 'default-product.jpg', 2, 1),
(242, '', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 2, 1),
(243, '', 10, 4, 'Tissue Paseo 1000', 0, 800, 1000, 'default-product.jpg', 2, 1),
(244, '', 10, 4, 'Tissue Paseo 2500', 0, 2200, 2500, 'default-product.jpg', 2, 1),
(245, '', 10, 4, 'Polytex Spon Busa', 3, 2400, 3000, 'default-product.jpg', 2, 1),
(246, '', 4, 4, 'Iyes Kacang Oven Rasa Pedas', 20, 850, 1000, 'default-product.jpg', 2, 1),
(247, '', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 2, 1),
(248, '', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 2, 1),
(249, '', 8, 4, 'Tipe-Ex', 0, 2500, 3000, 'default-product.jpg', 2, 1),
(250, '', 3, 4, 'Luwak White Coffee', 0, 560, 1500, 'default-product.jpg', 2, 1),
(251, '', 10, 4, 'Softex Daun Sirih', 1, 225, 500, 'default-product.jpg', 2, 1),
(252, '', 9, 4, 'Promaag / Butir', 0, 667, 1000, 'default-product.jpg', 2, 1),
(253, '', 10, 4, 'Charm', 43, 430, 1000, 'default-product.jpg', 2, 1),
(254, '', 10, 4, 'Cuka 1500', 6, 1000, 1500, 'default-product.jpg', 2, 1),
(255, '', 10, 4, 'Garam Jempol', 1, 1500, 2000, 'default-product.jpg', 2, 1),
(256, '', 10, 4, 'Hers Protex', 39, 440, 500, 'default-product.jpg', 2, 1),
(257, '', 10, 4, 'Laurier', 0, 430, 1000, 'default-product.jpg', 2, 1),
(258, '', 10, 4, 'Mama Lemon 55ml', 2, 812, 1000, 'default-product.jpg', 2, 1),
(259, '', 10, 4, 'Mama Lemon 450ml', 5, 8200, 10000, 'default-product.jpg', 2, 1),
(260, '', 10, 4, 'Mama Lemon 115 ml', 8, 1500, 2000, 'default-product.jpg', 2, 1),
(261, '', 10, 4, 'Minyak Sayur Sedaap 1L', 0, 16700, 18000, 'default-product.jpg', 2, 1),
(262, '', 10, 4, 'Saos Gembol', 6, 2500, 3000, 'default-product.jpg', 2, 1),
(263, '', 10, 4, 'Terigu Segitiga Curah 1kg', 1, 10800, 12000, 'default-product.jpg', 2, 1),
(264, '', 10, 4, 'Tissue Tessa', 0, 1771, 2000, 'default-product.jpg', 2, 1),
(265, '', 4, 4, 'Biskuat Bolu', 0, 1690, 2000, 'default-product.jpg', 2, 1),
(267, '', 12, 4, 'Kapal Api Special Mix', 5, 1180, 2000, 'default-product.jpg', 2, 1),
(268, '', 12, 4, 'Good Day Mochacino', 9, 1130, 2000, 'default-product.jpg', 2, 1),
(269, '', 4, 4, 'Tango Walut', 0, 1140, 2000, 'default-product.jpg', 2, 1),
(270, '', 4, 4, 'Yoritos', 17, 1140, 2000, 'default-product.jpg', 2, 1),
(271, '', 4, 4, 'Taro Net Potato', 10, 1771, 2000, 'default-product.jpg', 2, 1),
(272, '', 8, 4, 'Ballpoint Standard AE7', 0, 1458, 2000, 'default-product.jpg', 2, 1),
(273, '', 8, 4, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 2, 1),
(274, '', 8, 4, 'Buku Saku Tipis', 0, 900, 1500, 'default-product.jpg', 2, 1),
(275, '', 8, 4, 'Glue Stick', 0, 2000, 2500, 'default-product.jpg', 2, 1),
(276, '', 8, 4, 'Penggaris 30cm', 0, 2000, 2500, 'default-product.jpg', 2, 1),
(277, '', 9, 4, 'Mixagrip / Butir', 0, 220, 500, 'default-product.jpg', 2, 1),
(278, '', 9, 4, 'Hansaplast', 0, 225, 500, 'default-product.jpg', 2, 1),
(279, '', 10, 4, 'Kecap Bango', 0, 24300, 25000, 'default-product.jpg', 2, 1),
(280, '', 10, 4, 'Minyak Sayur Promo 1L', 0, 23750, 24000, 'default-product.jpg', 2, 1),
(281, '', 4, 4, 'Roma Sari Gandum', 42, 1791, 2000, 'default-product.jpg', 2, 1),
(282, '', 4, 4, 'Gery Salut Chocolate Coconut', 9, 1583, 2000, 'default-product.jpg', 2, 1),
(283, '', 4, 4, 'Dua Kelinci Kacang Garing', 0, 850, 1000, 'default-product.jpg', 2, 1),
(284, '', 4, 4, 'Tango Wafer 1000 Vanilla Delight ', 8, 840, 1000, 'default-product.jpg', 2, 1),
(285, '', 7, 4, 'Mie Sedap Goreng', 1, 2525, 3000, 'default-product.jpg', 2, 1),
(286, '', 10, 4, 'Tisu Paseo 1000', 24, 800, 1000, 'default-product.jpg', 2, 1),
(287, '', 10, 4, 'Tisu Paseo 3000', 5, 2200, 3000, 'default-product.jpg', 2, 1),
(289, '', 12, 4, 'Luwak White Coffee ', 8, 560, 1500, 'default-product.jpg', 2, 1),
(290, '', 4, 4, 'Taro Seaweed 1000', 11, 900, 1000, 'default-product.jpg', 2, 1),
(291, '', 6, 1, 'AICE Mochi Chocolate 45 ml', 86, 2313, 3000, 'default-product.jpg', 1, 1),
(292, '', 6, 1, 'AICE Melon Cone 100 ml', 0, 4041, 5000, 'default-product.jpg', 1, 1),
(293, '', 6, 1, 'AICE Choco Vanila Cup', 0, 3208, 4000, 'default-product.jpg', 1, 1),
(294, '', 6, 1, 'AICE Mochi Vanila 45 ml', 61, 2313, 3000, 'default-product.jpg', 1, 1),
(295, '', 2, 3, 'S-Tee Kotak 200 ml', 60, 1500, 2500, 'default-product.jpg', 1, 1),
(296, '', 2, 3, 'S-Tea Pet 390 ml', 26, 2083, 3000, 'default-product.jpg', 1, 1),
(297, '', 2, 3, 'Sosro Kotak', 165, 2146, 3000, 'default-product.jpg', 1, 1),
(298, '', 2, 3, 'Sosro Kotak 330 ml', 52, 2625, 3500, 'default-product.jpg', 1, 1),
(299, '', 2, 3, 'Fruitea Pet Apple 350 ml', 115, 3333, 4000, 'default-product.jpg', 1, 1),
(300, '', 2, 3, 'Fruitea  Strawberry 200 ml', 88, 2146, 3000, 'default-product.jpg', 1, 1),
(301, '', 2, 3, 'Country Choice 250ml', 40, 4167, 5000, 'default-product.jpg', 1, 1),
(302, '', 2, 3, 'Tebs Lemon 300 ml', 30, 3333, 4000, 'default-product.jpg', 1, 1),
(303, '', 2, 3, 'Tebs MF 300 ml', 24, 3333, 4000, 'default-product.jpg', 1, 1),
(304, '', 1, 3, 'Prima 600 ml', 48, 1354, 2500, 'default-product.jpg', 1, 1),
(305, '', 1, 3, 'Prima 330 ml', 0, 1188, 2000, 'default-product.jpg', 1, 1),
(306, '', 1, 3, 'Prima Gelas', 0, 469, 500, 'default-product.jpg', 1, 1),
(307, '', 2, 3, 'Tebs Kaleng 300 ml', 0, 3583, 4000, 'default-product.jpg', 1, 1),
(308, '', 2, 3, 'Teh Botol Kaleng', 35, 3375, 4000, 'default-product.jpg', 1, 1),
(309, '', 2, 3, 'Fruitea Kaleng 300 ml', 0, 3375, 4000, 'default-product.jpg', 1, 1),
(310, '', 2, 3, 'Teh Botol Pet 350 ml', 63, 3333, 4000, 'default-product.jpg', 1, 1),
(311, '', 2, 3, 'Fruitea 500 ml', 3, 4750, 6000, 'default-product.jpg', 1, 1),
(313, '', 5, 4, 'Blaster Choco Chocolate', 100, 130, 250, 'default-product.jpg', 2, 1),
(314, '', 5, 4, 'Blaster Neopolitan Strawberry  Vanilla Mint With Chocolate ', 100, 130, 250, 'default-product.jpg', 2, 1),
(315, '', 4, 4, 'Nissin Lemonia Lemon Biskuit ', 4, 6200, 7000, 'default-product.jpg', 2, 1),
(316, '', 1, 4, 'Larutan Cap Kaki 3', 20, 3300, 4000, 'default-product.jpg', 2, 1),
(317, '', 4, 4, 'Suki -Suki', 40, 900, 1000, 'default-product.jpg', 2, 1),
(318, '', 6, 1, 'AICE Berry Choco Max Cone 100 ml', 72, 4063, 5000, 'default-product.jpg', 1, 1),
(319, '', 4, 4, 'Roma Slai Olai 2000 (32 gr)', 20, 1600, 2000, 'default-product.jpg', 1, 1),
(320, '', 5, 4, 'Blaster Choco Chocolate Filled Mint ', 0, 130, 250, 'default-product.jpg', 1, 1),
(321, '', 5, 4, 'Blaster Neopolitan Strawberry Vanila Mint With Chocolate', 0, 130, 250, 'default-product.jpg', 1, 1),
(322, '', 4, 4, 'Chocolatos Wafer Roll isi 24 pcs', 0, 450, 500, 'default-product.jpg', 1, 1),
(323, '', 4, 4, 'Keju Cake Bolu Keju ', 195, 1750, 2000, 'default-product.jpg', 1, 1),
(324, '', 4, 4, 'Kacang Iyes', 0, 850, 1000, 'default-product.jpg', 1, 1),
(325, '', 12, 4, 'Max Tea Tarik', 14, 1690, 2000, 'default-product.jpg', 1, 1),
(326, '', 12, 4, 'Kapal Api Special Mix', 17, 1180, 2000, 'default-product.jpg', 1, 1),
(327, '', 12, 4, 'Good Day Mochacino', 14, 1130, 2000, 'default-product.jpg', 1, 1),
(328, '', 4, 4, 'Nissin Lemonia Lemon Biscuit', 0, 6200, 7000, 'default-product.jpg', 1, 1),
(329, '', 4, 4, 'Richese Bisvit Selimut ', 0, 900, 1000, 'default-product.jpg', 1, 1),
(330, '', 2, 3, 'Fruity Kotak 250ml', 12, 2920, 3500, 'default-product.jpg', 1, 1),
(331, '', 2, 3, 'Teh Botol Sosro 450ml', 19, 5120, 6000, 'default-product.jpg', 1, 1),
(332, '', 10, 4, 'Larutan Cap Kaki 3 Botol  200 ml', 0, 3300, 4000, 'default-product.jpg', 1, 1),
(333, '', 2, 3, 'Fruit Tea 230ml', 18, 1771, 2500, 'default-product.jpg', 1, 1),
(335, '', 6, 1, 'AICE Sundae Chocolate Cup 100 ml', 20, 4042, 5000, 'default-product.jpg', 2, 1),
(336, '', 10, 4, 'Minyak Minyakita', 5, 14000, 15000, 'default-product.jpg', 2, 1),
(337, '', 6, 1, 'AICE Vanilla Chocolate Cup 90 ml', 48, 3208, 4000, 'default-product.jpg', 2, 1),
(338, '', 6, 1, 'AICE Mochi Chocolate 100ml', 0, 2313, 3000, 'default-product.jpg', 1, 1),
(339, '', 2, 2, 'Frestea 350ml', 131, 3500, 4500, 'default-product.jpg', 1, 1),
(340, '', 2, 3, 'Fruitea Kotak Apel 250ml', 19, 3333, 4000, 'default-product.jpg', 1, 1),
(341, '', 2, 3, 'Fruitea Apel 230 ml', 46, 1771, 2500, 'default-product.jpg', 1, 1),
(342, '', 2, 4, 'Teh Pucuk Harum', 6, 2271, 3000, 'default-product.jpg', 2, 1),
(343, '', 2, 3, 'Fruit tea Pet Blackcurrant 350 ml', 12, 3333, 4000, 'default-product.jpg', 1, 1),
(344, '', 2, 3, 'Fruit tea Pet Lemon 350 ml', 12, 3333, 4000, 'default-product.jpg', 1, 1),
(345, '', 2, 3, 'Fruit tea Pet Freeze 350 ml', 12, 3333, 4000, 'default-product.jpg', 1, 1),
(346, '', 2, 3, 'Fruit tea Blackcurrant 200 ml ', 24, 2146, 3000, 'default-product.jpg', 1, 1),
(347, '', 2, 3, 'Fruit tea Lemon 250 ml', 24, 2355, 3000, 'default-product.jpg', 1, 1),
(348, '', 2, 3, 'Fruit tea Apple 250 ml', 24, 2355, 3000, 'default-product.jpg', 1, 1),
(349, '', 2, 3, 'Fruit tea Blackcurrant 250 ml ', 24, 2355, 3000, 'default-product.jpg', 1, 1),
(350, '', 2, 3, 'Fruit tea Blackcurrant 318 ml', 24, 3375, 4000, 'default-product.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_categories`
--

CREATE TABLE `tbl_product_categories` (
  `id_category` int(11) NOT NULL,
  `category` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_categories`
--

INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES
(1, 'Air Mineral'),
(2, 'Minuman Berperisa'),
(3, 'Minuman Serbuk'),
(4, 'Snack'),
(5, 'Permen'),
(6, 'Ice Cream'),
(7, 'Mie'),
(8, 'ATK'),
(9, 'Obat-obatan'),
(10, 'Lainnya'),
(12, 'Kopi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_place`
--

CREATE TABLE `tbl_product_place` (
  `id_place` int(11) NOT NULL,
  `place` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_place`
--

INSERT INTO `tbl_product_place` (`id_place`, `place`) VALUES
(1, 'Es Krim (AICE)'),
(2, 'Showcase Coca-Cola'),
(3, 'Showcase Sosro'),
(4, 'Etalase');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id_purchase` int(11) NOT NULL,
  `date_purchasing` date NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES
(10, '2022-08-29', 3, 4, 2),
(11, '2022-08-29', 1, 4, 2),
(12, '2022-08-29', 1, 5, 1),
(13, '2022-08-30', 1, 5, 1),
(14, '2022-08-31', 3, 4, 2),
(15, '2022-09-01', 1, 4, 2),
(16, '2022-08-31', 3, 5, 1),
(17, '2022-09-01', 5, 4, 2),
(18, '2022-09-01', 3, 4, 2),
(19, '2022-09-05', 3, 5, 1),
(20, '2022-09-05', 5, 4, 2),
(21, '2022-09-05', 1, 4, 2),
(22, '2022-09-05', 4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_detail`
--

CREATE TABLE `tbl_purchase_detail` (
  `id_purchase_detail` int(11) NOT NULL,
  `id_purchase` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `basic_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase_detail`
--

INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES
(24, 10, 141, 100, 1900, 190000),
(25, 10, 157, 40, 2412, 96480),
(26, 10, 139, 80, 1912, 152960),
(27, 10, 154, 120, 2362, 283440),
(28, 10, 149, 60, 3017, 181020),
(29, 10, 146, 60, 1558, 93480),
(30, 10, 151, 50, 1540, 77000),
(31, 10, 150, 50, 1540, 77000),
(32, 10, 152, 40, 2750, 110000),
(33, 11, 188, 15, 1800, 27000),
(34, 11, 230, 96, 813, 78048),
(35, 11, 313, 50, 130, 6500),
(36, 11, 314, 50, 130, 6500),
(37, 11, 182, 100, 104, 10400),
(38, 11, 196, 48, 450, 21600),
(39, 11, 198, 40, 870, 34800),
(40, 11, 189, 51, 1700, 86700),
(41, 11, 236, 48, 813, 39024),
(42, 11, 209, 60, 450, 27000),
(43, 11, 213, 24, 1817, 43608),
(44, 11, 214, 24, 1750, 42000),
(45, 11, 246, 20, 850, 17000),
(46, 11, 215, 24, 450, 10800),
(47, 11, 217, 10, 2000, 20000),
(48, 11, 222, 20, 1750, 35000),
(49, 11, 315, 2, 6200, 12400),
(50, 11, 223, 24, 1750, 42000),
(51, 11, 224, 24, 1750, 42000),
(52, 11, 229, 24, 1335, 32040),
(53, 12, 43, 96, 813, 78048),
(54, 12, 47, 40, 196, 7840),
(55, 12, 134, 96, 281, 26976),
(56, 12, 4, 240, 1520, 364800),
(57, 12, 105, 100, 106, 10600),
(58, 12, 88, 48, 804, 38592),
(59, 12, 16, 51, 1700, 86700),
(60, 12, 121, 15, 1800, 27000),
(62, 11, 202, 40, 425, 17000),
(63, 11, 228, 40, 425, 17000),
(65, 11, 316, 10, 3300, 33000),
(66, 11, 317, 20, 900, 18000),
(67, 11, 172, 96, 281, 26976),
(68, 11, 136, 240, 958, 229920),
(69, 13, 79, 120, 3958, 474960),
(70, 13, 81, 60, 2375, 142500),
(71, 13, 80, 60, 3958, 237480),
(72, 13, 82, 60, 2375, 142500),
(73, 13, 83, 60, 2375, 142500),
(74, 13, 85, 60, 3958, 237480),
(75, 12, 87, 40, 900, 36000),
(76, 12, 120, 24, 1750, 42000),
(77, 12, 38, 24, 1750, 42000),
(78, 12, 37, 20, 1750, 35000),
(79, 12, 123, 20, 840, 16800),
(80, 12, 29, 60, 450, 27000),
(81, 12, 31, 24, 1667, 40008),
(82, 12, 126, 10, 2000, 20000),
(83, 12, 33, 24, 450, 10800),
(84, 12, 18, 20, 900, 18000),
(85, 12, 319, 20, 1600, 32000),
(86, 14, 152, 80, 2750, 220000),
(87, 14, 154, 80, 2362, 188960),
(89, 14, 147, 40, 1912, 76480),
(90, 14, 150, 50, 1540, 77000),
(92, 14, 335, 24, 4042, 97008),
(93, 16, 92, 50, 1540, 77000),
(94, 16, 101, 80, 2750, 220000),
(95, 16, 91, 50, 1540, 77000),
(96, 16, 93, 120, 3500, 420000),
(97, 16, 97, 80, 1912, 152960),
(98, 16, 90, 60, 1558, 93480),
(100, 16, 291, 40, 2313, 92520),
(101, 16, 294, 40, 2313, 92520),
(102, 16, 318, 72, 4063, 292536),
(103, 16, 102, 24, 4041, 96984),
(104, 15, 336, 5, 14000, 70000),
(105, 15, 188, 10, 1800, 18000),
(106, 15, 191, 20, 900, 18000),
(107, 15, 196, 24, 450, 10800),
(108, 15, 208, 24, 875, 21000),
(109, 15, 213, 12, 1817, 21804),
(110, 15, 210, 10, 900, 9000),
(111, 15, 215, 24, 450, 10800),
(112, 15, 222, 20, 1750, 35000),
(113, 15, 223, 24, 1750, 42000),
(114, 15, 281, 12, 1791, 21492),
(115, 15, 229, 24, 1335, 32040),
(116, 15, 230, 24, 813, 19512),
(117, 15, 234, 12, 875, 10500),
(118, 15, 136, 48, 958, 45984),
(119, 15, 216, 48, 446, 21408),
(120, 17, 166, 240, 3500, 840000),
(121, 18, 144, 160, 2425, 388000),
(122, 18, 148, 40, 2313, 92520),
(123, 18, 160, 24, 4062, 97488),
(124, 18, 159, 24, 4062, 97488),
(125, 18, 140, 48, 4062, 194976),
(126, 18, 154, 80, 2362, 188960),
(127, 18, 146, 60, 1558, 93480),
(128, 18, 137, 40, 2313, 92520),
(129, 18, 337, 48, 3208, 153984),
(130, 20, 168, 36, 3833, 137988),
(131, 19, 92, 50, 1550, 77500),
(132, 20, 167, 24, 5333, 127992),
(133, 19, 101, 80, 2750, 220000),
(134, 19, 91, 50, 1550, 77500),
(135, 19, 93, 120, 2362, 283440),
(136, 20, 170, 36, 3958, 142488),
(137, 19, 97, 80, 1913, 153040),
(138, 19, 90, 60, 1558, 93480),
(139, 19, 94, 40, 2313, 92520),
(140, 19, 291, 40, 2313, 92520),
(141, 20, 165, 36, 2375, 85500),
(142, 20, 163, 36, 2375, 85500),
(143, 19, 102, 24, 4042, 97008),
(144, 19, 99, 40, 2425, 97000),
(145, 21, 188, 25, 1800, 45000),
(146, 21, 230, 48, 813, 39024),
(147, 21, 182, 150, 104, 15600),
(148, 21, 184, 150, 170, 25500),
(149, 21, 189, 17, 1700, 28900),
(150, 21, 189, 34, 1700, 57800),
(151, 21, 211, 20, 850, 17000),
(152, 21, 213, 24, 1817, 43608),
(153, 21, 217, 5, 2000, 10000),
(154, 21, 219, 60, 425, 25500),
(155, 21, 221, 40, 450, 18000),
(156, 21, 221, 40, 425, 17000),
(157, 21, 222, 20, 1750, 35000),
(158, 21, 227, 20, 900, 18000),
(159, 21, 281, 24, 1791, 42984),
(160, 21, 230, 48, 813, 39024),
(161, 21, 177, 24, 813, 19512),
(162, 22, 295, 48, 1500, 72000),
(163, 22, 296, 24, 2083, 49992),
(164, 22, 297, 48, 2146, 103008),
(165, 22, 298, 48, 2625, 126000),
(166, 22, 299, 12, 3333, 39996),
(167, 22, 343, 12, 3333, 39996),
(168, 22, 344, 12, 3333, 39996),
(169, 22, 345, 12, 3333, 39996),
(170, 22, 346, 24, 2146, 51504),
(171, 22, 300, 24, 2146, 51504),
(172, 22, 301, 24, 4167, 100008),
(173, 22, 302, 24, 3333, 79992),
(174, 22, 303, 24, 3333, 79992),
(175, 22, 304, 48, 1354, 64992),
(176, 22, 308, 24, 3375, 81000),
(177, 22, 310, 48, 3333, 159984),
(178, 22, 348, 24, 2355, 56520),
(179, 22, 347, 24, 2355, 56520),
(180, 22, 349, 24, 2355, 56520),
(181, 22, 341, 24, 1771, 42504),
(182, 22, 331, 12, 5120, 61440),
(183, 22, 350, 24, 3375, 81000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `id_schedule` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `picket_schedule` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES
(1, 4, 2, '2022-09-05'),
(2, 12, 18, '2022-09-06'),
(4, 10, 23, '2022-09-07'),
(5, 5, 5, '2022-09-08'),
(6, 6, 22, '2022-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule_class`
--

CREATE TABLE `tbl_schedule_class` (
  `id_schedule_class` int(11) NOT NULL,
  `class` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule_class`
--

INSERT INTO `tbl_schedule_class` (`id_schedule_class`, `class`) VALUES
(1, 'XI Grafika'),
(2, 'XI APL'),
(3, 'XI TKJ 1'),
(4, 'XI TKJ 2'),
(5, 'XI TKJ 3'),
(6, 'XI ATPH 1'),
(7, 'XI ATPH 2'),
(8, 'XI ATPH 3'),
(9, 'XI APHP 1'),
(10, 'XI APHP 2'),
(11, 'XI APHP 3'),
(12, 'XI ATU'),
(13, 'XII GRAFIKA'),
(14, 'XII APL'),
(15, 'XII TKJ 1'),
(16, 'XII TKJ 2'),
(17, 'XII TKJ 3'),
(18, 'XII ATPH 1'),
(19, 'XII ATPH 2'),
(20, 'XII APHP 1'),
(21, 'XII APHP 2'),
(22, 'XII APHP 3'),
(23, 'XII ATU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_selling`
--

CREATE TABLE `tbl_selling` (
  `id_selling` int(11) NOT NULL,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_selling`
--

INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES
(14, '2022-08-29', 7, 1),
(15, '2022-08-29', 7, 2),
(16, '2022-08-30', 13, 1),
(17, '2022-08-30', 13, 2),
(18, '2022-08-31', 11, 1),
(19, '2022-08-31', 11, 2),
(20, '2022-09-01', 6, 1),
(21, '2022-09-01', 6, 2),
(22, '2022-09-02', 9, 1),
(23, '2022-09-02', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_selling_detail`
--

CREATE TABLE `tbl_selling_detail` (
  `id_selling_detail` int(11) NOT NULL,
  `id_selling` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_selling` int(11) NOT NULL,
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_selling_detail`
--

INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES
(34, 17, 169, 1, 2375, 3000),
(35, 17, 163, 7, 16625, 21000),
(36, 17, 138, 2, 7916, 10000),
(37, 17, 167, 7, 37331, 49000),
(38, 17, 168, 10, 38330, 45000),
(39, 17, 169, 5, 11875, 15000),
(40, 17, 172, 12, 3372, 6000),
(41, 17, 136, 57, 54606, 114000),
(42, 17, 176, 2, 1584, 2000),
(43, 17, 177, 4, 3252, 4000),
(44, 17, 182, 48, 4992, 12000),
(45, 17, 184, 29, 3480, 7250),
(46, 17, 185, 8, 1568, 2000),
(47, 17, 188, 12, 21600, 24000),
(48, 17, 199, 1, 1567, 2000),
(49, 17, 202, 5, 2125, 2500),
(50, 17, 208, 8, 7000, 8000),
(51, 17, 209, 4, 1800, 2000),
(52, 17, 213, 4, 7268, 8000),
(53, 17, 214, 3, 5250, 6000),
(54, 17, 217, 2, 4000, 5000),
(55, 17, 219, 2, 850, 1000),
(56, 17, 221, 26, 11050, 13000),
(57, 17, 222, 12, 21000, 24000),
(58, 17, 223, 8, 14000, 16000),
(59, 17, 224, 5, 8750, 10000),
(60, 17, 207, 2, 3166, 4000),
(61, 17, 228, 4, 1700, 2000),
(62, 17, 230, 43, 34959, 43000),
(63, 17, 232, 2, 1740, 2000),
(64, 17, 236, 3, 2439, 3000),
(65, 17, 201, 3, 2550, 3000),
(66, 17, 267, 2, 2360, 4000),
(67, 17, 268, 1, 1130, 2000),
(68, 17, 255, 1, 1500, 2000),
(69, 17, 256, 1, 440, 500),
(70, 16, 134, 52, 14612, 26000),
(71, 17, 263, 1, 10800, 12000),
(72, 16, 4, 91, 138320, 182000),
(73, 17, 206, 3, 1314, 1500),
(74, 17, 204, 3, 1320, 1500),
(75, 17, 178, 1, 2050, 3000),
(76, 16, 7, 4, 3168, 4000),
(77, 16, 9, 4, 3180, 6000),
(78, 16, 10, 2, 1584, 2000),
(79, 16, 11, 2, 1626, 2000),
(80, 16, 128, 2, 4100, 6000),
(81, 16, 105, 61, 6466, 15250),
(82, 16, 110, 1, 138, 250),
(83, 16, 121, 14, 25200, 28000),
(84, 17, 141, 26, 49400, 65000),
(85, 16, 16, 17, 28900, 34000),
(86, 16, 18, 14, 12600, 14000),
(87, 17, 142, 10, 40000, 50000),
(88, 17, 146, 26, 40508, 52000),
(89, 17, 147, 1, 1912, 2500),
(90, 17, 150, 19, 29260, 38000),
(91, 17, 151, 19, 29260, 38000),
(92, 17, 152, 25, 68750, 87500),
(93, 17, 154, 88, 207856, 264000),
(94, 16, 322, 34, 15300, 17000),
(95, 16, 87, 3, 2700, 4500),
(96, 17, 149, 2, 6034, 8000),
(97, 17, 157, 15, 36180, 45000),
(98, 17, 160, 6, 24372, 30000),
(99, 16, 87, 3, 2700, 4500),
(100, 16, 24, 24, 10200, 12000),
(101, 16, 113, 10, 4460, 5000),
(102, 16, 29, 48, 21600, 24000),
(103, 16, 31, 4, 6668, 8000),
(104, 16, 323, 5, 8750, 10000),
(105, 16, 33, 5, 2250, 2500),
(106, 16, 126, 3, 6000, 7500),
(107, 16, 37, 16, 28000, 32000),
(108, 16, 120, 20, 35000, 40000),
(109, 16, 38, 5, 8750, 10000),
(110, 16, 122, 7, 0, 3500),
(111, 16, 42, 1, 850, 1000),
(112, 16, 43, 13, 10569, 13000),
(113, 16, 88, 24, 19296, 24000),
(114, 16, 52, 2, 5050, 6000),
(115, 16, 57, 4, 5832, 8000),
(116, 16, 70, 7, 3010, 3500),
(117, 16, 69, 1, 440, 500),
(118, 16, 73, 1, 875, 1000),
(119, 16, 325, 1, 1690, 2000),
(120, 16, 326, 1, 1180, 2000),
(121, 16, 327, 1, 1130, 2000),
(122, 16, 80, 4, 15832, 20000),
(123, 16, 79, 13, 51454, 58500),
(124, 16, 78, 14, 53662, 63000),
(125, 16, 86, 5, 26665, 35000),
(126, 16, 299, 12, 39996, 48000),
(127, 16, 84, 10, 35000, 45000),
(128, 16, 85, 5, 19790, 25000),
(129, 16, 330, 6, 17520, 21000),
(130, 16, 295, 10, 15000, 25000),
(131, 16, 301, 5, 20835, 25000),
(132, 16, 331, 5, 25600, 30000),
(133, 16, 303, 12, 39996, 48000),
(134, 16, 308, 3, 10125, 12000),
(135, 16, 296, 2, 4166, 6000),
(136, 16, 310, 2, 6666, 8000),
(137, 16, 333, 11, 32120, 38500),
(138, 16, 300, 3, 6438, 9000),
(139, 16, 311, 2, 9500, 12000),
(140, 16, 310, 1, 3333, 4000),
(142, 14, 99, 25, 60625, 75000),
(143, 14, 97, 47, 89864, 117500),
(144, 14, 94, 19, 43928, 57000),
(145, 14, 91, 14, 21560, 28000),
(146, 14, 92, 38, 58520, 76000),
(147, 14, 101, 53, 145750, 185500),
(148, 14, 102, 6, 24246, 30000),
(149, 14, 93, 1, 2362, 3000),
(150, 14, 338, 18, 41634, 54000),
(151, 14, 85, 11, 43538, 55000),
(152, 14, 80, 10, 39580, 50000),
(153, 14, 86, 3, 15999, 21000),
(154, 14, 78, 12, 45996, 54000),
(155, 14, 79, 18, 71244, 81000),
(156, 14, 339, 10, 35000, 45000),
(157, 14, 295, 5, 7500, 12500),
(158, 14, 298, 12, 31500, 42000),
(159, 14, 300, 5, 10730, 15000),
(160, 14, 301, 3, 12501, 15000),
(161, 14, 302, 6, 19998, 24000),
(162, 14, 308, 2, 6750, 8000),
(163, 14, 310, 5, 16665, 20000),
(164, 14, 311, 6, 28500, 36000),
(165, 14, 340, 5, 16665, 20000),
(166, 14, 341, 2, 6666, 8000),
(167, 14, 300, 5, 10730, 15000),
(168, 14, 341, 2, 6666, 8000),
(169, 14, 331, 5, 25600, 30000),
(170, 14, 134, 24, 6744, 12000),
(171, 14, 4, 64, 97280, 128000),
(172, 14, 7, 1, 792, 1000),
(173, 14, 9, 4, 3180, 6000),
(174, 14, 10, 2, 1584, 2000),
(175, 14, 11, 1, 813, 1000),
(176, 14, 16, 17, 28900, 34000),
(177, 14, 22, 14, 11130, 14000),
(178, 14, 117, 8, 6960, 8000),
(179, 14, 33, 7, 3150, 3500),
(180, 14, 37, 3, 5250, 6000),
(181, 14, 38, 1, 1750, 2000),
(182, 14, 57, 4, 5832, 8000),
(183, 14, 66, 2, 450, 1000),
(184, 14, 67, 1, 667, 1000),
(185, 14, 70, 4, 1720, 2000),
(186, 15, 139, 7, 13384, 17500),
(187, 15, 141, 21, 39900, 52500),
(188, 15, 146, 33, 51414, 66000),
(189, 15, 150, 18, 27720, 36000),
(190, 15, 151, 9, 13860, 18000),
(191, 15, 152, 15, 41250, 52500),
(192, 15, 154, 51, 120462, 153000),
(193, 15, 160, 19, 77178, 95000),
(194, 15, 149, 3, 9051, 12000),
(195, 15, 145, 8, 15520, 20000),
(196, 15, 157, 23, 55476, 69000),
(197, 15, 164, 2, 7916, 10000),
(198, 15, 163, 6, 14250, 18000),
(199, 15, 138, 1, 3958, 5000),
(200, 15, 166, 4, 14000, 18000),
(201, 15, 167, 4, 21332, 28000),
(202, 15, 168, 6, 22998, 27000),
(203, 15, 169, 5, 11875, 15000),
(204, 15, 172, 18, 5058, 9000),
(205, 15, 136, 87, 83346, 174000),
(206, 15, 177, 3, 2439, 3000),
(207, 15, 342, 9, 20439, 27000),
(208, 15, 190, 4, 3560, 4000),
(209, 15, 199, 1, 1567, 2000),
(210, 15, 202, 10, 4250, 5000),
(211, 15, 208, 29, 25375, 29000),
(212, 15, 209, 8, 3600, 4000),
(213, 15, 213, 3, 5451, 6000),
(214, 15, 214, 4, 7000, 8000),
(215, 15, 219, 19, 8075, 9500),
(216, 15, 221, 1, 425, 500),
(217, 15, 222, 2, 3500, 4000),
(218, 15, 226, 12, 21504, 24000),
(219, 15, 269, 8, 9120, 16000),
(220, 15, 232, 2, 1740, 2000),
(221, 15, 234, 1, 875, 1000),
(222, 15, 236, 2, 1626, 2000),
(223, 20, 90, 8, 12464, 16000),
(224, 20, 97, 29, 55448, 72500),
(225, 20, 91, 26, 40040, 52000),
(226, 20, 92, 20, 30800, 40000),
(227, 20, 101, 28, 77000, 98000),
(228, 20, 102, 9, 36369, 45000),
(229, 20, 93, 42, 99204, 126000),
(230, 20, 291, 14, 32382, 42000),
(231, 20, 85, 1, 3958, 5000),
(232, 20, 83, 12, 28500, 36000),
(233, 20, 82, 6, 14250, 18000),
(234, 20, 80, 5, 19790, 25000),
(235, 20, 339, 22, 77000, 99000),
(236, 20, 86, 12, 63996, 84000),
(237, 20, 78, 7, 26831, 31500),
(238, 20, 81, 8, 19000, 24000),
(239, 20, 79, 8, 31664, 36000),
(240, 20, 295, 3, 4500, 7500),
(241, 20, 299, 5, 16665, 20000),
(242, 20, 300, 13, 27898, 39000),
(243, 20, 308, 2, 6750, 8000),
(244, 20, 310, 5, 16665, 20000),
(245, 20, 4, 37, 56240, 74000),
(246, 20, 7, 7, 5544, 7000),
(247, 20, 9, 1, 795, 1500),
(248, 20, 10, 3, 2376, 3000),
(249, 20, 11, 1, 813, 1000),
(250, 20, 105, 5, 530, 1250),
(251, 20, 18, 2, 1800, 2000),
(252, 20, 87, 14, 12600, 21000),
(253, 20, 27, 1, 1583, 2000),
(254, 20, 31, 13, 21671, 26000),
(255, 20, 33, 11, 4950, 5500),
(256, 20, 126, 1, 2000, 2500),
(257, 20, 38, 8, 14000, 16000),
(258, 20, 122, 17, 0, 8500),
(259, 20, 43, 37, 30081, 37000),
(260, 20, 57, 9, 13122, 18000),
(261, 20, 69, 2, 880, 1000),
(262, 20, 68, 4, 1720, 2000),
(263, 20, 73, 2, 1750, 2000),
(264, 20, 326, 1, 1180, 2000),
(265, 20, 327, 1, 1130, 2000),
(266, 21, 172, 10, 2810, 5000),
(267, 21, 136, 85, 81430, 170000),
(268, 21, 176, 24, 19008, 24000),
(269, 21, 177, 4, 3252, 4000),
(270, 21, 184, 12, 1440, 3000),
(271, 21, 188, 10, 18000, 20000),
(272, 21, 189, 11, 18700, 22000),
(273, 21, 190, 6, 5340, 6000),
(274, 21, 191, 1, 900, 1000),
(275, 21, 196, 37, 16650, 18500),
(276, 21, 198, 17, 14790, 17000),
(277, 21, 199, 1, 1567, 2000),
(278, 21, 202, 2, 850, 1000),
(279, 21, 207, 1, 1583, 2000),
(280, 21, 208, 2, 1750, 2000),
(281, 21, 209, 2, 900, 1000),
(282, 21, 213, 6, 10902, 12000),
(283, 21, 214, 6, 10500, 12000),
(284, 21, 215, 48, 21600, 24000),
(285, 21, 219, 3, 1275, 1500),
(286, 21, 221, 3, 1275, 1500),
(287, 21, 222, 2, 3500, 4000),
(288, 21, 224, 2, 3500, 4000),
(289, 21, 281, 12, 21492, 24000),
(290, 21, 228, 8, 4000, 8000),
(291, 21, 229, 11, 14685, 22000),
(292, 21, 230, 34, 27642, 34000),
(293, 21, 258, 1, 812, 1000),
(294, 21, 139, 24, 45888, 60000),
(295, 21, 141, 16, 30400, 40000),
(296, 21, 145, 16, 31040, 40000),
(297, 21, 147, 15, 28680, 37500),
(298, 21, 149, 20, 60340, 80000),
(299, 21, 150, 35, 53900, 70000),
(300, 21, 151, 3, 4620, 6000),
(301, 21, 152, 39, 107250, 136500),
(302, 21, 335, 4, 16168, 20000),
(303, 21, 154, 20, 47240, 60000),
(304, 21, 164, 8, 31664, 40000),
(305, 21, 165, 5, 11875, 15000),
(306, 21, 163, 4, 9500, 12000),
(307, 21, 138, 4, 15832, 20000),
(308, 21, 166, 9, 31500, 40500),
(309, 21, 167, 9, 47997, 63000),
(310, 21, 169, 11, 26125, 33000),
(311, 20, 297, 3, 6438, 9000),
(312, 20, 3, 96, 26976, 48000),
(313, 20, 129, 3, 2463, 3000),
(314, 20, 323, 5, 8750, 10000),
(315, 20, 42, 9, 12006, 18000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL,
  `supplier` varchar(128) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `supplier`, `address`, `phone`) VALUES
(1, 'Toko Deri', 'Cianjur Kota', '085156334607'),
(3, 'AICE Cianjur', 'Cianjur', '08000000000'),
(4, 'Sosro', 'Cianjur', '085156334607'),
(5, 'Coca Cola', 'Cianjur ', '081221122916');

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tool_condition`
--

CREATE TABLE `tbl_tool_condition` (
  `id_tool_condition` int(11) NOT NULL,
  `condition` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tool_condition`
--

INSERT INTO `tbl_tool_condition` (`id_tool_condition`, `condition`) VALUES
(1, 'Baik'),
(2, 'Sedang'),
(3, 'Rusak'),
(4, 'Hilang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `facebook` varchar(128) NOT NULL,
  `instagram` varchar(128) NOT NULL,
  `whatsapp` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES
(1, 'Anas Berkata', 'anasberkata@gmail.com', 'anasberkata', '$2y$10$VtW8kK.auFys07t4yVj3ie2ACxAtcQXtOXi6adhmIq8hdyy6LWmGy', 1, 1, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', 'ni ni-camera-compact text-dark ', '2022-07-17', 1),
(2, 'Eka Anas Jatnika, S.Ds', 'ideanasdesain@gmail.com', 'ideanasdesain', '$2y$10$N6v/byfq1jrLmFqyveOVdOXrP5NaoSfbOjhQoqzsOhTLPnlrxuZPK', 2, 2, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', 'ni ni-camera-compact text-dark ', '2022-07-17', 1),
(3, 'Ira Akhira Dewi, S.Pd', 'iraakhiradewi@gmail.com', 'pjproduk', '$2y$10$iwFuMPgmG58i2Cegq3O3Nuy04l2ex1Q4f31xL1y39Yk6BA5fhvfDS', 2, 2, 'default.jpg', 'pjproduk', 'pjproduk', '8510000000', '&lt;i class=', '2022-07-18', 1),
(4, 'Elinda Rosi, S.Si', 'elindarosi415@gmail.com', 'elindarosi', '$2y$10$jnLtgriXQAA13BvsL0r5NeQcwZso7T2aYVSXtYDmQ8TQodpcVP0zm', 3, 3, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(5, 'Nara Yumita, S.ST', 'narayumita86@gmail.com', 'narayumita', '$2y$10$3qL9L1fHw2WoYhVln0iO5uytLwAGerbUh6drRzfS4QlIF7q46H5pC', 3, 3, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(6, 'Moch Angga Kusumah, S.Pd', 'manggakusumah@gmail.com', 'manggakusumah', '$2y$10$maVCCO2F.Hd2fk.oacgF3.tWoPnFNA58gkFLPljQrU2MlDmlNYLuK', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(7, 'Rony Noor Sa\'roni, ST', 'ronynoorsaroni@gmail.com', 'ronynoorsaroni', '$2y$10$nlxL2S0ZwEiUO.OPVWlqTOhtj2DfZon8whJQbyetOulgb3JAryO4u', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(8, 'Siswa SPW DG', 'siswaspwgrafika@gmail.com', 'siswaspwgrafika', '$2y$10$rrhEBAWAyF9Vq9M3e4/q.uMeDoJWDkUEzZ34P1KElUwOr0iJjO2GS', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(9, 'Fachmi Fathurahman, S.Pd', 'fachmifathurahman@gmail.com', 'fachmifathurahman', '$2y$10$sNASxSjI2/ol1.dbiy8y9u67qq53EhpkirA6PHq34MRaWF/u9MLBu', 2, 2, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(10, 'Andika Nurhidayat, S.Pd', 'andikanurhidayat2@gmail.com', 'ansikanurhidayat', '$2y$10$EoAU28WQqs4KfG9B3erd3OBy8lL5EiD8FKnDAcn1oAZX2tJQWMIwG', 2, 2, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(11, 'Asep Suherman, SP., MP', 'asepsuherman@gmail.com', 'asepsuherman', '$2y$10$yc4ztsfa2MMapcWfdL6Er.mKsHkpvDpb2EezRhFCvK83d1cApzN6m', 5, 5, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(12, 'Ir. H. Muhammad Ridwan', 'omm_mmo83@yahoo.co.id', 'irhmuhammadridwan', '$2y$10$rVacsqyY072R.lnbjzD/Eu3lC5EtJeha6zfdIXtP9DWcjEVgaF2yW', 5, 5, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(13, 'Afif Amarullah, S.ST', 'afifamarullah@gmail.com', 'afifamarullah', '$2y$10$R5F2ayMRM3txNG40mT65NOAxWFPdVHCb/1WnHmXcQmqgIsQUDll1S', 5, 5, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(14, 'Siswa SPW APL', 'siswaspwapl@gmail.com', 'siswaspwapl', '$2y$10$GYOQq0.v79nF8jQQtmeuwun.rE.h.PNmwMSkJnOPUunfmAtkYOmHC', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(15, 'Siswa SPW TKJ', 'siswaspwtkj@gmail.com', 'siswaspwtkj', '$2y$10$bIzSLHRZRZ8cBUnpCCcv0OjjeiCVzvFTn2g07Ny54qCRz9dokIs2q', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(16, 'Siswa SPW ATPH', 'siswaspwatph@gmail.com', 'siswaspwatph', '$2y$10$OVqPUxjnjF0UYk5xHbUHOu.m8MF17PjjzqplYgtTFZCMm3muNS8nu', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(17, 'Siswa SPW APHP', 'siswaspwaphp@gmail.com', 'siswaspwaphp', '$2y$10$b4q3JfyYvRVnND0sAaZBq.cLxd6ng4PBDWNgiPc21C5RgPpXJIs1O', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(18, 'Siswa SPW ATU', 'siswaspwatu@gmail.com', 'siswaspwatu', '$2y$10$9bvvL4iExOzCd8TCxD.ubOlIfeGMieXDm7rSjjK9lMBAZ/h9lA1zm', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(19, 'Guru Piket', 'gurupiket@gmail.com', 'gurupiket', '$2y$10$oVtIyRr1v.pa4pJHm0xlaOD3zQxgAanA0Dtf2chFmWpWGhLx/eKTC', 5, 5, 'default.jpg', '', '', '', '', '2022-08-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access_menu`
--

CREATE TABLE `tbl_user_access_menu` (
  `id_user_access_menu` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_access_menu`
--

INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 16),
(9, 2, 2),
(10, 2, 3),
(11, 2, 4),
(12, 2, 5),
(13, 2, 6),
(15, 2, 7),
(16, 2, 16),
(17, 3, 2),
(18, 3, 4),
(19, 3, 5),
(21, 3, 6),
(23, 3, 7),
(24, 4, 3),
(26, 4, 5),
(28, 4, 6),
(29, 4, 7),
(32, 5, 5),
(33, 5, 7),
(34, 6, 7),
(35, 5, 6),
(36, 5, 16),
(37, 3, 16),
(38, 4, 16),
(39, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu`
--

CREATE TABLE `tbl_user_menu` (
  `id_user_menu` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `order_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_menu`
--

INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES
(1, 'admin', 1),
(2, 'produk', 4),
(3, 'peralatan', 3),
(5, 'penjualan', 6),
(6, 'stok', 7),
(7, 'daftar', 8),
(16, 'pengguna', 9),
(17, 'data', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES
(1, 'Admin Super SPW'),
(2, 'Admin SPW'),
(3, 'PJ. Produk'),
(4, 'PJ. Peralatan'),
(5, 'Guru SPW'),
(6, 'Siswa SPW'),
(7, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_submenu`
--

CREATE TABLE `tbl_user_submenu` (
  `id_user_submenu` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_submenu`
--

INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Menu Management', 'admin/menu', 'ni ni-bullet-list-67 text-primary', 1),
(2, 1, 'Access Role Menu', 'admin/role', 'ni ni-ungroup text-success', 1),
(3, 1, 'Data Web', 'admin/data_web', 'ni ni-world-2 text-warning', 1),
(4, 17, 'Lab SPW', 'data/lab', 'ni ni-atom text-info', 1),
(5, 2, 'Data Kategori', 'produk/category', 'ni ni-bullet-list-67 text-info', 1),
(6, 2, 'Data Produk', 'produk', 'ni ni-app text-warning', 1),
(7, 3, 'Data Kategori', 'peralatan/catagory', 'ni ni-bullet-list-67 text-info', 0),
(8, 3, 'Data Peralatan', 'peralatan', 'ni ni-settings text-success', 1),
(9, 2, 'Data Pembelian', 'produk/index_purchase', 'ni ni-cart text-success', 1),
(10, 5, 'Data Penjualan SPW', 'penjualan', 'ni ni-cart text-primary', 1),
(11, 6, 'Stok Produk', 'stok', 'ni ni-box-2 text-success', 1),
(12, 7, 'Daftar Harga', 'daftar', 'ni ni-shop text-primary', 1),
(13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1),
(14, 16, 'Profile', 'pengguna/profile', 'ni ni-credit-card text-primary', 1),
(15, 2, 'Data Supplier', 'produk/supplier', 'ni ni-single-02 text-primary', 1),
(16, 5, 'Data Penjualan Titipan', 'penjualan/index_franchise', 'ni ni-cart text-success', 1),
(17, 17, 'Jadwal SPW', 'data/schedule', 'ni ni-calendar-grid-58 text-primary', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data_lab`
--
ALTER TABLE `tbl_data_lab`
  ADD PRIMARY KEY (`id_lab`);

--
-- Indexes for table `tbl_data_web`
--
ALTER TABLE `tbl_data_web`
  ADD PRIMARY KEY (`id_data_web`);

--
-- Indexes for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  ADD PRIMARY KEY (`id_franchise`);

--
-- Indexes for table `tbl_franchise_detail`
--
ALTER TABLE `tbl_franchise_detail`
  ADD PRIMARY KEY (`id_franchise_detail`);

--
-- Indexes for table `tbl_franchisor`
--
ALTER TABLE `tbl_franchisor`
  ADD PRIMARY KEY (`id_franchisor`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tbl_product_place`
--
ALTER TABLE `tbl_product_place`
  ADD PRIMARY KEY (`id_place`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indexes for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  ADD PRIMARY KEY (`id_purchase_detail`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`id_schedule`);

--
-- Indexes for table `tbl_schedule_class`
--
ALTER TABLE `tbl_schedule_class`
  ADD PRIMARY KEY (`id_schedule_class`);

--
-- Indexes for table `tbl_selling`
--
ALTER TABLE `tbl_selling`
  ADD PRIMARY KEY (`id_selling`);

--
-- Indexes for table `tbl_selling_detail`
--
ALTER TABLE `tbl_selling_detail`
  ADD PRIMARY KEY (`id_selling_detail`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  ADD PRIMARY KEY (`id_tool`);

--
-- Indexes for table `tbl_tool_condition`
--
ALTER TABLE `tbl_tool_condition`
  ADD PRIMARY KEY (`id_tool_condition`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_access_menu`
--
ALTER TABLE `tbl_user_access_menu`
  ADD PRIMARY KEY (`id_user_access_menu`);

--
-- Indexes for table `tbl_user_menu`
--
ALTER TABLE `tbl_user_menu`
  ADD PRIMARY KEY (`id_user_menu`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tbl_user_submenu`
--
ALTER TABLE `tbl_user_submenu`
  ADD PRIMARY KEY (`id_user_submenu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data_lab`
--
ALTER TABLE `tbl_data_lab`
  MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_data_web`
--
ALTER TABLE `tbl_data_web`
  MODIFY `id_data_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  MODIFY `id_franchise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_franchise_detail`
--
ALTER TABLE `tbl_franchise_detail`
  MODIFY `id_franchise_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tbl_franchisor`
--
ALTER TABLE `tbl_franchisor`
  MODIFY `id_franchisor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product_place`
--
ALTER TABLE `tbl_product_place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_schedule_class`
--
ALTER TABLE `tbl_schedule_class`
  MODIFY `id_schedule_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_selling`
--
ALTER TABLE `tbl_selling`
  MODIFY `id_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_selling_detail`
--
ALTER TABLE `tbl_selling_detail`
  MODIFY `id_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  MODIFY `id_tool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_tool_condition`
--
ALTER TABLE `tbl_tool_condition`
  MODIFY `id_tool_condition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_user_access_menu`
--
ALTER TABLE `tbl_user_access_menu`
  MODIFY `id_user_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_user_menu`
--
ALTER TABLE `tbl_user_menu`
  MODIFY `id_user_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_submenu`
--
ALTER TABLE `tbl_user_submenu`
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
