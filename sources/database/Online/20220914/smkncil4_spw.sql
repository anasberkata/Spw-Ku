-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2022 at 09:43 PM
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
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id_class` int(11) NOT NULL,
  `class` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id_class`, `class`) VALUES
(1, 'XI DG'),
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
(13, 'XII DG'),
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
(13, '2022-09-02', 9, 2),
(14, '2022-09-05', 4, 1),
(15, '2022-09-05', 4, 2),
(16, '2022-09-06', 12, 1),
(17, '2022-09-06', 12, 2),
(18, '2022-09-07', 3, 1),
(19, '2022-09-07', 3, 2),
(20, '2022-09-09', 6, 1),
(21, '2022-09-08', 5, 1),
(22, '2022-09-08', 5, 2),
(23, '2022-09-12', 4, 1),
(24, '2022-09-12', 4, 2),
(25, '2022-09-13', 11, 1),
(26, '2022-09-13', 11, 2),
(27, '2022-12-09', 3, 1),
(28, '2022-12-09', 3, 2);

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
(98, 11, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(99, 16, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000),
(100, 17, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000),
(101, 16, 6, 'Gehu', 800, 1000, 75, 0, 75, 60000, 75000),
(102, 16, 6, 'Risol', 1000, 1500, 43, 11, 32, 32000, 48000),
(103, 16, 6, 'Nasi Bakar', 3500, 4000, 4, 1, 3, 10500, 12000),
(104, 16, 1, 'Nasi Uduk', 2500, 3000, 46, 34, 12, 30000, 36000),
(105, 16, 1, 'Pempek', 1700, 2000, 40, 31, 9, 15300, 18000),
(106, 16, 1, 'Cirambay', 4000, 5000, 13, 1, 12, 48000, 60000),
(107, 16, 1, 'Pentol', 1700, 2000, 125, 3, 122, 207400, 244000),
(108, 16, 1, 'Cipeng', 800, 1000, 65, 37, 28, 22400, 28000),
(109, 16, 1, 'Siomay Baso Tahu', 800, 1000, 150, 17, 133, 106400, 133000),
(110, 16, 1, 'Kerupuk Kaca', 2500, 3000, 15, 0, 15, 37500, 45000),
(111, 16, 1, 'Cemilan 3000', 2500, 3000, 25, 12, 13, 32500, 39000),
(112, 16, 1, 'Nutrisari', 2500, 3000, 50, 23, 27, 67500, 81000),
(113, 16, 1, 'Pop Ice', 2500, 3000, 20, 14, 6, 15000, 18000),
(114, 16, 1, 'Petis', 2500, 3000, 10, 1, 9, 22500, 27000),
(115, 17, 1, 'Nasi Uduk', 2500, 3000, 45, 0, 45, 112500, 135000),
(116, 17, 1, 'Pempek', 1700, 2000, 40, 33, 7, 11900, 14000),
(117, 17, 1, 'Cirambay', 4000, 5000, 13, 0, 13, 52000, 65000),
(118, 17, 1, 'Pentol', 1700, 2000, 125, 0, 125, 212500, 250000),
(119, 17, 1, 'Cipeng', 800, 1000, 65, 0, 65, 52000, 65000),
(120, 17, 1, 'Siomay Baso Tahu', 800, 1000, 150, 0, 150, 120000, 150000),
(121, 17, 1, 'Keripik Kaca', 2500, 3000, 15, 0, 15, 37500, 45000),
(122, 17, 1, 'Cemilan 3000', 2500, 3000, 25, 0, 25, 62500, 75000),
(123, 17, 1, 'Nutrisari', 2500, 3000, 50, 0, 50, 125000, 150000),
(124, 17, 1, 'Pop Ice', 2500, 3000, 20, 0, 20, 50000, 60000),
(125, 17, 1, 'Petis', 2500, 3000, 10, 0, 10, 25000, 30000),
(126, 15, 1, 'Nasi Uduk', 2500, 3000, 45, 22, 23, 57500, 69000),
(127, 15, 1, 'Cirambay', 4000, 5000, 17, 6, 11, 44000, 55000),
(128, 15, 1, 'Pentol', 1700, 2000, 180, 76, 104, 176800, 208000),
(129, 15, 1, 'Cipeng', 800, 1000, 60, 14, 46, 36800, 46000),
(130, 15, 1, 'Siomay', 800, 1000, 150, 19, 131, 104800, 131000),
(131, 15, 1, 'Basruk', 2500, 3000, 11, 2, 9, 22500, 27000),
(132, 15, 1, 'Keripik kaca', 2500, 3000, 15, 1, 14, 35000, 42000),
(133, 15, 1, 'Keripik Seblak', 2500, 3000, 10, 4, 6, 15000, 18000),
(134, 15, 1, 'Gurilem', 2500, 3000, 10, 7, 3, 7500, 9000),
(135, 15, 1, 'Keong', 2500, 3000, 10, 8, 2, 5000, 6000),
(136, 15, 1, 'Nutrisari ', 2500, 3000, 50, 22, 28, 70000, 84000),
(137, 15, 1, 'Pop Ice', 2500, 3000, 20, 0, 20, 50000, 60000),
(138, 15, 0, 'Makaroni Bantet', 2500, 3000, 5, 0, 0, 0, 0),
(139, 15, 0, 'Lumpia', 2500, 3000, 16, 0, 0, 0, 0),
(140, 15, 2, 'Samosa', 800, 1000, 75, 49, 26, 20800, 26000),
(141, 15, 6, 'Risol', 1000, 1500, 70, 19, 51, 51000, 76500),
(142, 15, 6, 'Gehu', 800, 1000, 140, 58, 82, 65600, 82000),
(143, 14, 1, 'Nasi Uduk', 2500, 3000, 40, 6, 34, 85000, 102000),
(144, 14, 1, 'Cirambay', 4000, 5000, 17, 0, 17, 68000, 85000),
(145, 14, 1, 'Pentol', 1700, 2000, 150, 31, 119, 202300, 238000),
(146, 14, 1, 'Cipeng', 800, 1000, 60, 0, 60, 48000, 60000),
(147, 14, 1, 'Siomay', 800, 1000, 150, 26, 124, 99200, 124000),
(148, 14, 1, 'Keripik kaca', 2500, 3000, 15, 2, 13, 32500, 39000),
(149, 14, 1, 'Kerupuk Seblak', 2500, 3000, 10, 8, 2, 5000, 6000),
(150, 14, 1, 'Gurilem', 2500, 3000, 10, 0, 10, 25000, 30000),
(151, 14, 1, 'Keong', 2500, 3000, 10, 6, 4, 10000, 12000),
(152, 14, 1, 'Nutrisari ', 2500, 3000, 50, 16, 34, 85000, 102000),
(153, 14, 1, 'Pop Ice', 2500, 3000, 20, 0, 20, 50000, 60000),
(154, 14, 1, 'Basruk', 2500, 3000, 10, 3, 7, 17500, 21000),
(155, 14, 2, 'Samosa', 800, 1000, 75, 5, 70, 56000, 70000),
(156, 18, 1, 'Nasi Uduk', 2500, 3000, 35, 17, 18, 45000, 54000),
(157, 18, 1, 'Pempek', 1700, 2000, 40, 22, 18, 30600, 36000),
(158, 18, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000),
(159, 18, 1, 'Cipeng (Cireng Gepeng)', 800, 1000, 100, 0, 0, 0, 0),
(160, 18, 1, 'Siomay', 800, 1000, 150, 0, 0, 0, 0),
(161, 18, 1, 'Keripik Kaca', 2500, 3000, 20, 5, 15, 37500, 45000),
(162, 18, 1, 'Kerupuk', 2500, 3000, 25, 5, 20, 50000, 60000),
(163, 18, 1, 'Petis', 2500, 3000, 16, 0, 0, 0, 0),
(164, 18, 1, 'Nutrisari', 2500, 3000, 50, 15, 35, 87500, 105000),
(165, 18, 1, 'Pop Ice', 2500, 3000, 20, 14, 6, 15000, 18000),
(166, 18, 2, 'Samosa', 800, 1000, 50, 0, 0, 0, 0),
(167, 18, 0, 'Sosis Solo', 1000, 1500, 15, 0, 0, 0, 0),
(169, 18, 6, 'Gehu', 800, 1000, 35, 0, 0, 0, 0),
(170, 18, 6, 'Buras', 800, 1000, 20, 0, 0, 0, 0),
(171, 19, 1, 'Nasi Uduk', 2500, 3000, 34, 8, 26, 65000, 78000),
(172, 19, 1, 'Pempek', 1700, 2000, 40, 21, 19, 32300, 38000),
(173, 19, 1, 'Cirambay', 4000, 5000, 15, 0, 0, 0, 0),
(174, 19, 1, 'Cipeng (Cireng Gepeng)', 800, 1000, 60, 0, 0, 0, 0),
(175, 19, 1, 'Siomay', 800, 1000, 150, 3, 147, 117600, 147000),
(176, 19, 1, 'Keripik Kaca', 2500, 3000, 20, 0, 0, 0, 0),
(177, 19, 1, 'Kerupuk', 2500, 3000, 25, 6, 19, 47500, 57000),
(178, 19, 1, 'Petis', 2500, 3000, 16, 0, 0, 0, 0),
(179, 19, 1, 'Nutrisari', 2500, 3000, 50, 15, 35, 87500, 105000),
(180, 19, 1, 'Pop Ice', 2500, 3000, 20, 0, 0, 0, 0),
(181, 19, 2, 'Samosa', 800, 1000, 50, 0, 0, 0, 0),
(182, 20, 6, 'Risol', 1000, 1500, 25, 0, 25, 25000, 37500),
(183, 20, 6, 'Sosis Solo', 1200, 1500, 15, 0, 15, 18000, 22500),
(184, 20, 6, 'Gehu', 800, 1000, 40, 0, 40, 32000, 40000),
(185, 20, 6, 'Nasi Bakar', 3500, 4000, 3, 0, 3, 10500, 12000),
(186, 25, 1, 'Nasi Uduk', 2500, 3000, 35, 7, 28, 70000, 84000),
(187, 25, 1, 'Pempek', 1700, 2000, 40, 14, 26, 44200, 52000),
(188, 25, 1, 'Cirambay', 4000, 5000, 17, 3, 14, 56000, 70000),
(189, 25, 1, 'Pentol', 1700, 2000, 100, 0, 100, 170000, 200000),
(190, 25, 1, 'Cipeng', 800, 1000, 100, 0, 100, 80000, 100000),
(191, 25, 1, 'Siomay Baso Tahu', 800, 1000, 150, 61, 89, 71200, 89000),
(192, 25, 1, 'Petis', 2500, 3000, 14, 4, 10, 25000, 30000),
(193, 25, 1, 'Basruk', 2500, 3000, 40, 12, 28, 70000, 84000),
(194, 25, 1, 'Nutrisari', 2500, 3000, 50, 34, 16, 40000, 48000),
(195, 25, 1, 'Pop Ice', 2500, 3000, 20, 16, 4, 10000, 12000),
(196, 26, 1, 'Nasi Uduk', 2500, 3000, 35, 14, 21, 52500, 63000),
(197, 26, 1, 'Pempek', 1700, 2000, 40, 32, 8, 13600, 16000),
(198, 26, 1, 'Cirambay', 4000, 5000, 17, 12, 5, 20000, 25000),
(199, 26, 1, 'Pentol', 1700, 2000, 100, 0, 100, 170000, 200000),
(200, 26, 1, 'Cipeng', 800, 1000, 70, 0, 70, 56000, 70000),
(201, 26, 1, 'Siomay Baso Tahu', 800, 1000, 150, 5, 145, 116000, 145000),
(202, 26, 1, 'Petis', 2500, 3000, 12, 0, 12, 30000, 36000),
(203, 26, 1, 'Basruk', 2500, 3000, 40, 14, 26, 65000, 78000),
(204, 26, 1, 'Nutrisari', 2500, 3000, 50, 20, 30, 75000, 90000),
(205, 26, 1, 'Pop Ice', 2500, 3000, 20, 5, 15, 37500, 45000),
(206, 25, 12, 'Makaroni', 2500, 3000, 20, 0, 20, 50000, 60000),
(207, 25, 13, 'Seblak Cilok', 4000, 5000, 30, 22, 8, 32000, 40000),
(208, 25, 13, 'Martabak', 5000, 6000, 5, 4, 1, 5000, 6000),
(209, 25, 9, 'Kebab Telor', 2800, 3000, 15, 0, 15, 42000, 45000),
(210, 25, 11, 'Pie Susu & Kue Sus', 1200, 1500, 50, 0, 50, 60000, 75000),
(211, 26, 11, 'Pie Buah & Sus Buah', 1600, 2000, 50, 0, 50, 80000, 100000),
(212, 25, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000),
(213, 26, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000),
(214, 25, 6, 'Risol', 1000, 1500, 55, 0, 55, 55000, 82500),
(215, 25, 6, 'Buras', 800, 1000, 19, 1, 18, 14400, 18000),
(216, 22, 12, 'Makaroni', 2500, 3000, 15, 6, 9, 22500, 27000),
(217, 22, 7, 'Aneka Keripik', 800, 1000, 30, 0, 30, 24000, 30000),
(218, 21, 6, 'Risol', 1000, 1500, 18, 0, 18, 18000, 27000),
(219, 21, 6, 'Sosis', 1200, 1500, 30, 14, 16, 19200, 24000),
(220, 21, 6, 'Gehu', 800, 1000, 31, 0, 31, 24800, 31000),
(221, 21, 6, 'Buras', 800, 1000, 15, 6, 9, 7200, 9000),
(222, 21, 6, 'Nasi Bakar', 3500, 4000, 2, 0, 2, 7000, 8000),
(223, 21, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(224, 22, 2, 'Samosa', 800, 1000, 75, 9, 66, 52800, 66000),
(225, 22, 1, 'Nasi Uduk', 2500, 3000, 30, 0, 30, 75000, 90000),
(226, 22, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000),
(227, 22, 1, 'Cirambay', 4000, 5000, 16, 0, 16, 64000, 80000),
(228, 22, 1, 'Pentol', 1700, 2000, 83, 0, 83, 141100, 166000),
(229, 22, 1, 'Cipeng', 800, 1000, 70, 0, 70, 56000, 70000),
(230, 22, 1, 'Siomay Baso Tahu', 800, 1000, 115, 4, 111, 88800, 111000),
(231, 22, 1, 'Kripik Kaca', 2500, 3000, 20, 0, 20, 50000, 60000),
(232, 22, 1, 'Krupuk', 2500, 3000, 25, 4, 21, 52500, 63000),
(233, 22, 1, 'Petis', 2500, 3000, 16, 0, 16, 40000, 48000),
(234, 22, 1, 'Nutrisari', 2500, 3000, 50, 25, 25, 62500, 75000),
(235, 22, 1, 'Pop Ice', 2500, 3000, 20, 11, 9, 22500, 27000),
(236, 21, 1, 'Nasi Uduk', 2500, 3000, 35, 4, 31, 77500, 93000),
(237, 21, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000),
(238, 21, 1, 'Cirambay', 4000, 5000, 16, 0, 16, 64000, 80000),
(239, 21, 1, 'Pentol', 1700, 2000, 83, 0, 83, 141100, 166000),
(240, 21, 1, 'Cipeng', 800, 1000, 110, 0, 110, 88000, 110000),
(241, 21, 1, 'Siomay Baso Tahu', 800, 1000, 120, 0, 120, 96000, 120000),
(242, 21, 1, 'Keripik Kaca', 2500, 3000, 20, 0, 20, 50000, 60000),
(243, 21, 1, 'Kerupuk', 2500, 3000, 25, 10, 15, 37500, 45000),
(244, 21, 1, 'Petis', 2500, 3000, 16, 6, 10, 25000, 30000),
(245, 21, 1, 'Nutrisari', 2500, 3000, 50, 32, 18, 45000, 54000),
(246, 21, 1, 'Pop Ice', 2500, 3000, 20, 18, 2, 5000, 6000),
(247, 21, 11, 'Pie Susu', 1200, 2000, 25, 0, 25, 30000, 50000),
(248, 21, 11, 'Pie Buah', 1600, 2000, 25, 0, 25, 40000, 50000),
(249, 22, 11, 'Pie Susu & Kue Sus', 1200, 1500, 25, 0, 25, 30000, 37500),
(250, 22, 11, 'Pie buah & Sus Buah', 1600, 2000, 25, 0, 25, 40000, 50000),
(251, 21, 8, 'Cilok', 2500, 3000, 32, 18, 14, 35000, 42000),
(252, 27, 1, 'Nasi Uduk', 2500, 3000, 39, 21, 18, 45000, 54000),
(253, 27, 1, 'Empek-empek', 1700, 2000, 40, 24, 16, 27200, 32000),
(254, 27, 1, 'Cirambay', 4000, 5000, 13, 7, 6, 24000, 30000),
(255, 27, 1, 'Pentol', 1700, 2000, 125, 31, 94, 159800, 188000),
(256, 27, 1, 'Cipeng', 800, 1000, 106, 0, 106, 84800, 106000),
(257, 27, 1, 'Siomay Baso Tahu', 800, 1000, 150, 71, 79, 63200, 79000),
(258, 27, 1, 'Petis', 2500, 3000, 14, 0, 14, 35000, 42000),
(259, 27, 1, 'Basruk', 2500, 3000, 25, 14, 11, 27500, 33000),
(260, 27, 1, 'Keripik Kaca', 2500, 3000, 25, 16, 9, 22500, 27000),
(261, 27, 1, 'Nutrisari', 2500, 3000, 30, 21, 9, 22500, 27000),
(262, 27, 1, 'Pop Ice', 2500, 3000, 30, 24, 6, 15000, 18000),
(263, 24, 9, 'Kebab', 2700, 3000, 18, 0, 18, 48600, 54000),
(264, 28, 1, 'Nasi Uduk', 2500, 3000, 36, 17, 19, 47500, 57000),
(265, 28, 1, 'Empek-empek', 1700, 2000, 40, 37, 3, 5100, 6000),
(266, 28, 1, 'Cirambay', 4000, 5000, 13, 3, 10, 40000, 50000),
(267, 28, 1, 'Pentol', 1700, 2000, 125, 54, 71, 120700, 142000),
(268, 24, 2, 'Samosa', 800, 1000, 75, 10, 65, 52000, 65000),
(269, 28, 1, 'Cipeng', 800, 1000, 80, 15, 65, 52000, 65000),
(270, 28, 1, 'Siomay Baso Tahu', 800, 1000, 150, 93, 57, 45600, 57000),
(271, 24, 12, 'Makaroni', 2500, 3000, 15, 0, 15, 37500, 45000),
(272, 28, 1, 'Petis', 2500, 3000, 12, 1, 11, 27500, 33000),
(273, 24, 4, 'Krupuk dan makaroni seblak', 2500, 3000, 6, 2, 4, 10000, 12000),
(274, 28, 1, 'Basruk', 2500, 3000, 25, 20, 5, 12500, 15000),
(275, 28, 1, 'Keripik Kaca', 2500, 3000, 25, 14, 11, 27500, 33000),
(276, 28, 1, 'Nutrisari', 2500, 3000, 30, 9, 21, 52500, 63000),
(277, 28, 1, 'Pop Ice', 2500, 3000, 30, 14, 16, 40000, 48000),
(278, 24, 14, 'Pentol', 900, 1000, 200, 51, 149, 134100, 149000),
(279, 27, 2, 'Samosa', 800, 1000, 75, 30, 45, 36000, 45000),
(280, 28, 2, 'Samosa', 800, 1000, 75, 45, 30, 24000, 30000),
(281, 27, 13, 'Seblak cilok', 4500, 5000, 15, 8, 7, 31500, 35000),
(282, 28, 13, 'Seblak cilok', 4500, 5000, 15, 11, 4, 18000, 20000),
(283, 28, 13, 'Martabak', 5500, 6000, 3, 2, 1, 5500, 6000),
(284, 27, 11, 'Pai Susu + Kue', 1200, 1500, 25, 0, 25, 30000, 37500),
(285, 27, 11, 'Pai Buah + Soes Buah', 1600, 2000, 25, 0, 25, 40000, 50000),
(286, 28, 11, 'Pai Susu + Kue Soes', 1200, 1500, 25, 1, 24, 28800, 36000),
(287, 28, 11, 'Pai Buah + Soes Buah', 1600, 2000, 25, 7, 18, 28800, 36000),
(288, 27, 6, 'Buras', 800, 1000, 13, 1, 12, 9600, 12000),
(289, 24, 13, 'Seblak Cilok', 4500, 5000, 10, 1, 9, 40500, 45000),
(290, 27, 6, 'Risol', 1000, 1500, 55, 14, 41, 41000, 61500),
(291, 24, 13, 'Martabak', 5000, 6000, 2, 0, 2, 10000, 12000),
(292, 27, 9, 'Kebab Telor', 2700, 3000, 15, 0, 15, 40500, 45000),
(293, 27, 12, 'Makaroni', 2500, 3000, 26, 3, 23, 57500, 69000),
(294, 28, 14, 'Baso', 900, 1000, 100, 0, 100, 90000, 100000),
(295, 28, 7, 'Cimol Bulat', 800, 1000, 15, 8, 7, 5600, 7000),
(296, 28, 7, 'Cimol kering', 800, 1000, 25, 4, 21, 16800, 21000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchisor`
--

CREATE TABLE `tbl_franchisor` (
  `id_franchisor` int(11) NOT NULL,
  `franchisor` varchar(125) NOT NULL,
  `whatsapp` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_franchisor`
--

INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES
(1, 'Pak Deri', ''),
(2, 'Bu Dyah', ''),
(3, 'Bu Siti Julaeha', ''),
(4, 'Bu Tuti', ''),
(5, 'Pak Anas', '85156334607'),
(6, 'Pak Luky', ''),
(7, 'Pak Arby', ''),
(8, 'Reja TKJ 1', ''),
(9, 'Fakih XI ATU', ''),
(10, 'Ratna XI DG', ''),
(11, 'Silvia', ''),
(12, 'Vera XII ATPH 1', ''),
(13, 'Naufal XII ATPH 2', ''),
(14, 'APHP', '');

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
(1, '', 1, 4, 'Cibodas Cup', 3, 315, 500, 'default-product.jpg', 1, 1),
(2, 'SPW-002', 1, 4, 'La Vida Cup', 240, 292, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-003', 1, 4, 'Hexua Cup', 24, 281, 500, 'default-product3.jpg', 1, 1),
(4, 'SPW-004', 1, 4, 'SUI Botol 600 mL', 187, 1520, 2000, 'default-product2.jpg', 1, 1),
(6, '', 1, 4, 'Arvin Botol 600 mL', 0, 1500, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 4, 'Ale - Ale', 49, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 4, 'Kiko', 118, 850, 1000, 'default-product.jpg', 1, 1),
(9, '', 2, 4, 'Koko Jelly Drink', 16, 795, 1500, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 4, 'Okky Jelly Drink', 10, 792, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-011', 2, 4, 'Teh Gelas', 24, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-012', 2, 4, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-013', 3, 4, 'Cocorio', 0, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-014', 3, 4, 'Top Ice', 0, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-015', 3, 4, 'Frenta', 0, 0, 0, 'default-product.jpg', 1, 1),
(16, 'SPW-016', 4, 4, 'Beng-beng', 85, 1700, 2000, 'default-product.jpg', 1, 1),
(17, 'SPW-017', 4, 4, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1),
(18, 'SPW-018', 4, 4, 'Chiki Ball', 6, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-019', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-020', 4, 4, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, 'SPW-021', 4, 4, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-022', 4, 4, 'Chocolatos Roll', 5, 795, 1000, 'default-product.jpg', 1, 1),
(23, 'SPW-023', 4, 4, 'Dilan 5 in 1', 12, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-024', 4, 4, 'Garuda Pilus', 123, 425, 500, 'default-product.jpg', 1, 1),
(25, 'SPW-025', 4, 4, 'Garuda Rosta', 13, 850, 1000, 'default-product.jpg', 1, 1),
(26, 'SPW-026', 4, 4, 'Gedy Malkist', 4, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-027', 4, 4, 'Gery Wafer', 21, 1583, 2000, 'default-product.jpg', 1, 1),
(28, 'SPW-028', 4, 4, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-029', 4, 4, 'Goriorio', 23, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-030', 4, 4, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, '', 4, 4, 'Kalpa', 16, 1667, 2000, 'default-product.jpg', 1, 1),
(32, 'SPW-032', 4, 4, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(33, '', 4, 4, 'Mie Shoer Kremez', 1, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-034', 4, 4, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-035', 4, 4, 'Nabati Aah', 115, 450, 500, 'default-product.jpg', 1, 1),
(36, 'SPW-036', 4, 4, 'Nabati Siip', 19, 450, 500, 'default-product.jpg', 1, 1),
(37, 'SPW-037', 4, 4, 'Nextar', 1, 1750, 2000, 'default-product.jpg', 1, 1),
(38, '', 4, 4, 'Oreo Soft Cake', 31, 1750, 2500, 'default-product.jpg', 1, 1),
(39, '', 4, 4, 'Roma Arden', 3, 1780, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-040', 4, 4, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-041', 4, 4, 'Roma Malkist', 14, 900, 1000, 'default-product.jpg', 1, 1),
(42, 'SPW-042', 4, 4, 'Slai O\'Lai', 111, 1334, 2000, 'default-product.jpg', 1, 1),
(43, 'SPW-043', 4, 4, 'Sosis Sonice Sapi / Ayam', 34, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-044', 4, 4, 'Timtam Maxi', 10, 875, 1000, 'default-product.jpg', 1, 1),
(45, 'SPW-045', 4, 4, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-046', 4, 4, 'Wafello', 6, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-047', 5, 4, 'Alpenliebe', 40, 196, 250, 'default-product.jpg', 1, 1),
(48, '', 5, 4, 'Kiss', 32, 120, 250, 'default-product.jpg', 1, 1),
(49, 'SPW-049', 5, 4, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-050', 5, 4, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-051', 5, 4, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1),
(52, 'SPW-052', 7, 4, 'Indomie Ayam Bawang', 71, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-053', 7, 4, 'Indomie Goreng', 35, 2675, 3000, 'default-product.jpg', 1, 1),
(54, 'SPW-054', 7, 4, 'Mie Sedap Ayam Bawang', 88, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-055', 7, 4, 'Mie Sedap Goreng', 48, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-056', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, 'SPW-057', 8, 4, 'Ballpoint Standard AE7', 1, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-058', 8, 4, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-059', 8, 4, 'Buku Saku Tipis', 71, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-060', 8, 4, 'Glue Stick', 10, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-061', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-062', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-063', 8, 4, 'Penggaris 30 Cm', 8, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-064', 8, 4, 'Tip-Ex', 0, 2500, 3000, 'default-product.jpg', 1, 1),
(65, 'SPW-065', 9, 4, 'Mixagrip Per Butir', 23, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-066', 9, 4, 'Hansaplast', 38, 225, 500, 'default-product.jpg', 1, 1),
(67, 'SPW-067', 9, 4, 'Promaag', 14, 667, 1000, 'default-product.jpg', 1, 1),
(68, 'SPW-068', 10, 4, 'Laurier', 7, 430, 500, 'default-product.jpg', 1, 1),
(69, 'SPW-069', 10, 4, 'Hers Protex', 17, 440, 500, 'default-product.jpg', 1, 1),
(70, 'SPW-070', 10, 4, 'Charm', 30, 430, 500, 'default-product.jpg', 1, 1),
(71, 'SPW-071', 10, 4, 'Tissue Tessa', 7, 2200, 3000, 'default-product.jpg', 1, 1),
(72, 'SPW-072', 10, 4, 'Minyak Sayur Promo 1 L', 0, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-073', 10, 4, 'Mama Lemon 1000', 7, 875, 1000, 'default-product.jpg', 1, 1),
(74, 'SPW-074', 10, 4, 'Garam Jempol', 3, 1500, 2000, 'default-product.jpg', 1, 1),
(75, 'SPW-075', 10, 4, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-076', 10, 4, 'Saos Gembol', 5, 2500, 3000, 'default-product.jpg', 1, 1),
(77, 'SPW-077', 10, 4, 'Cuka 1000', 5, 1000, 1000, 'default-product.jpg', 1, 1),
(78, 'SPW-078', 2, 2, 'Pulpy Orange', 11, 3833, 4500, 'default-product.jpg', 1, 1),
(79, 'SPW-079', 2, 2, 'Sprite Pet Seru 390 mL', 107, 3958, 4500, 'default-product.jpg', 1, 1),
(80, 'SPW-080', 2, 2, 'Fanta Pet Seru 390 mL', 25, 3958, 5000, 'default-product.jpg', 1, 1),
(81, '', 2, 2, 'Sprite Pet Imut 250 mL', 19, 2375, 3000, 'default-product.jpg', 1, 1),
(82, '', 2, 2, 'Fanta Pet Imut 250 mL', 1, 2375, 3000, 'default-product.jpg', 1, 1),
(83, 'SPW-083', 2, 2, 'Coca Cola Pet Imut 250 mL', 11, 2375, 3000, 'default-product.jpg', 1, 1),
(85, 'SPW-085', 2, 2, 'Coca Cola Pet Seru 390 mL', 36, 3958, 5000, 'default-product.jpg', 1, 1),
(86, 'SPW-086', 2, 2, 'Nutriboost', 16, 5333, 7000, 'default-product.jpg', 1, 1),
(87, 'SPW-087', 4, 4, 'Choki-Choki', 170, 900, 1500, 'default-product.jpg', 1, 1),
(88, 'SPW-088', 4, 4, 'Top Delfi', 111, 813, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-089', 6, 1, 'AICE Markisa 55 mL', 0, 1550, 3000, 'default-product.jpg', 1, 1),
(90, 'SPW-090', 6, 1, 'AICE Miki-Miki 39 gr', 83, 1558, 2000, 'default-product.jpg', 1, 1),
(91, 'SPW-091', 6, 1, 'AICE Nanas Stick 65gr', 57, 1550, 2000, 'default-product.jpg', 1, 1),
(92, 'SPW-092', 6, 1, 'AICE Semangka Stick 65gr', 74, 1550, 2000, 'default-product.jpg', 1, 1),
(93, 'SPW-093', 6, 1, 'AICE Sweet Corn Stick New 52gr FIFA SS', 177, 2362, 3000, 'default-product.jpg', 1, 1),
(94, 'SPW-094', 6, 1, 'AICE Mochi Stick 30gr SP', 12, 2313, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-095', 6, 1, 'AICE Mochi Durian 45mL SP', 0, 2212, 3000, 'default-product.jpg', 1, 1),
(96, 'SPW-096', 6, 1, 'AICE 2 Colour Chocolate Stick 50 mL', 0, 1912, 2500, 'default-product.jpg', 1, 1),
(97, '', 6, 1, 'AICE Milk Melon 50gr', 114, 1913, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-098', 6, 1, 'AICE Blueberry Yogurt Stick 49 mL', 0, 2500, 3000, 'default-product.jpg', 1, 1),
(99, 'SPW-099', 6, 1, 'AICE Fruit Twister Stick 60 mL', 2, 2425, 3000, 'default-product.jpg', 1, 1),
(100, '', 6, 1, 'AICE Chocolate Crispy Stick 60gr', 110, 4000, 5000, 'default-product.jpg', 1, 1),
(101, 'SPW-101', 6, 1, 'AICE Strawberry Crispy Stick New', 91, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-102', 6, 1, 'AICE Sundae Chocolate Cup 100 mL', 42, 4042, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-103', 6, 1, 'AICE Freezy Choco 49 mL', 0, 1560, 2000, 'default-product.jpg', 1, 1),
(104, '', 6, 1, 'AICE Bingo Cookies Cone 100 mL', 105, 4062, 4000, 'default-product.jpg', 1, 1),
(105, 'SPW-105', 5, 4, 'Bontea Green Lemon / Original', 103, 106, 250, 'default-product.jpg', 1, 1),
(107, 'SPW-107', 5, 4, 'Kopiko Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(108, 'SPW-108', 5, 4, 'Mintz Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(109, 'SPW-109', 5, 4, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-110', 5, 4, 'Yupi', 33, 138, 250, 'default-product.jpg', 1, 1),
(111, 'SPW-111', 4, 4, 'Mio Fullo', 20, 450, 500, 'default-product.jpg', 1, 1),
(112, '', 4, 4, 'Garuda Katom', 38, 1254, 2000, 'default-product.jpg', 1, 1),
(113, '', 4, 4, 'Gery Salut Hazelnut / chocolate', 7, 450, 500, 'default-product.jpg', 1, 1),
(114, 'SPW-114', 4, 4, 'Gery Malkist Kelapa Coklat', 0, 0, 1000, 'default-product.jpg', 1, 1),
(115, 'SPW-115', 4, 4, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-116', 4, 4, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-117', 4, 4, 'Deka Kacang', 6, 880, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-118', 4, 4, 'Kacang Polong', 0, 0, 0, 'default-product.jpg', 1, 1),
(119, 'SPW-119', 4, 4, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1),
(120, 'SPW-120', 4, 4, 'Oreo Cream', 52, 1750, 2000, 'default-product.jpg', 1, 1),
(121, '', 4, 4, 'Roti Aoka', 6, 1800, 2500, 'default-product.jpg', 1, 1),
(122, 'SPW-122', 4, 4, 'Selimut', 16, 0, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-123', 4, 4, 'Tiktak', 20, 840, 1000, 'default-product.jpg', 1, 1),
(124, 'SPW-124', 4, 4, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-125', 4, 4, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, 'SPW-126', 4, 4, 'Monde Serena Gold', 3, 2000, 2500, 'default-product.jpg', 1, 1),
(127, 'SPW-127', 4, 4, 'Nabati Roll', 27, 375, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-128', 2, 4, 'Calpico', 112, 2050, 3000, 'default-product.jpg', 1, 1),
(129, 'SPW-129', 2, 4, 'Kopikap', 116, 821, 1000, 'default-product.jpg', 1, 1),
(130, 'SPW-130', 2, 4, 'Milku 200 mL', 1, 2700, 3500, 'default-product.jpg', 1, 1),
(132, 'SPW-132', 10, 4, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-133', 10, 4, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1),
(134, '', 1, 4, 'Sui Cup 60 mL', 53, 281, 500, 'default-product.jpg', 1, 1),
(135, '', 1, 4, 'Arvin Botol 600ml', 171, 958, 2000, 'default-product.jpg', 2, 1),
(136, '', 1, 4, 'Sui Botol 600ml', 589, 958, 2000, 'IMG_20220824_074621.jpg', 2, 1),
(137, '', 6, 1, 'AICE Mochi Vanilla 30 gr', 31, 2313, 3000, 'default-product.jpg', 2, 1),
(138, '', 2, 2, 'Fanta Pet Seru 390 ml', 41, 3958, 5000, 'default-product.jpg', 2, 1),
(139, '', 6, 1, 'AICE 2 Colors Chocolate Stick 50ml', 44, 1912, 2500, 'default-product.jpg', 2, 1),
(140, '', 6, 1, 'AICE Bingo Cookies Cone 100ml', 3, 4062, 5000, 'default-product.jpg', 2, 1),
(141, '', 6, 1, 'AICE Blueberry Yoghurt Stick 49ml', 88, 1900, 2500, 'default-product.jpg', 2, 1),
(142, '', 6, 1, 'AICE Chocolate Crispy Stick 60g', 20, 4000, 5000, 'default-product.jpg', 2, 1),
(143, '', 6, 1, 'AICE Freezy Choco 49ml', 0, 1560, 2000, 'default-product.jpg', 2, 1),
(144, '', 6, 1, 'AICE Fruit Twister Stick 60ml', 28, 2425, 3000, 'default-product.jpg', 2, 1),
(145, '', 6, 1, 'AICE Milk 55ml', 5, 1940, 2500, 'default-product.jpg', 2, 1),
(146, '', 6, 1, 'AICE Miki-Miki 39g', 24, 1558, 2000, 'IMG_20220827_130747.jpg', 2, 1),
(147, '', 6, 1, 'AICE Milk Melon Stick 50g', 42, 1912, 2500, 'default-product.jpg', 2, 1),
(148, '', 6, 1, 'AICE Mochi Chocolate 45ml-SP', 12, 2313, 3000, 'default-product.jpg', 2, 1),
(149, '', 6, 1, 'AICE Mango Slush 30g', 0, 3017, 4000, 'IMG_20220827_131146.jpg', 2, 1),
(150, '', 6, 1, 'AICE Nanas Stick 65g', 8, 1540, 2000, 'default-product.jpg', 2, 1),
(151, '', 6, 1, 'AICE Semangka Stick 65g', 56, 1540, 2000, 'default-product.jpg', 2, 1),
(152, '', 6, 1, 'AICE Strawberry Crispy Stick New', 36, 2750, 3500, 'default-product.jpg', 2, 1),
(153, '', 6, 1, 'AICE Sundae Strawberry Cup 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1),
(154, '', 6, 1, 'AICE Sweet Corn Stick New 52g Fifa SS', 147, 2362, 3000, 'default-product.jpg', 2, 1),
(156, '', 6, 1, 'AICE Milk Melon Cone 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1),
(157, '', 6, 1, 'AICE Taro Crispy', 60, 2412, 3000, 'IMG_20220827_130709.jpg', 2, 1),
(158, '', 6, 1, 'AICE Choco Boost', 16, 4000, 5000, 'default-product.jpg', 2, 1),
(159, '', 6, 1, 'AICE Max Cone', 4, 4062, 5000, 'IMG_20220827_130927.jpg', 2, 1),
(160, '', 6, 1, 'AICE Berry Max Cone', 7, 4062, 5000, 'default-product.jpg', 2, 1),
(161, '', 6, 1, 'AICE Choco Cookies', 0, 3600, 4500, 'default-product.jpg', 2, 1),
(162, '', 6, 1, 'AICE Coffee Crispy', 0, 2750, 3500, 'default-product.jpg', 2, 1),
(163, '', 2, 2, 'Fanta Pet Imut 250ml', 64, 2375, 3000, 'default-product.jpg', 2, 1),
(164, '', 2, 2, 'Coca-Cola Pet Seru 390ml', 35, 3958, 5000, 'default-product.jpg', 2, 1),
(165, '', 2, 2, 'Coca-Cola Pet Imut 250ml', 53, 2375, 3000, 'default-product.jpg', 2, 1),
(166, '', 2, 2, 'Frestea 350ml', 146, 3500, 4500, 'default-product.jpg', 2, 1),
(167, '', 2, 2, 'Nutriboost', 65, 5333, 7000, 'default-product.jpg', 2, 1),
(168, '', 2, 2, 'Pulpy Orange', 43, 3833, 4500, 'default-product.jpg', 2, 1),
(169, '', 2, 2, 'Sprite Pet Imut 250ml', 14, 2375, 3000, 'default-product.jpg', 2, 1),
(170, '', 2, 2, 'Sprite Pet Seru 390ml', 43, 3958, 4500, 'default-product.jpg', 2, 1),
(171, '', 1, 4, 'Cibodas Cup', 333, 315, 500, 'default-product.jpg', 2, 1),
(172, '', 1, 4, 'La Vida Cup / SUI Cup', 398, 292, 500, 'default-product.jpg', 2, 1),
(173, '', 2, 4, 'Ale-Ale', 0, 792, 1000, 'default-product.jpg', 2, 1),
(174, '', 3, 4, 'Kiko', 0, 850, 1000, 'default-product.jpg', 2, 1),
(176, '', 2, 4, 'Okky Jelly Drink', 22, 792, 1000, 'default-product.jpg', 2, 1),
(177, '', 2, 4, 'Teh Gelas', 35, 813, 1000, 'default-product.jpg', 2, 1),
(178, '', 2, 4, 'Calpico 85ml / Calpis', 48, 2050, 3000, 'default-product.jpg', 2, 1),
(179, '', 2, 4, 'Milku 200ml', 0, 2583, 3000, 'default-product.jpg', 2, 1),
(180, '', 2, 4, 'Ultra 200ml', 15, 4300, 5000, 'default-product.jpg', 2, 1),
(181, '', 5, 4, 'Alpenliebe', 0, 200, 250, 'default-product.jpg', 2, 1),
(182, '', 5, 4, 'Bontea Green', 139, 106, 250, 'default-product.jpg', 2, 1),
(183, '', 5, 4, 'Kiss', 0, 196, 250, 'default-product.jpg', 2, 1),
(184, '', 5, 4, 'Kopiko', 56, 170, 250, 'default-product.jpg', 2, 1),
(185, '', 5, 4, 'Mintz', 36, 120, 250, 'default-product.jpg', 2, 1),
(186, '', 5, 4, 'Relaxa', 50, 100, 250, 'default-product.jpg', 2, 1),
(187, '', 5, 0, 'Yupi', 0, 138, 250, 'default-product.jpg', 2, 1),
(188, '', 4, 4, 'Roti Aoka / Roti Coy', 55, 1800, 2500, 'default-product.jpg', 2, 1),
(189, '', 4, 4, 'Bengbeng', 92, 1710, 2000, 'default-product.jpg', 2, 1),
(190, '', 4, 4, 'Better', 41, 854, 1500, 'default-product.jpg', 2, 1),
(191, '', 4, 4, 'Chiki Ball', 6, 900, 1000, 'default-product.jpg', 2, 1),
(192, '', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(193, '', 4, 4, 'Chitato Beef / Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(195, '', 4, 4, 'Chocolatos Roll 1000', 0, 795, 1000, 'default-product.jpg', 2, 1),
(196, '', 4, 4, 'Chocolatos Roll 500', 81, 450, 500, 'default-product.jpg', 2, 1),
(197, '', 4, 4, 'Chocolatos Wafer Cream', 7, 900, 1500, 'default-product.jpg', 2, 1),
(198, '', 4, 4, 'Choki Choki', 23, 870, 1000, 'default-product.jpg', 2, 1),
(199, '', 4, 4, 'Dilan 5 in 1', 36, 1667, 2000, 'default-product.jpg', 2, 1),
(200, '', 4, 4, 'Garuda Kacang Kulit Besar', 0, 1850, 2000, 'default-product.jpg', 2, 1),
(201, '', 4, 4, 'Garuda Kacang Kulit Kecil', 0, 850, 1000, 'default-product.jpg', 2, 1),
(202, '', 4, 4, 'Garuda Pilus', 60, 425, 500, 'default-product.jpg', 2, 1),
(203, '', 4, 4, 'Garuda Kacang Atom', 10, 1850, 2000, 'default-product.jpg', 2, 1),
(204, '', 4, 4, 'Gery Malkist', 43, 850, 1000, 'default-product.jpg', 2, 1),
(205, '', 4, 4, 'Gery Salut', 11, 446, 500, 'default-product.jpg', 2, 1),
(206, '', 4, 4, 'Gery Odonut', 87, 438, 500, 'default-product.jpg', 2, 1),
(207, '', 4, 4, 'Gery Wafer', 2, 1583, 2000, 'default-product.jpg', 2, 1),
(208, '', 4, 4, 'Good Time', 77, 875, 1000, 'default-product.jpg', 2, 1),
(209, '', 4, 4, 'Goriorio', 100, 450, 500, 'default-product.jpg', 2, 1),
(210, '', 4, 4, 'Jetz Stick', 3, 900, 1000, 'default-product.jpg', 2, 1),
(211, '', 4, 4, 'Kacang Koro', 20, 880, 1000, 'default-product.jpg', 2, 1),
(212, '', 4, 4, 'Kacang Polong', 0, 870, 1000, 'default-product.jpg', 2, 1),
(213, '', 4, 4, 'Kalpa', 54, 1817, 2000, 'default-product.jpg', 2, 1),
(214, '', 4, 4, 'Keju Cake', 58, 1792, 2000, 'default-product.jpg', 2, 1),
(215, '', 4, 4, 'Mie Shor Kremez', 2, 450, 500, 'default-product.jpg', 2, 1),
(216, '', 4, 4, 'Fullo Pack Of Vanila Milk /Mio Fullo', 12, 446, 500, 'default-product.jpg', 2, 1),
(217, '', 4, 4, 'Monde Serena 25g', 13, 2000, 2500, 'default-product.jpg', 2, 1),
(218, '', 4, 4, 'Mayasi Ala Kacang Jepang', 40, 875, 1000, 'default-product.jpg', 2, 1),
(219, '', 4, 4, 'Nabati Aah', 57, 450, 500, 'default-product.jpg', 2, 1),
(220, '', 4, 4, 'Nabati Richoco', 24, 500, 1000, 'default-product.jpg', 2, 1),
(221, '', 4, 4, 'Nabati Siip', 57, 450, 500, 'default-product.jpg', 2, 1),
(222, '', 4, 4, 'Nextar', 131, 1750, 2000, 'default-product.jpg', 2, 1),
(223, '', 4, 4, 'Oreo Cream', 80, 1750, 2000, 'default-product.jpg', 2, 1),
(224, '', 4, 4, 'Oreo Soft Cake', 36, 1792, 2000, 'default-product.jpg', 2, 1),
(225, '', 4, 4, 'Regal', 21, 930, 1000, 'default-product.jpg', 2, 1),
(226, '', 4, 4, 'Roma Gandum Sandwich', 48, 1792, 2000, 'default-product.jpg', 2, 1),
(227, '', 4, 4, 'Roma Malkist / Abon', 13, 900, 1000, 'default-product.jpg', 2, 1),
(228, '', 4, 4, 'Richeese Bisvit Selimut', 68, 450, 1000, 'default-product.jpg', 2, 1),
(229, '', 4, 4, 'Slai O\'Lai', 39, 1335, 2000, 'default-product.jpg', 2, 1),
(230, '', 4, 4, 'Sosis Sonice', 118, 813, 1000, 'default-product.jpg', 2, 1),
(231, '', 4, 4, 'Tango 1000', 0, 900, 1000, 'default-product.jpg', 2, 1),
(232, '', 4, 4, 'Tiktak / Tictac', 0, 870, 1000, 'default-product.jpg', 2, 1),
(233, '', 10, 4, 'Royco Ayam', 26, 400, 500, 'default-product.jpg', 2, 1),
(234, '', 4, 4, 'Timtam Maxi', 7, 875, 1000, 'default-product.jpg', 2, 1),
(236, '', 4, 4, 'Delfi Top Chocolate', 43, 813, 1000, 'default-product.jpg', 2, 1),
(237, '', 4, 4, 'Wafello', 8, 900, 1000, 'default-product.jpg', 2, 1),
(238, '', 7, 4, 'Indomie Ayam Bawang', 31, 2525, 3000, 'default-product.jpg', 2, 1),
(239, '', 7, 4, 'Indomie Goreng', 0, 2675, 3000, 'default-product.jpg', 2, 1),
(240, '', 7, 4, 'Mie Sedap Ayam Bawang', 30, 2363, 3000, 'default-product.jpg', 2, 1),
(241, '', 7, 0, 'Mie Sedap Goreng', 0, 2525, 3000, 'default-product.jpg', 2, 1),
(242, '', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 2, 1),
(243, '', 10, 4, 'Tissue Paseo 1000', 7, 800, 1000, 'default-product.jpg', 2, 1),
(244, '', 10, 4, 'Tissue Paseo 2500', 0, 2200, 2500, 'default-product.jpg', 2, 1),
(245, '', 10, 4, 'Polytex Spon Busa', 2, 2400, 3000, 'default-product.jpg', 2, 1),
(246, '', 4, 4, 'Iyes Kacang Oven Rasa Pedas', 10, 850, 1000, 'default-product.jpg', 2, 1),
(247, '', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 2, 1),
(248, '', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 2, 1),
(249, '', 8, 4, 'Tipe-Ex', 0, 2500, 3000, 'default-product.jpg', 2, 1),
(250, '', 3, 4, 'Luwak White Coffee', 0, 560, 1500, 'default-product.jpg', 2, 1),
(251, '', 10, 4, 'Softex Daun Sirih', 1, 225, 500, 'default-product.jpg', 2, 1),
(252, '', 9, 4, 'Promaag / Butir', 0, 667, 1000, 'default-product.jpg', 2, 1),
(253, '', 10, 4, 'Charm', 72, 430, 1000, 'default-product.jpg', 2, 1),
(254, '', 10, 4, 'Cuka 1500', 6, 1000, 1500, 'default-product.jpg', 2, 1),
(255, '', 10, 4, 'Garam Jempol', 1, 1500, 2000, 'default-product.jpg', 2, 1),
(256, '', 10, 4, 'Hers Protex', 39, 440, 500, 'default-product.jpg', 2, 1),
(257, '', 10, 4, 'Laurier', 0, 430, 1000, 'default-product.jpg', 2, 1),
(258, '', 10, 4, 'Mama Lemon 55ml', 2, 812, 1000, 'default-product.jpg', 2, 1),
(259, '', 10, 4, 'Mama Lemon 450ml', 5, 8200, 10000, 'default-product.jpg', 2, 1),
(260, '', 10, 4, 'Mama Lemon 115 ml', 4, 1500, 2000, 'default-product.jpg', 2, 1),
(261, '', 10, 4, 'Minyak Sayur Sedaap 1L', 0, 16700, 18000, 'default-product.jpg', 2, 1),
(262, '', 10, 4, 'Saos Gembol', 6, 2500, 3000, 'default-product.jpg', 2, 1),
(263, '', 10, 4, 'Terigu Segitiga Curah 1kg', 10, 11000, 13000, 'default-product.jpg', 2, 1),
(264, '', 10, 4, 'Tissue Tessa', 18, 1771, 2000, 'default-product.jpg', 2, 1),
(265, '', 4, 4, 'Biskuat Bolu', 0, 1690, 2000, 'default-product.jpg', 2, 1),
(267, '', 12, 4, 'Kapal Api Special Mix', 13, 1180, 2000, 'default-product.jpg', 2, 1),
(268, '', 12, 4, 'Good Day Mochacino', 27, 1130, 2000, 'default-product.jpg', 2, 1),
(269, '', 4, 4, 'Tango Walut', 47, 1140, 2000, 'default-product.jpg', 2, 1),
(270, '', 4, 4, 'Yoritos', 17, 1140, 2000, 'default-product.jpg', 2, 1),
(271, '', 4, 4, 'Taro Net Potato', 6, 1771, 2000, 'default-product.jpg', 2, 1),
(272, '', 4, 4, 'Pulpen Standard AE7', 12, 1625, 2000, 'default-product.jpg', 2, 1),
(273, '', 8, 4, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 2, 1),
(274, '', 8, 4, 'Buku Saku Tipis', 0, 900, 1500, 'default-product.jpg', 2, 1),
(275, '', 8, 4, 'Glue Stick', 0, 2000, 2500, 'default-product.jpg', 2, 1),
(276, '', 8, 4, 'Penggaris 30cm', 0, 2000, 2500, 'default-product.jpg', 2, 1),
(277, '', 9, 4, 'Mixagrip / Butir', 0, 220, 500, 'default-product.jpg', 2, 1),
(278, '', 9, 4, 'Hansaplast', 0, 225, 500, 'default-product.jpg', 2, 1),
(279, '', 10, 4, 'Kecap Bango', 0, 24300, 25000, 'default-product.jpg', 2, 1),
(280, '', 10, 4, 'Minyak Sayur Promo 1L', 0, 23750, 24000, 'default-product.jpg', 2, 1),
(281, '', 4, 4, 'Roma Sari Gandum', 19, 1791, 2000, 'default-product.jpg', 2, 1),
(282, '', 4, 4, 'Gery Salut Chocolate Coconut', 9, 1583, 2000, 'default-product.jpg', 2, 1),
(283, '', 4, 4, 'Dua Kelinci Kacang Garing', 0, 850, 1000, 'default-product.jpg', 2, 1),
(284, '', 4, 4, 'Tango Wafer 1000 Vanilla Delight ', 8, 840, 1000, 'default-product.jpg', 2, 1),
(285, '', 7, 4, 'Mie Sedap Goreng', 1, 2525, 3000, 'default-product.jpg', 2, 1),
(286, '', 10, 4, 'Tisu Paseo 1000', 24, 800, 1000, 'default-product.jpg', 2, 1),
(287, '', 10, 4, 'Tisu Paseo 3000', 5, 2200, 3000, 'default-product.jpg', 2, 1),
(289, '', 12, 4, 'Luwak White Coffee ', 48, 560, 1500, 'default-product.jpg', 2, 1),
(290, '', 4, 4, 'Taro Seaweed 1000', 11, 900, 1000, 'default-product.jpg', 2, 1),
(291, '', 6, 1, 'AICE Mochi Chocolate 45 ml', 79, 2313, 3000, 'default-product.jpg', 1, 1),
(292, '', 6, 1, 'AICE Melon Cone 100 ml', 0, 4041, 5000, 'default-product.jpg', 1, 1),
(293, '', 6, 1, 'AICE Choco Vanila Cup', 0, 3208, 4000, 'default-product.jpg', 1, 1),
(294, '', 6, 1, 'AICE Mochi Vanila 45 ml', 76, 2313, 3000, 'default-product.jpg', 1, 1),
(295, '', 2, 3, 'S-Tee Kotak 200 ml', 14, 1500, 2500, 'default-product.jpg', 1, 1),
(296, '', 2, 3, 'S-Tee Pet 390 ml', 2, 2083, 3000, 'default-product.jpg', 1, 1),
(297, '', 2, 3, 'Sosro Kotak', 116, 2146, 3000, 'default-product.jpg', 1, 1),
(298, '', 2, 3, 'Sosro Kotak 330 ml', 3, 2625, 3500, 'default-product.jpg', 1, 1),
(299, '', 2, 3, 'Fruitea Pet Apple 350 ml', 104, 3333, 4000, 'default-product.jpg', 1, 1),
(300, '', 2, 3, 'Fruitea Strawberry 200ml', 62, 2146, 3000, 'default-product.jpg', 1, 1),
(301, '', 2, 3, 'Country Choice 250ml', 9, 4167, 5000, 'default-product.jpg', 1, 1),
(302, '', 2, 3, 'Tebs Lemon 300 ml', 11, 3333, 4000, 'default-product.jpg', 1, 1),
(303, '', 2, 3, 'Tebs MF 300 ml', 19, 3333, 4000, 'default-product.jpg', 1, 1),
(304, '', 1, 3, 'Prima 600 ml', 15, 1354, 2500, 'default-product.jpg', 1, 1),
(305, '', 1, 3, 'Prima 330 ml', 0, 1188, 2000, 'default-product.jpg', 1, 1),
(306, '', 1, 3, 'Prima Gelas', 0, 469, 500, 'default-product.jpg', 1, 1),
(307, '', 2, 3, 'Tebs Kaleng 300 ml', 0, 3583, 4000, 'default-product.jpg', 1, 1),
(308, '', 2, 3, 'Teh Botol Kaleng', 6, 3375, 4000, 'default-product.jpg', 1, 1),
(309, '', 2, 3, 'Fruitea Kaleng 300 ml', 0, 3375, 4000, 'default-product.jpg', 1, 1),
(310, '', 2, 3, 'Teh Botol Pet 350 ml', 10, 3333, 4000, 'default-product.jpg', 1, 1),
(311, '', 2, 3, 'Fruitea 500 ml', 3, 4750, 6000, 'default-product.jpg', 1, 1),
(313, '', 5, 4, 'Blaster Choco Chocolate', 126, 130, 250, 'default-product.jpg', 2, 1),
(314, '', 5, 4, 'Blaster Neopolitan', 118, 130, 250, 'default-product.jpg', 2, 1),
(315, '', 4, 4, 'Nissin Lemonia Lemon Biskuit ', 4, 6200, 7000, 'default-product.jpg', 2, 1),
(316, '', 1, 4, 'Larutan Cap Kaki 3', 17, 3300, 4000, 'default-product.jpg', 2, 1),
(317, '', 4, 4, 'Suki -Suki', 40, 900, 1000, 'default-product.jpg', 2, 1),
(318, '', 6, 1, 'AICE Berry Choco Max Cone 100 ml', 62, 4063, 5000, 'default-product.jpg', 1, 1),
(319, '', 4, 4, 'Roma Slai Olai 2000 (32 gr)', 20, 1600, 2000, 'default-product.jpg', 1, 1),
(320, '', 5, 4, 'Blaster Chocolate', 18, 130, 250, 'default-product.jpg', 1, 1),
(321, '', 5, 4, 'Blaster Neopolitan', 0, 130, 250, 'default-product.jpg', 1, 1),
(322, '', 4, 4, 'Chocolatos Wafer Roll isi 24 pcs', 20, 450, 500, 'default-product.jpg', 1, 1),
(323, '', 4, 4, 'Keju Cake Bolu Keju ', 195, 1750, 2500, 'default-product.jpg', 1, 1),
(324, '', 4, 4, 'Kacang Iyes', 16, 850, 1000, 'default-product.jpg', 1, 1),
(325, '', 12, 4, 'Max Tea Tarik', 13, 1690, 2000, 'default-product.jpg', 1, 1),
(326, '', 12, 4, 'Kapal Api Special Mix', 17, 1180, 2000, 'default-product.jpg', 1, 1),
(327, '', 12, 4, 'Good Day Mochacino', 13, 1130, 2000, 'default-product.jpg', 1, 1),
(328, '', 4, 4, 'Nissin Lemonia Lemon Biscuit', 0, 6200, 7000, 'default-product.jpg', 1, 1),
(329, '', 4, 4, 'Richese Bisvit Selimut ', 0, 900, 1000, 'default-product.jpg', 1, 1),
(330, '', 2, 3, 'Fruitea Kotak 250ml', 2, 2920, 3500, 'default-product.jpg', 1, 1),
(331, '', 2, 3, 'Teh Botol Sosro 450ml', 3, 5120, 6000, 'default-product.jpg', 1, 1),
(332, '', 10, 4, 'Larutan Cap Kaki 3 Botol  200 ml', 0, 3300, 4000, 'default-product.jpg', 1, 1),
(333, '', 2, 3, 'Fruit Tea 230ml', 3, 1771, 2500, 'default-product.jpg', 1, 1),
(335, '', 6, 1, 'AICE Sundae Chocolate Cup 100 ml', 20, 4042, 5000, 'default-product.jpg', 2, 1),
(336, '', 10, 4, 'Minyak Minyakita', 3, 14000, 15000, 'default-product.jpg', 2, 1),
(337, '', 6, 1, 'AICE Vanilla Chocolate Cup 90 ml', 16, 3208, 4000, 'default-product.jpg', 2, 1),
(338, '', 6, 1, 'AICE Mochi Chocolate 100ml', 0, 2313, 3000, 'default-product.jpg', 1, 1),
(339, '', 2, 2, 'Frestea 350ml', 23, 3500, 4500, 'default-product.jpg', 1, 1),
(340, '', 2, 3, 'Fruitea Kotak Apel 250ml', 0, 3333, 4000, 'default-product.jpg', 1, 1),
(341, '', 2, 3, 'Fruitea Apel 230 ml', 41, 1771, 2500, 'default-product.jpg', 1, 1),
(342, '', 2, 4, 'Teh Pucuk Harum', 6, 2271, 3000, 'default-product.jpg', 2, 1),
(343, '', 2, 3, 'Fruit tea Pet Blackcurrant 350 ml', 8, 3333, 4000, 'default-product.jpg', 1, 1),
(344, '', 2, 3, 'Fruit tea Pet Lemon 350 ml', 0, 3333, 4000, 'default-product.jpg', 1, 1),
(345, '', 2, 3, 'Fruit tea Pet Freeze 350 ml', 0, 3333, 4000, 'default-product.jpg', 1, 1),
(346, '', 2, 3, 'Fruitea Blackcurrent 200ml', 16, 2146, 3000, 'default-product.jpg', 1, 1),
(347, '', 2, 3, 'Fruitea Lemon 250ml', 21, 2355, 3000, 'default-product.jpg', 1, 1),
(348, '', 2, 3, 'Fruit tea Apple 250 ml', 15, 2355, 3000, 'default-product.jpg', 1, 1),
(349, '', 2, 3, 'Fruitea Blackcurrent 250ml', 10, 2355, 3000, 'default-product.jpg', 1, 1),
(350, '', 2, 3, 'Fruitea Blackcurrent 318ml', 1, 3375, 4000, 'default-product.jpg', 1, 1),
(351, '', 4, 4, 'Wafello 2000 coklat/keju', 10, 1800, 2000, 'default-product.jpg', 1, 1),
(352, '', 10, 4, 'Terigu Curah Segitiga 1kg', 10, 11000, 13000, 'default-product.jpg', 1, 1),
(353, '', 10, 4, 'Tisu Paseo', 9, 2200, 3000, 'default-product.jpg', 1, 1),
(354, '', 4, 4, 'Garuda kacang kulit', 0, 880, 1000, 'default-product.jpg', 1, 1),
(355, '', 6, 1, 'AICE Chocolate Stick 40g', 10, 1940, 2500, 'default-product.jpg', 2, 1),
(356, '', 4, 4, 'Monde Serena 50 gram', 6, 3700, 5000, 'default-product.jpg', 2, 1),
(357, '', 5, 4, 'Tamarin', 41, 120, 250, 'default-product.jpg', 2, 1),
(358, 'SPW', 4, 4, 'Choki Choki Stick 2000', 24, 1733, 2000, 'default-product.jpg', 2, 1),
(359, 'SPW', 4, 4, 'Gery Malkist Keju ', 0, 6000, 8000, 'default-product.jpg', 2, 1),
(360, 'SPW', 6, 1, 'AICE Manggo Slush 30g', 8, 3208, 4000, 'default-product.jpg', 1, 1),
(361, 'SPW', 6, 1, 'AICE Mango Slush Hi-C Stick 65g', 30, 3017, 4000, 'default-product.jpg', 1, 1);

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
(22, '2022-09-05', 4, 5, 1),
(23, '2022-09-05', 1, 5, 1),
(24, '2022-09-07', 3, 4, 2),
(25, '2022-09-08', 1, 4, 2),
(26, '2022-09-12', 1, 4, 2),
(27, '2022-09-12', 5, 4, 2),
(28, '2022-09-08', 3, 5, 1),
(29, '2022-09-14', 1, 4, 2),
(30, '2022-09-14', 1, 5, 1),
(31, '2022-09-14', 5, 5, 1),
(32, '2022-09-08', 1, 5, 1),
(33, '2022-09-14', 4, 5, 1);

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
(147, 21, 182, 150, 106, 15900),
(148, 21, 184, 150, 170, 25500),
(149, 21, 189, 17, 1710, 29070),
(150, 21, 189, 34, 1700, 57800),
(151, 21, 211, 20, 880, 17600),
(152, 21, 213, 24, 1817, 43608),
(153, 21, 217, 5, 2000, 10000),
(154, 21, 219, 60, 450, 27000),
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
(183, 22, 350, 24, 3375, 81000),
(184, 23, 76, 5, 2500, 12500),
(185, 23, 53, 10, 2675, 26750),
(186, 23, 52, 10, 2525, 25250),
(187, 23, 55, 10, 2525, 25250),
(188, 23, 54, 10, 2363, 23630),
(189, 23, 121, 5, 1800, 9000),
(190, 23, 105, 100, 106, 10600),
(191, 23, 322, 48, 450, 21600),
(192, 23, 48, 100, 120, 12000),
(193, 23, 110, 100, 138, 13800),
(194, 23, 18, 20, 900, 18000),
(195, 23, 88, 24, 813, 19512),
(196, 23, 111, 48, 450, 21600),
(197, 23, 25, 20, 850, 17000),
(198, 23, 113, 48, 450, 21600),
(199, 23, 29, 40, 450, 18000),
(200, 23, 117, 20, 880, 17600),
(201, 23, 324, 20, 850, 17000),
(202, 23, 31, 24, 1667, 40008),
(203, 23, 33, 48, 450, 21600),
(204, 23, 126, 10, 2000, 20000),
(205, 23, 35, 40, 450, 18000),
(206, 23, 35, 40, 450, 18000),
(207, 23, 36, 80, 450, 36000),
(208, 23, 351, 10, 1800, 18000),
(209, 23, 120, 24, 1750, 42000),
(210, 23, 120, 24, 1750, 42000),
(211, 23, 120, 24, 1750, 42000),
(212, 23, 38, 24, 1750, 42000),
(213, 23, 24, 60, 425, 25500),
(214, 23, 39, 20, 1780, 35600),
(215, 23, 41, 20, 900, 18000),
(216, 23, 127, 40, 375, 15000),
(217, 23, 130, 10, 2700, 27000),
(218, 23, 11, 24, 813, 19512),
(219, 23, 2, 240, 292, 70080),
(220, 23, 4, 240, 1520, 364800),
(221, 23, 69, 20, 440, 8800),
(222, 23, 353, 10, 2200, 22000),
(223, 23, 352, 10, 11000, 110000),
(224, 24, 157, 80, 2412, 192960),
(225, 24, 140, 24, 4062, 97488),
(226, 24, 139, 80, 1912, 152960),
(227, 24, 154, 120, 2362, 283440),
(228, 24, 141, 100, 1900, 190000),
(229, 24, 146, 120, 1558, 186960),
(230, 24, 158, 40, 4000, 160000),
(231, 24, 152, 80, 2750, 220000),
(232, 24, 150, 100, 1540, 154000),
(233, 24, 151, 100, 1540, 154000),
(234, 24, 355, 50, 1940, 97000),
(235, 21, 263, 10, 11000, 110000),
(236, 21, 189, 34, 1710, 58140),
(237, 21, 281, 12, 1791, 21492),
(238, 21, 172, 240, 292, 70080),
(239, 21, 136, 360, 958, 344880),
(240, 25, 188, 16, 1800, 28800),
(241, 25, 313, 50, 130, 6500),
(242, 25, 196, 72, 450, 32400),
(243, 25, 185, 100, 120, 12000),
(244, 25, 357, 50, 120, 6000),
(245, 25, 209, 20, 450, 9000),
(246, 25, 222, 60, 1750, 105000),
(247, 25, 223, 48, 1750, 84000),
(248, 25, 228, 40, 450, 18000),
(249, 25, 226, 12, 1792, 21504),
(250, 25, 237, 20, 900, 18000),
(251, 25, 253, 30, 430, 12900),
(252, 26, 188, 30, 1800, 54000),
(253, 26, 230, 100, 813, 81300),
(254, 26, 189, 34, 1710, 58140),
(255, 26, 190, 30, 854, 25620),
(256, 26, 224, 36, 1792, 64512),
(257, 26, 203, 10, 1850, 18500),
(258, 26, 206, 48, 438, 21024),
(260, 26, 208, 48, 875, 42000),
(261, 26, 209, 20, 450, 9000),
(262, 26, 213, 24, 1817, 43608),
(263, 26, 214, 12, 1792, 21504),
(264, 26, 218, 40, 875, 35000),
(265, 26, 356, 10, 3700, 37000),
(266, 26, 222, 30, 1750, 52500),
(267, 26, 229, 24, 1335, 32040),
(268, 26, 226, 24, 1792, 43008),
(269, 26, 268, 20, 1130, 22600),
(270, 26, 267, 10, 1180, 11800),
(271, 26, 289, 40, 560, 22400),
(272, 26, 136, 96, 958, 91968),
(273, 26, 272, 12, 1625, 19500),
(274, 26, 204, 40, 850, 34000),
(275, 26, 358, 24, 1733, 41592),
(276, 27, 164, 36, 3958, 142488),
(277, 27, 170, 36, 3958, 142488),
(278, 27, 138, 36, 3958, 142488),
(279, 27, 169, 24, 2375, 57000),
(280, 27, 163, 24, 2375, 57000),
(281, 27, 165, 24, 2375, 57000),
(282, 27, 168, 24, 3833, 91992),
(283, 27, 167, 24, 5333, 127992),
(284, 28, 92, 50, 1550, 77500),
(285, 28, 101, 80, 2750, 220000),
(286, 28, 91, 50, 1550, 77500),
(287, 28, 93, 120, 2362, 283440),
(288, 28, 97, 80, 1913, 153040),
(289, 28, 90, 60, 1558, 93480),
(290, 28, 294, 40, 2313, 92520),
(291, 28, 291, 40, 2313, 92520),
(292, 28, 104, 48, 4062, 194976),
(293, 28, 102, 24, 4042, 97008),
(294, 28, 100, 40, 4000, 160000),
(295, 28, 361, 30, 3017, 90510),
(296, 29, 188, 25, 1800, 45000),
(297, 29, 214, 12, 1792, 21504),
(298, 29, 199, 24, 1667, 40008),
(299, 29, 208, 24, 875, 21000),
(300, 29, 209, 40, 450, 18000),
(301, 29, 213, 24, 1817, 43608),
(302, 29, 214, 24, 1792, 43008),
(303, 29, 222, 20, 1750, 35000),
(304, 29, 226, 36, 1792, 64512),
(305, 29, 180, 15, 4300, 64500),
(306, 29, 136, 120, 958, 114960),
(307, 32, 121, 5, 1800, 9000);

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
(7, 4, 2, '2022-09-12'),
(8, 11, 6, '2022-09-13'),
(9, 3, 14, '2022-09-14'),
(10, 12, 19, '2022-09-15'),
(11, 11, 8, '2022-09-16'),
(12, 9, 9, '2022-09-19'),
(13, 2, 1, '2022-09-20'),
(14, 5, 4, '2022-09-21'),
(15, 9, 22, '2022-09-22'),
(16, 13, 17, '2022-09-23'),
(17, 7, 13, '2022-09-26'),
(18, 13, 16, '2022-09-27'),
(19, 10, 23, '2022-09-28'),
(20, 5, 5, '2022-09-29'),
(21, 6, 22, '2022-09-30');

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
(23, '2022-09-02', 9, 2),
(24, '2022-09-05', 4, 1),
(25, '2022-09-05', 4, 2),
(26, '2022-09-06', 12, 1),
(27, '2022-09-06', 12, 2),
(28, '2022-09-07', 3, 1),
(29, '2022-09-07', 3, 2),
(30, '2022-09-09', 6, 1),
(31, '2022-09-09', 6, 2),
(32, '2022-09-12', 4, 2),
(33, '2022-09-08', 5, 1),
(34, '2022-09-08', 5, 2),
(35, '2022-09-12', 4, 1),
(36, '2022-09-13', 11, 1),
(37, '2022-09-13', 11, 2),
(38, '2022-12-09', 3, 1);

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
(315, 20, 42, 9, 12006, 18000),
(316, 24, 99, 40, 97000, 120000),
(317, 24, 90, 36, 56088, 72000),
(318, 24, 97, 6, 11478, 15000),
(319, 24, 291, 9, 20817, 27000),
(320, 24, 91, 15, 23250, 30000),
(321, 24, 92, 13, 20150, 26000),
(322, 24, 101, 20, 55000, 70000),
(323, 24, 102, 6, 24252, 30000),
(324, 24, 93, 26, 61412, 78000),
(326, 24, 94, 9, 20817, 27000),
(327, 24, 318, 10, 40630, 50000),
(328, 24, 134, 61, 17141, 30500),
(329, 24, 4, 73, 110960, 146000),
(330, 24, 7, 12, 9504, 12000),
(331, 24, 9, 8, 6360, 12000),
(332, 24, 10, 3, 2376, 3000),
(333, 24, 11, 4, 3252, 4000),
(334, 24, 130, 5, 13500, 17500),
(335, 24, 105, 28, 2968, 7000),
(336, 24, 48, 30, 3600, 7500),
(337, 24, 110, 6, 828, 1500),
(338, 24, 121, 5, 9000, 10000),
(339, 24, 18, 8, 7200, 8000),
(340, 24, 22, 12, 9540, 12000),
(341, 24, 87, 10, 9000, 15000),
(342, 24, 24, 7, 2975, 3500),
(343, 24, 113, 1, 450, 500),
(344, 24, 113, 9, 4050, 4500),
(345, 24, 29, 4, 1800, 2000),
(346, 24, 31, 5, 8335, 10000),
(347, 24, 33, 25, 11250, 12500),
(348, 24, 127, 9, 3375, 4500),
(349, 24, 36, 25, 11250, 12500),
(350, 24, 120, 8, 14000, 16000),
(351, 24, 38, 8, 14000, 16000),
(352, 24, 39, 6, 10680, 12000),
(353, 24, 43, 12, 9756, 12000),
(354, 24, 46, 7, 6300, 7000),
(355, 24, 55, 1, 2525, 3000),
(356, 24, 57, 5, 7290, 10000),
(357, 24, 59, 3, 2700, 4500),
(358, 24, 65, 4, 880, 2000),
(359, 24, 66, 2, 450, 1000),
(360, 24, 70, 1, 430, 500),
(361, 24, 68, 1, 430, 500),
(362, 24, 73, 2, 1750, 2000),
(363, 24, 302, 1, 3333, 4000),
(364, 24, 304, 1, 1354, 2500),
(365, 24, 308, 5, 16875, 20000),
(367, 24, 340, 19, 63327, 76000),
(368, 24, 348, 9, 21195, 27000),
(369, 24, 333, 3, 5313, 7500),
(370, 24, 85, 13, 51454, 65000),
(371, 24, 83, 16, 38000, 48000),
(372, 24, 82, 24, 57000, 72000),
(373, 24, 80, 14, 55412, 70000),
(374, 24, 339, 58, 203000, 261000),
(375, 24, 86, 2, 10666, 14000),
(376, 24, 78, 15, 57495, 67500),
(377, 24, 81, 20, 47500, 60000),
(378, 24, 79, 11, 43538, 49500),
(379, 25, 139, 7, 13384, 17500),
(380, 25, 140, 14, 56868, 70000),
(381, 25, 144, 64, 155200, 192000),
(382, 25, 145, 2, 3880, 5000),
(383, 25, 146, 46, 71668, 92000),
(384, 25, 147, 5, 9560, 12500),
(385, 25, 148, 18, 41634, 54000),
(386, 25, 149, 6, 18102, 24000),
(387, 25, 152, 19, 52250, 66500),
(388, 25, 154, 27, 63774, 81000),
(389, 25, 337, 2, 6416, 8000),
(391, 25, 160, 6, 24372, 30000),
(392, 25, 159, 10, 40620, 50000),
(393, 25, 164, 3, 11874, 15000),
(394, 25, 165, 11, 26125, 33000),
(395, 25, 163, 4, 9500, 12000),
(396, 25, 138, 3, 11874, 15000),
(397, 25, 166, 20, 70000, 90000),
(398, 25, 167, 4, 21332, 28000),
(399, 25, 169, 17, 40375, 51000),
(400, 25, 170, 1, 3958, 4500),
(401, 25, 136, 48, 45984, 96000),
(402, 25, 316, 1, 3300, 4000),
(403, 25, 172, 27, 7587, 13500),
(404, 25, 136, 42, 40236, 84000),
(405, 25, 176, 3, 2376, 3000),
(406, 25, 177, 6, 4878, 6000),
(407, 25, 182, 16, 1664, 4000),
(408, 25, 184, 24, 4080, 6000),
(409, 25, 188, 6, 10800, 12000),
(410, 25, 190, 7, 6230, 7000),
(411, 25, 196, 3, 1350, 1500),
(412, 25, 208, 12, 10500, 12000),
(413, 25, 209, 12, 5400, 6000),
(414, 25, 213, 5, 9085, 10000),
(415, 25, 214, 3, 5250, 6000),
(416, 25, 268, 1, 1130, 2000),
(417, 27, 135, 69, 66102, 138000),
(418, 27, 171, 18, 5670, 9000),
(419, 27, 316, 1, 3300, 4000),
(420, 27, 177, 3, 2439, 3000),
(421, 27, 281, 13, 23283, 26000),
(422, 27, 314, 24, 3120, 6000),
(423, 27, 184, 20, 3400, 5000),
(424, 27, 188, 11, 19800, 22000),
(425, 27, 189, 16, 27360, 32000),
(426, 27, 196, 6, 2700, 3000),
(427, 27, 201, 1, 850, 1000),
(428, 27, 202, 2, 850, 1000),
(429, 27, 208, 1, 875, 1000),
(430, 27, 209, 10, 4500, 5000),
(431, 27, 210, 4, 3600, 4000),
(432, 27, 213, 4, 7268, 8000),
(433, 27, 214, 4, 7000, 8000),
(434, 27, 215, 11, 4950, 5500),
(435, 27, 216, 17, 7582, 8500),
(436, 27, 217, 1, 2000, 2500),
(437, 27, 219, 3, 1350, 1500),
(438, 27, 221, 2, 900, 1000),
(439, 27, 224, 2, 3500, 4000),
(440, 27, 229, 1, 1335, 2000),
(441, 27, 230, 24, 19512, 24000),
(442, 27, 234, 5, 4375, 5000),
(443, 27, 236, 1, 813, 1000),
(444, 27, 243, 1, 800, 1000),
(445, 27, 268, 1, 1130, 2000),
(446, 26, 295, 3, 4500, 7500),
(447, 26, 344, 12, 39996, 48000),
(448, 26, 345, 12, 39996, 48000),
(449, 26, 343, 4, 13332, 16000),
(450, 26, 302, 5, 16665, 20000),
(451, 26, 305, 10, 11880, 20000),
(452, 26, 85, 5, 19790, 25000),
(453, 26, 83, 10, 23750, 30000),
(454, 26, 82, 14, 33250, 42000),
(455, 26, 80, 2, 7916, 10000),
(456, 26, 339, 14, 49000, 63000),
(457, 26, 86, 3, 15999, 21000),
(458, 26, 78, 1, 3833, 4500),
(459, 26, 81, 10, 23750, 30000),
(460, 26, 79, 4, 15832, 18000),
(461, 26, 92, 11, 17050, 22000),
(462, 26, 90, 20, 31160, 40000),
(463, 26, 93, 48, 113376, 144000),
(464, 26, 97, 22, 42086, 55000),
(465, 26, 294, 5, 11565, 15000),
(466, 26, 91, 29, 44950, 58000),
(467, 26, 101, 11, 30250, 38500),
(468, 26, 102, 7, 28294, 35000),
(469, 26, 291, 14, 32382, 42000),
(470, 26, 4, 56, 85120, 112000),
(471, 26, 117, 8, 7040, 8000),
(472, 26, 113, 12, 5400, 6000),
(473, 26, 11, 1, 813, 1000),
(474, 26, 113, 8, 3600, 4000),
(475, 26, 66, 2, 450, 1000),
(476, 26, 33, 5, 2250, 2500),
(477, 26, 71, 2, 4400, 6000),
(478, 26, 57, 5, 7290, 10000),
(479, 26, 110, 11, 1518, 2750),
(480, 26, 67, 1, 667, 1000),
(481, 26, 9, 2, 1590, 3000),
(482, 27, 146, 5, 7790, 10000),
(483, 27, 144, 50, 121250, 150000),
(484, 27, 137, 19, 43947, 57000),
(485, 27, 149, 27, 81459, 108000),
(486, 27, 145, 4, 7760, 10000),
(487, 27, 160, 3, 12186, 15000),
(488, 27, 159, 7, 28434, 35000),
(489, 27, 337, 2, 6416, 8000),
(490, 27, 140, 25, 101550, 125000),
(491, 27, 154, 30, 70860, 90000),
(492, 27, 163, 8, 19000, 24000),
(493, 27, 165, 5, 11875, 15000),
(494, 27, 169, 4, 9500, 12000),
(495, 27, 166, 6, 21000, 27000),
(496, 27, 167, 3, 15999, 21000),
(497, 27, 138, 5, 19790, 25000),
(498, 27, 170, 4, 15832, 18000),
(499, 27, 164, 1, 3958, 5000),
(500, 27, 168, 6, 22998, 27000),
(501, 25, 314, 8, 1040, 2000),
(502, 30, 79, 3, 11874, 13500),
(503, 30, 80, 2, 7916, 10000),
(504, 30, 82, 4, 9500, 12000),
(505, 30, 86, 2, 10666, 14000),
(506, 30, 339, 6, 21000, 27000),
(507, 30, 90, 12, 18696, 24000),
(508, 30, 92, 1, 1550, 2000),
(509, 30, 93, 24, 56688, 72000),
(510, 30, 97, 2, 3826, 5000),
(511, 30, 101, 4, 11000, 14000),
(512, 30, 294, 3, 6939, 9000),
(513, 31, 135, 11, 10538, 22000),
(514, 31, 171, 6, 1890, 3000),
(515, 31, 184, 7, 1190, 1750),
(516, 31, 185, 6, 720, 1500),
(517, 31, 189, 11, 18810, 22000),
(518, 31, 199, 2, 3134, 4000),
(519, 31, 213, 1, 1817, 2000),
(520, 31, 216, 2, 892, 1000),
(521, 31, 219, 6, 2700, 3000),
(522, 31, 220, 8, 4000, 8000),
(523, 31, 221, 2, 900, 1000),
(524, 31, 222, 5, 8750, 10000),
(525, 31, 223, 2, 3500, 4000),
(526, 31, 224, 4, 7000, 8000),
(527, 31, 226, 3, 5376, 6000),
(528, 31, 227, 1, 900, 1000),
(529, 31, 237, 1, 900, 1000),
(530, 31, 246, 5, 4250, 5000),
(531, 31, 260, 1, 1500, 2000),
(532, 31, 263, 1, 11000, 13000),
(533, 31, 336, 1, 14000, 15000),
(534, 31, 139, 3, 5736, 7500),
(535, 31, 150, 6, 9240, 12000),
(536, 31, 152, 10, 27500, 35000),
(537, 31, 154, 16, 37792, 48000),
(538, 31, 158, 1, 4000, 5000),
(539, 31, 337, 2, 6416, 8000),
(540, 31, 355, 1, 1940, 2500),
(541, 31, 163, 6, 14250, 18000),
(542, 31, 165, 1, 2375, 3000),
(543, 31, 166, 4, 14000, 18000),
(544, 31, 167, 1, 5333, 7000),
(545, 31, 168, 1, 3833, 4500),
(546, 31, 170, 3, 11874, 13500),
(547, 30, 4, 8, 12160, 16000),
(548, 30, 8, 2, 1700, 2000),
(549, 30, 9, 1, 795, 1500),
(550, 30, 24, 7, 2975, 3500),
(551, 30, 29, 1, 450, 500),
(552, 30, 33, 21, 9450, 10500),
(553, 30, 35, 10, 4500, 5000),
(554, 30, 36, 17, 7650, 8500),
(555, 30, 38, 7, 12250, 14000),
(556, 30, 39, 9, 16020, 18000),
(557, 30, 41, 6, 5400, 6000),
(558, 30, 48, 23, 2760, 5750),
(559, 30, 52, 3, 7575, 9000),
(560, 30, 53, 1, 2675, 3000),
(561, 30, 54, 2, 4726, 6000),
(562, 30, 110, 8, 1104, 2000),
(563, 30, 126, 5, 10000, 12500),
(564, 30, 322, 6, 2700, 3000),
(566, 30, 26, 17, 7480, 8500),
(567, 30, 112, 8, 10032, 16000),
(568, 30, 1, 21, 6615, 10500),
(569, 30, 100, 2, 8000, 10000),
(570, 30, 104, 6, 24372, 24000),
(571, 31, 269, 1, 1140, 2000),
(572, 30, 295, 2, 3000, 5000),
(573, 30, 303, 2, 6666, 8000),
(574, 30, 310, 8, 26664, 32000),
(575, 30, 333, 4, 7084, 10000),
(576, 30, 309, 1, 3375, 4000),
(577, 28, 97, 59, 112867, 147500),
(578, 28, 94, 19, 43947, 57000),
(579, 28, 92, 3, 4650, 6000),
(580, 28, 101, 48, 132000, 168000),
(581, 28, 102, 10, 40420, 50000),
(582, 28, 93, 7, 16534, 21000),
(583, 28, 338, 18, 41634, 54000),
(584, 28, 85, 7, 27706, 35000),
(585, 28, 82, 19, 45125, 57000),
(586, 28, 80, 11, 43538, 55000),
(587, 28, 339, 17, 59500, 76500),
(588, 28, 86, 8, 42664, 56000),
(589, 28, 78, 5, 19165, 22500),
(590, 28, 81, 24, 57000, 72000),
(591, 28, 79, 8, 31664, 36000),
(592, 28, 295, 6, 9000, 15000),
(593, 28, 297, 8, 17168, 24000),
(594, 28, 299, 11, 36663, 44000),
(595, 28, 301, 4, 16668, 20000),
(596, 28, 302, 13, 43329, 52000),
(597, 28, 303, 2, 6666, 8000),
(598, 28, 304, 32, 43328, 80000),
(600, 28, 310, 8, 26664, 32000),
(601, 28, 347, 3, 7065, 9000),
(602, 28, 333, 3, 5313, 7500),
(603, 28, 134, 50, 14050, 25000),
(604, 28, 4, 72, 109440, 144000),
(605, 28, 7, 8, 6336, 8000),
(606, 28, 105, 3, 318, 750),
(607, 28, 48, 25, 3000, 6250),
(608, 28, 110, 2, 276, 500),
(609, 28, 18, 1, 900, 1000),
(610, 28, 322, 22, 9900, 11000),
(611, 28, 117, 6, 5280, 6000),
(612, 28, 24, 4, 1700, 2000),
(613, 28, 25, 4, 3400, 4000),
(614, 28, 113, 13, 5850, 6500),
(615, 28, 29, 15, 6750, 7500),
(616, 28, 31, 9, 15003, 18000),
(617, 28, 33, 14, 6300, 7000),
(618, 28, 126, 3, 6000, 7500),
(619, 28, 35, 13, 5850, 6500),
(620, 28, 127, 1, 375, 500),
(621, 28, 36, 13, 5850, 6500),
(622, 28, 120, 13, 22750, 26000),
(623, 28, 39, 6, 10680, 12000),
(624, 28, 41, 17, 15300, 17000),
(625, 28, 88, 12, 9756, 12000),
(626, 28, 69, 3, 1320, 1500),
(627, 28, 324, 4, 3400, 4000),
(628, 29, 139, 8, 15296, 20000),
(629, 29, 140, 30, 121860, 150000),
(630, 29, 141, 26, 49400, 65000),
(631, 29, 144, 18, 43650, 54000),
(632, 29, 146, 28, 43624, 56000),
(633, 29, 148, 10, 23130, 30000),
(634, 29, 149, 6, 18102, 24000),
(635, 29, 150, 22, 33880, 44000),
(636, 29, 151, 11, 16940, 22000),
(637, 29, 154, 21, 49602, 63000),
(638, 29, 337, 4, 12832, 16000),
(639, 29, 157, 22, 53064, 66000),
(640, 29, 158, 5, 20000, 25000),
(641, 29, 159, 3, 12186, 15000),
(642, 29, 160, 8, 32496, 40000),
(643, 29, 355, 6, 11640, 15000),
(644, 29, 164, 1, 3958, 5000),
(645, 29, 165, 19, 45125, 57000),
(646, 29, 163, 7, 16625, 21000),
(647, 29, 138, 5, 19790, 25000),
(648, 29, 166, 9, 31500, 40500),
(649, 29, 167, 9, 47997, 63000),
(650, 29, 168, 1, 3833, 4500),
(651, 29, 170, 2, 7916, 9000),
(652, 29, 172, 23, 6716, 11500),
(653, 29, 135, 54, 51732, 108000),
(654, 29, 176, 1, 792, 1000),
(655, 29, 177, 6, 4878, 6000),
(656, 29, 281, 15, 26865, 30000),
(657, 29, 184, 22, 3740, 5500),
(658, 29, 185, 49, 5880, 12250),
(659, 29, 186, 7, 700, 1750),
(660, 29, 189, 19, 32490, 38000),
(661, 29, 191, 10, 9000, 10000),
(662, 29, 196, 15, 6750, 7500),
(663, 29, 199, 5, 7835, 10000),
(664, 29, 201, 1, 850, 1000),
(665, 29, 206, 4, 1752, 2000),
(666, 29, 208, 8, 7000, 8000),
(667, 29, 209, 12, 5400, 6000),
(668, 29, 213, 18, 32706, 36000),
(669, 29, 215, 14, 6300, 7000),
(670, 29, 216, 7, 3122, 3500),
(671, 29, 217, 2, 4000, 5000),
(672, 29, 219, 14, 6300, 7000),
(673, 29, 220, 11, 5500, 11000),
(674, 29, 221, 16, 7200, 8000),
(675, 29, 222, 10, 17500, 20000),
(676, 29, 224, 10, 17500, 20000),
(677, 29, 226, 15, 26880, 30000),
(678, 29, 229, 1, 1335, 2000),
(679, 29, 230, 26, 21138, 26000),
(680, 29, 236, 1, 813, 1000),
(681, 29, 245, 1, 2400, 3000),
(682, 29, 253, 1, 430, 1000),
(683, 29, 260, 2, 3000, 4000),
(684, 29, 336, 1, 14000, 15000),
(685, 29, 264, 3, 5313, 6000),
(686, 32, 139, 18, 34416, 45000),
(687, 32, 146, 23, 35834, 46000),
(688, 32, 149, 2, 6034, 8000),
(689, 32, 150, 35, 53900, 70000),
(690, 32, 151, 18, 27720, 36000),
(691, 32, 152, 19, 52250, 66500),
(692, 32, 154, 21, 49602, 63000),
(693, 32, 337, 6, 19248, 24000),
(694, 32, 158, 10, 40000, 50000),
(695, 32, 355, 3, 5820, 7500),
(696, 34, 135, 54, 51732, 108000),
(697, 34, 171, 17, 5355, 8500),
(698, 34, 176, 26, 20592, 26000),
(699, 34, 177, 2, 1626, 2000),
(700, 34, 182, 47, 4982, 11750),
(701, 34, 184, 94, 15980, 23500),
(702, 34, 188, 16, 28800, 40000),
(703, 34, 189, 20, 34200, 40000),
(704, 34, 191, 3, 2700, 3000),
(705, 34, 199, 1, 1567, 2000),
(706, 34, 202, 26, 11050, 13000),
(707, 34, 207, 1, 1583, 2000),
(708, 34, 210, 3, 2700, 3000),
(709, 34, 213, 16, 29072, 32000),
(710, 34, 214, 4, 7168, 8000),
(711, 34, 216, 10, 4460, 5000),
(712, 34, 217, 2, 4000, 5000),
(713, 34, 219, 20, 9000, 10000),
(714, 34, 221, 27, 12150, 13500),
(715, 34, 222, 11, 19250, 22000),
(716, 34, 224, 8, 14336, 16000),
(717, 34, 225, 6, 5580, 6000),
(718, 34, 226, 12, 21504, 24000),
(719, 34, 227, 6, 5400, 6000),
(720, 34, 229, 20, 26700, 40000),
(721, 34, 230, 50, 40650, 50000),
(722, 34, 231, 1, 900, 1000),
(723, 34, 233, 4, 1600, 2000),
(724, 34, 246, 3, 2550, 3000),
(725, 34, 260, 1, 1500, 2000),
(726, 34, 267, 2, 2360, 4000),
(727, 34, 271, 3, 5313, 6000),
(728, 34, 243, 5, 4000, 5000),
(729, 34, 313, 12, 1560, 3000),
(730, 34, 316, 1, 3300, 4000),
(731, 34, 356, 4, 14800, 20000),
(732, 33, 90, 21, 32718, 42000),
(733, 33, 91, 24, 37200, 48000),
(734, 33, 92, 8, 12400, 16000),
(735, 33, 97, 16, 30608, 40000),
(736, 33, 100, 13, 52000, 65000),
(737, 33, 101, 20, 55000, 70000),
(738, 33, 102, 7, 28294, 35000),
(739, 33, 104, 37, 150294, 148000),
(740, 33, 291, 13, 30069, 39000),
(741, 33, 294, 8, 18504, 24000),
(742, 33, 6, 12, 18000, 24000),
(743, 33, 7, 3, 2376, 3000),
(744, 33, 11, 3, 2439, 3000),
(745, 33, 18, 9, 8100, 9000),
(746, 33, 24, 22, 9350, 11000),
(747, 33, 25, 1, 850, 1000),
(748, 33, 29, 14, 6300, 7000),
(749, 33, 31, 6, 10002, 12000),
(750, 33, 33, 4, 1800, 2000),
(751, 33, 35, 4, 1800, 2000),
(752, 33, 36, 11, 4950, 5500),
(753, 33, 38, 3, 5250, 7500),
(754, 33, 39, 2, 3560, 4000),
(755, 33, 41, 13, 11700, 13000),
(756, 33, 48, 33, 3960, 8250),
(757, 33, 55, 1, 2525, 3000),
(758, 33, 57, 5, 7290, 10000),
(759, 33, 59, 1, 900, 1500),
(760, 33, 60, 1, 2000, 2500),
(761, 33, 69, 6, 2640, 3000),
(762, 33, 70, 1, 430, 500),
(763, 33, 73, 1, 875, 1000),
(764, 33, 110, 32, 4416, 8000),
(765, 33, 111, 8, 3600, 4000),
(766, 33, 112, 2, 2508, 4000),
(767, 33, 113, 18, 8100, 9000),
(768, 33, 120, 3, 5250, 6000),
(769, 33, 121, 5, 9000, 12500),
(770, 33, 126, 2, 4000, 5000),
(771, 33, 127, 3, 1125, 1500),
(772, 33, 130, 1, 2700, 3500),
(773, 33, 134, 133, 37373, 66500),
(774, 33, 320, 2, 260, 500),
(775, 33, 322, 21, 9450, 10500),
(776, 33, 325, 1, 1690, 2000),
(777, 33, 353, 1, 2200, 3000),
(778, 33, 295, 31, 46500, 77500),
(779, 33, 296, 24, 49992, 72000),
(780, 33, 297, 35, 75110, 105000),
(781, 33, 298, 45, 118125, 157500),
(782, 33, 300, 24, 51504, 72000),
(783, 33, 301, 26, 108342, 130000),
(784, 33, 302, 17, 56661, 68000),
(785, 33, 303, 21, 69993, 84000),
(786, 33, 308, 24, 81000, 96000),
(787, 33, 309, 23, 77625, 92000),
(788, 33, 310, 33, 109989, 132000),
(789, 33, 330, 14, 40880, 49000),
(790, 33, 331, 12, 61440, 72000),
(791, 33, 333, 5, 8855, 12500),
(792, 33, 340, 18, 59994, 72000),
(793, 33, 341, 5, 8855, 12500),
(794, 33, 346, 8, 17168, 24000),
(795, 33, 347, 31, 73005, 93000),
(796, 33, 349, 14, 32970, 42000),
(797, 33, 350, 23, 77625, 92000),
(798, 34, 138, 6, 23748, 30000),
(799, 34, 164, 5, 19790, 25000),
(800, 34, 166, 24, 84000, 108000),
(801, 34, 167, 4, 21332, 28000),
(802, 34, 168, 5, 19165, 22500),
(803, 34, 169, 13, 30875, 39000),
(804, 34, 170, 12, 47496, 54000),
(805, 34, 139, 16, 30592, 40000),
(806, 34, 141, 23, 43700, 57500),
(807, 34, 146, 30, 46740, 60000),
(808, 34, 149, 3, 9051, 12000),
(809, 34, 150, 26, 40040, 52000),
(810, 34, 151, 15, 23100, 30000),
(811, 34, 337, 8, 25664, 32000),
(812, 34, 355, 12, 23280, 30000),
(813, 36, 92, 21, 32550, 42000),
(814, 36, 93, 36, 85032, 108000),
(815, 36, 97, 40, 76520, 100000),
(816, 36, 100, 15, 60000, 75000),
(817, 36, 101, 33, 90750, 115500),
(818, 36, 102, 7, 28294, 35000),
(819, 36, 291, 11, 25443, 33000),
(820, 36, 294, 9, 20817, 27000),
(821, 36, 360, 12, 38496, 48000),
(822, 36, 295, 4, 6000, 10000),
(823, 36, 296, 4, 8332, 12000),
(824, 36, 297, 6, 12876, 18000),
(825, 36, 300, 2, 4292, 6000),
(826, 36, 301, 1, 4167, 5000),
(827, 36, 303, 1, 3333, 4000),
(828, 36, 309, 4, 13500, 16000),
(829, 36, 310, 4, 13332, 16000),
(830, 36, 330, 10, 29200, 35000),
(831, 36, 331, 4, 20480, 24000),
(832, 36, 298, 4, 10500, 14000),
(833, 36, 78, 9, 34497, 40500),
(834, 36, 79, 8, 31664, 36000),
(835, 36, 80, 16, 63328, 80000),
(836, 36, 81, 3, 7125, 9000),
(837, 36, 82, 11, 26125, 33000),
(838, 36, 83, 11, 26125, 33000),
(839, 36, 85, 4, 15832, 20000),
(840, 36, 86, 7, 37331, 49000),
(841, 36, 339, 13, 45500, 58500),
(842, 36, 1, 48, 15120, 24000),
(843, 36, 6, 57, 85500, 114000),
(844, 36, 7, 4, 3168, 4000),
(845, 36, 9, 1, 795, 1500),
(846, 36, 10, 3, 2376, 3000),
(847, 36, 11, 1, 813, 1000),
(848, 36, 24, 19, 8075, 9500),
(849, 36, 29, 12, 5400, 6000),
(850, 36, 31, 19, 31673, 38000),
(851, 36, 33, 2, 900, 1000),
(852, 36, 36, 5, 2250, 2500),
(853, 36, 38, 3, 5250, 7500),
(854, 36, 60, 1, 2000, 2500),
(855, 36, 110, 8, 1104, 2000),
(856, 36, 111, 20, 9000, 10000),
(857, 36, 113, 25, 11250, 12500),
(858, 36, 126, 3, 6000, 7500),
(859, 36, 129, 1, 821, 1000),
(860, 36, 130, 3, 8100, 10500),
(861, 36, 320, 16, 2080, 4000),
(862, 36, 327, 1, 1130, 2000),
(863, 36, 25, 2, 1700, 2000),
(864, 37, 139, 33, 63096, 82500),
(865, 37, 146, 35, 54530, 70000),
(866, 37, 150, 31, 47740, 62000),
(867, 37, 151, 19, 29260, 38000),
(868, 37, 152, 37, 101750, 129500),
(869, 37, 158, 8, 32000, 40000),
(870, 37, 337, 8, 25664, 32000),
(871, 37, 355, 18, 34920, 45000),
(872, 37, 138, 1, 3958, 5000),
(873, 37, 163, 1, 2375, 3000),
(874, 37, 164, 3, 11874, 15000),
(875, 37, 165, 6, 14250, 18000),
(876, 37, 166, 23, 80500, 103500),
(877, 37, 167, 10, 53330, 70000),
(878, 37, 168, 10, 38330, 45000),
(879, 37, 170, 7, 27706, 31500),
(880, 37, 136, 45, 43110, 90000),
(881, 37, 172, 18, 5256, 9000),
(882, 37, 176, 1, 792, 1000),
(883, 37, 184, 16, 2720, 4000),
(884, 37, 185, 10, 1200, 2500),
(885, 37, 188, 11, 19800, 27500),
(886, 37, 189, 1, 1710, 2000),
(887, 37, 196, 2, 900, 1000),
(888, 37, 199, 1, 1567, 2000),
(889, 37, 202, 7, 2975, 3500),
(890, 37, 213, 1, 1817, 2000),
(891, 37, 219, 1, 450, 500),
(892, 37, 220, 5, 2500, 5000),
(893, 37, 221, 9, 4050, 4500),
(894, 37, 222, 5, 8750, 10000),
(895, 37, 223, 6, 10500, 12000),
(896, 37, 224, 8, 14336, 16000),
(897, 37, 230, 21, 17073, 21000),
(898, 37, 237, 11, 9900, 11000),
(899, 37, 246, 2, 1700, 2000),
(900, 37, 271, 1, 1771, 2000),
(901, 37, 281, 7, 12537, 14000),
(902, 37, 243, 5, 4000, 5000),
(903, 37, 313, 12, 1560, 3000),
(904, 37, 357, 9, 1080, 2250);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_selling`
--

CREATE TABLE `tbl_student_selling` (
  `id_student_selling` int(11) NOT NULL,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `id_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student_selling`
--

INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_lab`, `id_class`) VALUES
(3, '2022-09-07', 3, 1, 14),
(4, '2022-09-09', 6, 1, 22),
(5, '2022-09-09', 6, 2, 22),
(6, '2022-09-08', 5, 1, 5),
(7, '2022-09-08', 5, 2, 5),
(8, '2022-09-12', 4, 1, 2),
(9, '2022-09-12', 4, 2, 2),
(10, '2022-09-13', 11, 1, 6),
(11, '2022-09-13', 11, 2, 6),
(12, '2022-12-09', 3, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_selling_detail`
--

CREATE TABLE `tbl_student_selling_detail` (
  `id_student_selling_detail` int(11) NOT NULL,
  `id_student_selling` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `product` varchar(125) NOT NULL,
  `basic_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `qty_last` int(11) NOT NULL,
  `qty_selling` int(11) NOT NULL,
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student_selling_detail`
--

INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES
(6, 3, 14, 'Bala Bala', 442, 1000, 575, 0, 575, 254150, 575000),
(7, 5, 22, 'Bala Bala', 800, 1000, 66, 0, 66, 52800, 66000),
(8, 5, 22, 'Yoghurt', 900, 1000, 45, 4, 41, 36900, 41000),
(9, 5, 22, 'Roti Goreng', 1800, 2500, 10, 9, 1, 1800, 2500),
(10, 5, 22, 'Makaroni', 2500, 3000, 14, 6, 8, 20000, 24000),
(11, 5, 22, 'Kue Soes', 1200, 1500, 25, 4, 21, 25200, 31500),
(12, 5, 22, 'Pie Buah', 1600, 2000, 25, 7, 18, 28800, 36000),
(13, 4, 22, 'Bala Bala', 800, 1000, 83, 0, 83, 66400, 83000),
(14, 4, 22, 'Yoghurt', 900, 1000, 60, 0, 60, 54000, 60000),
(15, 4, 22, 'Roti Goreng', 1800, 2500, 12, 10, 2, 3600, 5000),
(16, 4, 22, 'Makaroni', 2500, 3000, 12, 0, 12, 30000, 36000),
(17, 4, 22, 'Kue Soes', 1200, 1500, 25, 5, 20, 24000, 30000),
(18, 4, 22, 'Pie Buah', 1600, 2000, 25, 2, 23, 36800, 46000),
(19, 12, 14, 'Bala-bala + Tahu Pedas', 800, 1000, 575, 0, 575, 460000, 575000);

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
(7, 'Franchisor');

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
  `is_active` int(1) NOT NULL,
  `order_submenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_submenu`
--

INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES
(1, 1, 'Menu Management', 'admin/menu', 'ni ni-bullet-list-67 text-primary', 1, 1),
(2, 1, 'Access Role Menu', 'admin/role', 'ni ni-ungroup text-success', 1, 2),
(3, 17, 'Data Web', 'data/data_web', 'ni ni-world-2 text-warning', 1, 3),
(4, 17, 'Lab SPW', 'data/lab', 'ni ni-atom text-info', 1, 4),
(5, 2, 'Data Kategori', 'produk/category', 'ni ni-bullet-list-67 text-info', 1, 7),
(6, 2, 'Data Produk', 'produk', 'ni ni-app text-warning', 1, 8),
(7, 3, 'Data Kategori', 'peralatan/catagory', 'ni ni-bullet-list-67 text-info', 0, 0),
(8, 3, 'Data Peralatan', 'peralatan', 'ni ni-settings text-success', 1, 6),
(9, 2, 'Data Pembelian', 'produk/index_purchase', 'ni ni-cart text-success', 1, 9),
(10, 5, 'Data Penjualan SPW', 'penjualan', 'ni ni-cart text-primary', 1, 11),
(11, 6, 'Stok Produk', 'stok', 'ni ni-box-2 text-success', 1, 15),
(12, 7, 'Daftar Harga', 'daftar', 'ni ni-shop text-primary', 1, 16),
(13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1, 17),
(14, 16, 'Profile', 'pengguna/profile', 'ni ni-credit-card text-primary', 1, 18),
(15, 2, 'Data Supplier', 'produk/supplier', 'ni ni-single-02 text-primary', 1, 10),
(16, 5, 'Data Penjualan Titipan', 'penjualan/index_franchise', 'ni ni-cart text-success', 1, 12),
(17, 17, 'Jadwal SPW', 'data/schedule', 'ni ni-calendar-grid-58 text-primary', 1, 5),
(18, 5, 'Data Franchisor', 'penjualan/franchisor', 'ni ni-single-02 text-danger', 1, 14),
(19, 5, 'Data Penjualan Siswa', 'penjualan/index_student_selling', 'ni ni-cart text-info', 1, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id_class`);

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
-- Indexes for table `tbl_student_selling`
--
ALTER TABLE `tbl_student_selling`
  ADD PRIMARY KEY (`id_student_selling`);

--
-- Indexes for table `tbl_student_selling_detail`
--
ALTER TABLE `tbl_student_selling_detail`
  ADD PRIMARY KEY (`id_student_selling_detail`);

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
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id_franchise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_franchise_detail`
--
ALTER TABLE `tbl_franchise_detail`
  MODIFY `id_franchise_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `tbl_franchisor`
--
ALTER TABLE `tbl_franchisor`
  MODIFY `id_franchisor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

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
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_schedule_class`
--
ALTER TABLE `tbl_schedule_class`
  MODIFY `id_schedule_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_selling`
--
ALTER TABLE `tbl_selling`
  MODIFY `id_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_selling_detail`
--
ALTER TABLE `tbl_selling_detail`
  MODIFY `id_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT for table `tbl_student_selling`
--
ALTER TABLE `tbl_student_selling`
  MODIFY `id_student_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_student_selling_detail`
--
ALTER TABLE `tbl_student_selling_detail`
  MODIFY `id_student_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
