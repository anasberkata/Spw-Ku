-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2023 at 05:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkdaku_spw`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_big`
--

CREATE TABLE `tbl_cash_big` (
  `id_cash_big` int(11) NOT NULL,
  `output_type` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `date_payment` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_petty`
--

CREATE TABLE `tbl_cash_petty` (
  `id_cash_petty` int(11) NOT NULL,
  `output_type` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `date_payment` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id_class` int(11) NOT NULL,
  `class` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `lab` varchar(128) NOT NULL,
  `product_in_charge` int(11) NOT NULL,
  `equipment_in_charge` varchar(255) NOT NULL,
  `photo_lab` varchar(255) NOT NULL,
  `icon_color` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_data_lab`
--

INSERT INTO `tbl_data_lab` (`id_lab`, `lab`, `product_in_charge`, `equipment_in_charge`, `photo_lab`, `icon_color`) VALUES
(1, 'Lab SPW 1', 5, 'Moch Angga Kusumah, S.Pd', 'foto-lab-1.jpg', 'info'),
(2, 'Lab SPW 2', 4, 'Rony Noor Sa\'roni, ST', 'foto-lab-2.jpg', 'warning');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_data_web`
--

INSERT INTO `tbl_data_web` (`id_data_web`, `title_web`, `about_spw`, `vision`, `mission`) VALUES
(1, 'SPW SMK NEGERI 2 CILAKU', 'Program SEKOLAH PENCETAK WIRASAHA (SPW-KU), merupakan salah satu pilar yang mendukung kegiatan kewirausahaan di SMK N 2 Cilaku Cianjur. Program ini merupakan integrasi dari mata pelajaran Produk Kreatif Kewirausahaan dan mata pelajaran produktif.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `product` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `qty_shop` int(11) NOT NULL,
  `basic_price` int(100) NOT NULL,
  `selling_price` int(100) NOT NULL,
  `image` varchar(258) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `id_owner`, `product`, `qty`, `qty_shop`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES
(1, '', 1, 4, 0, 'Cibodas Cup', -4, 0, 315, 500, 'default-product.jpg', 1, 1),
(2, '8997228440010', 1, 4, 0, 'La Vida Cup', 1298, 0, 292, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-003', 1, 4, 0, 'Hexua Cup', 23, 0, 281, 500, 'default-product3.jpg', 1, 1),
(4, '8997011401945', 1, 4, 0, 'SUI Botol 600 mL', 1230, 0, 1520, 2000, 'default-product2.jpg', 1, 1),
(6, '', 1, 4, 0, 'Arvin Botol 600 mL', 0, 0, 1500, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 4, 0, 'Ale - Ale', 41, 0, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 4, 0, 'Kiko', 118, 0, 850, 1000, 'default-product.jpg', 1, 1),
(9, '', 2, 4, 0, 'Koko Jelly Drink', 60, 0, 1042, 1500, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 4, 0, 'Okky Jelly Drink', 51, 0, 1042, 1500, 'default-product.jpg', 1, 1),
(11, 'SPW-011', 2, 4, 0, 'Teh Gelas', 44, 0, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-012', 2, 4, 0, 'Teh Pucuk Harum', 0, 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-013', 3, 4, 0, 'Cocorio', -1, 0, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-014', 3, 4, 0, 'Top Ice', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-015', 3, 4, 0, 'Frenta', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(16, '8996001354124', 4, 4, 0, 'Beng-beng', 87, 0, 1706, 2000, 'default-product.jpg', 1, 1),
(17, '8996001318430', 4, 4, 0, 'Better', 19, 0, 890, 1500, 'default-product.jpg', 1, 1),
(18, '089686590036', 4, 4, 0, 'Chiki Ball Rasa Keju', 64, 0, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-019', 4, 4, 0, 'Chiki Twist', -1, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-020', 4, 4, 0, 'Chitato Lite', -1, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, '8990333811119', 4, 4, 0, 'Choco Pie', 23, 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-022', 4, 4, 0, 'Chocolatos Roll', 17, 0, 795, 1000, 'default-product.jpg', 1, 1),
(23, '8992775002582', 4, 4, 0, 'Dilan 5 in 1', 98, 0, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-024', 4, 4, 0, 'Garuda Pilus', 338, 0, 425, 500, 'default-product.jpg', 1, 1),
(25, '8992775000793', 4, 4, 0, 'Garuda Rosta Rasa Pedas', 79, 0, 850, 1000, 'default-product.jpg', 1, 1),
(26, '8', 4, 4, 0, 'Gery Malkist', 39, 0, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-027', 4, 4, 0, 'Gery Wafer', 20, 0, 1583, 2000, 'default-product.jpg', 1, 1),
(28, '8994755030516', 4, 4, 0, 'Good Time Rainbow', 39, 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-029', 4, 4, 0, 'Goriorio', 155, 0, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-030', 4, 4, 0, 'Kacang Koro', 40, 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, '8996001354001', 4, 4, 0, 'Kalpa', 126, 0, 1867, 2000, 'default-product.jpg', 1, 1),
(33, '', 4, 4, 0, 'Mie Shoer Kremez', 87, 0, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-034', 4, 4, 0, 'Moring', 0, 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-035', 4, 4, 0, 'Nabati Aah', 213, 0, 450, 500, 'default-product.jpg', 1, 1),
(36, '8993175531702', 4, 4, 0, 'Nabati Siip', 280, 0, 450, 500, 'default-product.jpg', 1, 1),
(37, '8993175553773', 4, 4, 0, 'Nextar', 36, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(38, '', 4, 4, 0, 'Oreo Soft Cake', 117, 0, 1792, 2500, 'default-product.jpg', 1, 1),
(39, '', 4, 4, 0, 'Roma Arden', 84, 0, 1780, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-040', 4, 4, 0, 'Roma Gandum', 24, 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-041', 4, 4, 0, 'Roma Malkist', 174, 0, 900, 1000, 'default-product.jpg', 1, 1),
(42, '8996001304983', 4, 4, 0, 'Slai O\'Lai', 155, 0, 1334, 2000, 'default-product.jpg', 1, 1),
(43, 'SPW-043', 4, 4, 0, 'Sosis Sonice Sapi / Ayam', 82, 0, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-044', 4, 4, 0, 'Timtam Maxi', 10, 0, 875, 1000, 'default-product.jpg', 1, 1),
(45, '8991001242013', 4, 4, 0, 'Top Delfi Chocolate', 42, 0, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-046', 4, 4, 0, 'Wafello', 6, 0, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-047', 5, 4, 0, 'Alpenliebe', 35, 0, 196, 250, 'default-product.jpg', 1, 1),
(48, '', 5, 4, 0, 'Kiss', 274, 0, 120, 250, 'default-product.jpg', 1, 1),
(49, 'SPW-049', 5, 4, 0, 'Kopiko', 14, 0, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-050', 5, 4, 0, 'Mint', 118, 0, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-051', 5, 4, 0, 'Relaxa', 140, 0, 100, 250, 'default-product.jpg', 1, 1),
(52, '089686010015', 7, 4, 0, 'Indomie Ayam Bawang', 79, 0, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-053', 7, 4, 0, 'Indomie Goreng', 44, 0, 2675, 3000, 'default-product.jpg', 1, 1),
(54, '8998866200318', 7, 4, 0, 'Mie Sedap Ayam Bawang', 97, 0, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-055', 7, 4, 0, 'Mie Sedap Goreng', 57, 0, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-056', 7, 4, 0, 'Mie Sedap Soto', 0, 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, '', 8, 4, 0, 'Ballpoint Standard AE7', 15, 0, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-058', 8, 4, 0, 'Buku Big Boss 50 Lbr', 0, 0, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-059', 8, 4, 0, 'Buku Saku Tipis', 71, 0, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-060', 8, 4, 0, 'Glue Stick', 10, 0, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-061', 8, 4, 0, 'Kertas HVS', 0, 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-062', 8, 4, 0, 'Kertas Polio', 0, 0, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-063', 8, 4, 0, 'Penggaris 30 Cm', 8, 0, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-064', 8, 4, 0, 'Tip-Ex', 0, 0, 2500, 3000, 'default-product.jpg', 1, 1),
(65, '8995858999991', 9, 4, 0, 'Mixagrip Per Butir', 22, 0, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-066', 9, 4, 0, 'Hansaplast', 36, 0, 225, 500, 'default-product.jpg', 1, 1),
(67, '8992858665000', 9, 4, 0, 'Promaag', 50, 0, 667, 1000, 'default-product.jpg', 1, 1),
(68, '8992727004480', 10, 4, 0, 'Laurier', 7, 0, 650, 1000, 'default-product.jpg', 1, 1),
(69, '8998866500340', 10, 4, 0, 'Hers Protex', 31, 0, 550, 1000, 'default-product.jpg', 1, 1),
(70, '', 10, 4, 0, 'Charm', 26, 0, 550, 1000, 'default-product.jpg', 1, 1),
(71, 'SPW-071', 10, 4, 0, 'Tissue Tessa', 5, 0, 2200, 3000, 'default-product.jpg', 1, 1),
(72, 'SPW-072', 10, 4, 0, 'Minyak Sayur Promo 1 L', 0, 0, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-073', 10, 4, 0, 'Mama Lemon 1000', 78, 0, 875, 1000, 'default-product.jpg', 1, 1),
(74, '8993111212504', 10, 4, 0, 'Garam Jempol', 3, 0, 1500, 2000, 'default-product.jpg', 1, 1),
(75, '8999999100506', 10, 4, 0, 'Kecap Bango 14ml', 1, 0, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-076', 10, 4, 0, 'Saos Gembol', 5, 0, 2500, 3000, 'default-product.jpg', 1, 1),
(77, 'SPW-077', 10, 4, 0, 'Cuka 1000', 5, 0, 1000, 1000, 'default-product.jpg', 1, 1),
(78, '8992761166038', 2, 2, 0, 'Pulpy Orange', 116, 0, 3875, 4500, 'default-product.jpg', 1, 1),
(79, '8992761002022', 2, 2, 0, 'Sprite Pet Seru 390 mL', 228, 0, 3958, 4500, 'default-product.jpg', 1, 1),
(80, '8992761002039', 2, 2, 0, 'Fanta Pet Seru 390 mL', 215, 0, 3958, 5000, 'default-product.jpg', 1, 1),
(81, '8992761145026', 2, 2, 0, 'Sprite Pet Imut 250 mL', 169, 0, 2375, 3000, 'default-product.jpg', 1, 1),
(82, '8992761145033', 2, 2, 0, 'Fanta Pet Imut 250 mL', 83, 0, 2375, 3000, 'default-product.jpg', 1, 1),
(83, '8992761145019', 2, 2, 0, 'Coca Cola Pet Imut 250 mL', 135, 0, 2375, 3000, 'default-product.jpg', 1, 1),
(85, '8992761002015', 2, 2, 0, 'Coca Cola Pet Seru 390 mL', 182, 0, 3958, 5000, 'default-product.jpg', 1, 1),
(86, '8992761164539', 2, 2, 0, 'Nutriboost Orange', 171, 0, 5334, 7000, 'default-product.jpg', 1, 1),
(87, '8996001375372', 4, 4, 0, 'Choki-Choki', 240, 0, 900, 1500, 'default-product.jpg', 1, 1),
(88, '8991001242983', 4, 4, 0, 'Top Delfi Black In White', 248, 0, 813, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-089', 6, 1, 0, 'AICE Markisa 55 mL', 90, 0, 1940, 3000, 'default-product.jpg', 1, 1),
(90, '8885013130393', 6, 1, 0, 'AICE Miki-Miki 39 gr', 585, 0, 1558, 2000, 'default-product.jpg', 1, 1),
(91, '8885013130546', 6, 1, 0, 'AICE Nanas Stick 65gr', 283, 0, 1550, 2000, 'default-product.jpg', 1, 1),
(92, '89970331170164', 6, 1, 0, 'AICE Semangka Stick 65gr', 155, 0, 1550, 2000, 'default-product.jpg', 1, 1),
(93, '8885013131864', 6, 1, 0, 'AICE Sweet Corn Stick New 52gr FIFA SS', 798, 0, 2363, 3000, 'default-product.jpg', 1, 1),
(94, 'SPW-094', 6, 1, 0, 'AICE Mochi Stick 30gr SP', 4, 0, 2313, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-095', 6, 1, 0, 'AICE Mochi Durian 45mL SP', -1, 0, 2212, 3000, 'default-product.jpg', 1, 1),
(96, '8885013130997', 6, 1, 0, 'AICE 2 Colour Chocolate Stick 50 mL', -13, 4, 1912, 2500, 'default-product.jpg', 1, 1),
(97, '8885013130249', 6, 1, 0, 'AICE Milk Melon 50gr', 266, 0, 1913, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-098', 6, 1, 0, 'AICE Blueberry Yogurt Stick 49 mL', 0, -5, 2500, 3000, 'default-product.jpg', 1, 1),
(99, 'SPW-099', 6, 1, 0, 'AICE Fruit Twister Stick 60 mL', 242, 0, 2425, 3000, 'default-product.jpg', 1, 1),
(100, '', 6, 1, 0, 'AICE Chocolate Crispy Stick 60gr', 140, 0, 4000, 5000, 'default-product.jpg', 1, 1),
(101, '8885013131437', 6, 1, 0, 'AICE Strawberry Crispy Stick New', 496, 0, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-102', 6, 1, 0, 'AICE Sundae Chocolate Cup 100 mL', 48, 0, 4042, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-103', 6, 1, 0, 'AICE Freezy Choco 49 mL', -20, 13, 1560, 2000, 'default-product.jpg', 1, 1),
(104, '8885013131895', 6, 1, 0, 'AICE Bingo Cookies Cone 100 mL', 80, 20, 4062, 5000, 'default-product.jpg', 1, 1),
(105, 'SPW-105', 5, 4, 0, 'Bontea Green Lemon / Original', 153, 0, 106, 250, 'default-product.jpg', 1, 1),
(109, 'SPW-109', 5, 4, 0, 'Relaxa', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-110', 5, 4, 0, 'Yupi', 280, 0, 138, 250, 'default-product.jpg', 1, 1),
(111, 'SPW-111', 4, 4, 0, 'Mio Fullo', 98, 0, 450, 500, 'default-product.jpg', 1, 1),
(112, '', 4, 4, 0, 'Garuda Katom', 54, 0, 1254, 2000, 'default-product.jpg', 1, 1),
(113, '8992775312452', 4, 4, 0, 'Gery Salut Wafer Chocolate', 252, 0, 450, 500, 'default-product.jpg', 1, 1),
(114, 'SPW-114', 4, 4, 0, 'Gery Malkist Kelapa Coklat', 80, 0, 850, 1000, 'default-product.jpg', 1, 1),
(115, '8992775311400', 4, 4, 0, 'Gery Salut Roll', 48, 0, 450, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-116', 4, 4, 0, 'Japota', 0, 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-117', 4, 4, 0, 'Deka Kacang', 26, 0, 880, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-118', 4, 4, 0, 'Kacang Polong', 40, 0, 840, 1000, 'default-product.jpg', 1, 1),
(119, '8997004302143', 4, 4, 0, 'Oishi Rin-bee', 38, 0, 850, 1000, 'default-product.jpg', 1, 1),
(120, '7622210515285', 4, 4, 0, 'Oreo Cream', 141, 0, 1800, 2000, 'default-product.jpg', 1, 1),
(121, '', 4, 4, 0, 'Roti Aoka', 21, 0, 1800, 2500, 'default-product.jpg', 1, 1),
(122, 'SPW-122', 4, 4, 0, 'Selimut', 16, 0, 450, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-123', 4, 4, 0, 'Tiktak', 20, 0, 840, 1000, 'default-product.jpg', 1, 1),
(124, 'SPW-124', 4, 4, 0, 'Tiktuk Lingga Sari', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-125', 4, 4, 0, 'Tanggo', 0, 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, '', 4, 4, 0, 'Monde Serena Gold 25 gram', 14, 0, 2200, 3000, 'default-product.jpg', 1, 1),
(127, 'SPW-127', 4, 4, 0, 'Nabati Roll', 75, 0, 375, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-128', 2, 4, 0, 'Calpico', 112, 0, 2050, 3000, 'default-product.jpg', 1, 1),
(129, 'SPW-129', 2, 4, 0, 'Kopikap', 110, -2, 821, 1000, 'default-product.jpg', 1, 1),
(130, 'SPW-130', 2, 4, 0, 'Milku 200 mL', 26, 0, 2700, 3500, 'default-product.jpg', 1, 1),
(132, 'SPW-132', 10, 4, 0, 'Mama Lemon 450 mL', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-133', 10, 4, 0, 'Lavida', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(134, '', 1, 4, 0, 'Sui Cup 60 mL', 23, 0, 281, 500, 'default-product.jpg', 1, 1),
(135, '', 1, 4, 0, 'Arvin Botol 600ml', 123, 0, 958, 2000, 'default-product.jpg', 2, 1),
(136, '', 1, 4, 0, 'Sui/Arvin Botol 600ml', 1498, 0, 958, 2000, 'IMG_20220824_074621.jpg', 2, 1),
(137, '', 6, 1, 0, 'AICE Mochi Vanilla 30 gr', 111, 0, 2313, 3000, 'default-product.jpg', 2, 1),
(138, '', 2, 2, 0, 'Fanta Pet Seru 390 ml', 97, 0, 3958, 5000, 'default-product.jpg', 2, 1),
(139, '', 6, 1, 0, 'AICE 2 Colors Chocolate Stick 50ml', 244, 0, 1912, 2500, 'default-product.jpg', 2, 1),
(140, '', 6, 1, 0, 'AICE Bingo Cookies Cone 100ml', 171, 0, 4062, 5000, 'default-product.jpg', 2, 1),
(141, '', 6, 1, 0, 'AICE Blueberry Yoghurt Stick 49ml', 218, 0, 1900, 2500, 'default-product.jpg', 2, 1),
(142, '', 6, 1, 0, 'AICE Chocolate Crispy Stick 60g', 100, 0, 4000, 5000, 'default-product.jpg', 2, 1),
(143, '', 6, 1, 0, 'AICE Freezy Choco 49ml', 0, 0, 1560, 2000, 'default-product.jpg', 2, 1),
(144, '', 6, 1, 0, 'AICE Fruit Twister Stick 60ml', 508, 0, 2425, 3000, 'default-product.jpg', 2, 1),
(145, '', 6, 1, 0, 'AICE Milk 55ml', 5, 0, 1940, 2500, 'default-product.jpg', 2, 1),
(146, '', 6, 1, 0, 'AICE Miki-Miki 39g', 444, 0, 1558, 2000, 'IMG_20220827_130747.jpg', 2, 1),
(147, '', 6, 1, 0, 'AICE Milk Melon Stick 50g', 122, 0, 1912, 2500, 'default-product.jpg', 2, 1),
(148, '', 6, 1, 0, 'AICE Mochi Chocolate 45ml-SP', 52, 0, 2313, 3000, 'default-product.jpg', 2, 1),
(149, '', 6, 1, 0, 'AICE Mango Slush 30g', 0, 0, 3017, 4000, 'IMG_20220827_131146.jpg', 2, 1),
(150, '', 6, 1, 0, 'AICE Nanas Stick 65g', 258, 0, 1550, 2000, 'default-product.jpg', 2, 1),
(151, '', 6, 1, 0, 'AICE Semangka Stick 65g', 290, 0, 1550, 2000, 'default-product.jpg', 2, 1),
(152, '', 6, 1, 0, 'AICE Strawberry Crispy Stick New', 346, 0, 2750, 3500, 'default-product.jpg', 2, 1),
(153, '', 6, 1, 0, 'AICE Sundae Strawberry Cup 100ml', 0, 0, 4041, 5000, 'default-product.jpg', 2, 1),
(154, '', 6, 1, 0, 'AICE Sweet Corn Stick New 52g Fifa SS', 827, 0, 2362, 3000, 'default-product.jpg', 2, 1),
(156, '', 6, 1, 0, 'AICE Milk Melon Cone 100ml', 0, 0, 4041, 5000, 'default-product.jpg', 2, 1),
(157, '', 6, 1, 0, 'AICE Taro Crispy', 260, 0, 2412, 3000, 'IMG_20220827_130709.jpg', 2, 1),
(158, '', 6, 1, 0, 'AICE Choco Boost', 55, 0, 4000, 5000, 'default-product.jpg', 2, 1),
(159, '', 6, 1, 0, 'AICE Chocolate Max Cone', 52, 0, 4062, 5000, 'IMG_20220827_130927.jpg', 2, 1),
(160, '', 6, 1, 0, 'AICE Berry Max Cone', 6, 0, 4062, 5000, 'default-product.jpg', 2, 1),
(161, '', 6, 1, 0, 'AICE Choco Cookies', 0, 0, 3600, 4500, 'default-product.jpg', 2, 1),
(162, '', 6, 1, 0, 'AICE Coffee Crispy', 40, 0, 2750, 3500, 'default-product.jpg', 2, 1),
(163, '', 2, 2, 0, 'Fanta Pet Imut 250ml', 193, 0, 2375, 3000, 'default-product.jpg', 2, 1),
(164, '', 2, 2, 0, 'Coca-Cola Pet Seru 390ml', 131, 0, 3958, 5000, 'default-product.jpg', 2, 1),
(165, '', 2, 2, 0, 'Coca-Cola Pet Imut 250ml', 164, 0, 2375, 3000, 'default-product.jpg', 2, 1),
(166, '', 2, 2, 0, 'Frestea 350ml', 342, 0, 3500, 4500, 'default-product.jpg', 2, 1),
(167, '', 2, 2, 0, 'Nutriboost', 206, 0, 5333, 7000, 'default-product.jpg', 2, 1),
(168, '', 2, 2, 0, 'Pulpy Orange', 135, 0, 3875, 4500, 'default-product.jpg', 2, 1),
(169, '', 2, 2, 0, 'Sprite Pet Imut 250ml', 220, 0, 2375, 3000, 'default-product.jpg', 2, 1),
(170, '', 2, 2, 0, 'Sprite Pet Seru 390ml', 122, 0, 3958, 5000, 'default-product.jpg', 2, 1),
(171, '', 1, 4, 0, 'Cibodas Cup', 333, 0, 315, 500, 'default-product.jpg', 2, 1),
(172, '', 4, 4, 0, 'LaVida Cup / SUI Cup', 954, 0, 292, 500, 'default-product.jpg', 2, 1),
(173, '', 2, 4, 0, 'Ale-Ale', 48, 0, 825, 1000, 'default-product.jpg', 2, 1),
(174, '', 3, 4, 0, 'Kiko', 0, 0, 850, 1000, 'default-product.jpg', 2, 1),
(176, '', 2, 4, 0, 'Okky Jelly Drink', 19, 0, 792, 1000, 'default-product.jpg', 2, 1),
(177, '', 2, 4, 0, 'Teh Gelas', 35, 0, 813, 1000, 'default-product.jpg', 2, 1),
(178, '', 2, 4, 0, 'Calpico 85ml / Calpis', 48, 0, 2050, 3000, 'default-product.jpg', 2, 1),
(179, '', 2, 4, 0, 'Milku 200ml', 0, 0, 2583, 3000, 'default-product.jpg', 2, 1),
(180, '', 2, 4, 0, 'Ultra 200ml', 150, 0, 4300, 5000, 'default-product.jpg', 2, 1),
(181, '', 5, 4, 0, 'Alpenliebe', 0, 0, 200, 250, 'default-product.jpg', 2, 1),
(182, '', 5, 4, 0, 'Bontea Green', 489, 0, 110, 250, 'default-product.jpg', 2, 1),
(183, '', 5, 4, 0, 'Kiss Mint Cherry 125 g', 50, 0, 120, 250, 'default-product.jpg', 2, 1),
(184, '', 5, 4, 0, 'Kopiko Coffee Candy', 606, 0, 170, 250, 'default-product.jpg', 2, 1),
(185, '', 5, 4, 0, 'Mintz', 136, 0, 120, 250, 'default-product.jpg', 2, 1),
(186, '', 5, 4, 0, 'Relaxa', 50, 0, 100, 250, 'default-product.jpg', 2, 1),
(187, '', 5, 0, 0, 'Yupi', 50, 0, 138, 250, 'default-product.jpg', 2, 1),
(188, '', 4, 4, 0, 'Roti Aoka / Roti Coy', 155, 0, 1800, 2500, 'default-product.jpg', 2, 1),
(189, '', 4, 4, 0, 'Bengbeng', 386, 0, 1706, 2000, 'default-product.jpg', 2, 1),
(190, '', 4, 4, 0, 'Better', 61, 0, 1280, 1500, 'default-product.jpg', 2, 1),
(191, '', 4, 4, 0, 'Chiki Ball', 45, 0, 900, 1000, 'default-product.jpg', 2, 1),
(192, '', 4, 4, 0, 'Chiki Twist', 0, 0, 1750, 2000, 'default-product.jpg', 2, 1),
(193, '', 4, 4, 0, 'Chitato Beef / Chitato Lite', 10, 0, 1750, 2000, 'default-product.jpg', 2, 1),
(195, '', 4, 4, 0, 'Chocolatos Roll 1000', 120, 0, 800, 1000, 'default-product.jpg', 2, 1),
(196, '', 4, 4, 0, 'Chocolatos Roll 500', 335, 0, 450, 500, 'default-product.jpg', 2, 1),
(197, '', 4, 4, 0, 'Chocolatos Wafer Cream', 7, 0, 900, 1500, 'default-product.jpg', 2, 1),
(198, '', 4, 4, 0, 'Choki Choki', 223, 0, 900, 1000, 'default-product.jpg', 2, 1),
(199, '', 4, 4, 0, 'Dilan 5 in 1', 60, 0, 1667, 2000, 'default-product.jpg', 2, 1),
(200, '', 4, 4, 0, 'Garuda Kacang Kulit Besar', 0, 0, 1850, 2000, 'default-product.jpg', 2, 1),
(201, '', 4, 4, 0, 'Garuda Kacang Kulit Kecil', 20, 0, 880, 1000, 'default-product.jpg', 2, 1),
(202, '', 4, 4, 0, 'Garuda Pilus', 236, 0, 440, 500, 'default-product.jpg', 2, 1),
(203, '', 4, 4, 0, 'Garuda Kacang Atom', 3, 0, 1850, 2000, 'default-product.jpg', 2, 1),
(204, '', 4, 4, 0, 'Gery Malkist', 43, 0, 850, 1000, 'default-product.jpg', 2, 1),
(205, '', 4, 4, 0, 'Gery Salut', 11, 0, 446, 500, 'default-product.jpg', 2, 1),
(206, '', 4, 4, 0, 'Gery Odonut', 39, 0, 438, 500, 'default-product.jpg', 2, 1),
(207, '', 4, 4, 0, 'Gery Wafer', 2, 0, 1583, 2000, 'default-product.jpg', 2, 1),
(208, '', 4, 4, 0, 'Good Time Double Choco Chocochip', 166, 0, 700, 1000, 'default-product.jpg', 2, 1),
(209, '', 4, 4, 0, 'Goriorio', 230, 0, 450, 500, 'default-product.jpg', 2, 1),
(210, '', 4, 4, 0, 'Jetz Stick', 3, 0, 900, 1000, 'default-product.jpg', 2, 1),
(211, '', 4, 4, 0, 'Kacang Koro', 20, 0, 880, 1000, 'default-product.jpg', 2, 1),
(212, '', 4, 4, 0, 'Kacang Polong', 0, 0, 870, 1000, 'default-product.jpg', 2, 1),
(213, '', 4, 4, 0, 'Kalpa', 147, 0, 1792, 2000, 'default-product.jpg', 2, 1),
(214, '', 4, 4, 0, 'Keju Cake', 142, 0, 1792, 2000, 'default-product.jpg', 2, 1),
(215, '', 4, 4, 0, 'Mie Shor Kremez', 122, 0, 450, 500, 'default-product.jpg', 2, 1),
(216, '', 4, 4, 0, 'Fullo Pack Of Vanila Milk Isi 12', 59, 0, 730, 1000, 'default-product.jpg', 2, 1),
(217, '', 4, 4, 0, 'Monde Serena 25 gram', 28, 0, 2200, 3000, 'default-product.jpg', 2, 1),
(218, '', 4, 4, 0, 'Mayasi Ala Kacang Jepang', 38, 0, 875, 1000, 'default-product.jpg', 2, 1),
(219, '', 4, 4, 0, 'Nabati Aah', 225, 0, 450, 500, 'default-product.jpg', 2, 1),
(220, '', 4, 4, 0, 'Nabati Richoco', 24, 0, 500, 1000, 'default-product.jpg', 2, 1),
(221, '', 4, 4, 0, 'Nabati Siip', 296, 0, 450, 500, 'default-product.jpg', 2, 1),
(222, '', 4, 4, 0, 'Nextar', 236, 0, 1780, 2000, 'default-product.jpg', 2, 1),
(223, '', 4, 4, 0, 'Oreo Cream', 155, 0, 1792, 2000, 'default-product.jpg', 2, 1),
(224, '', 4, 4, 0, 'Oreo Soft Cake', 119, 0, 1792, 2000, 'default-product.jpg', 2, 1),
(225, '', 4, 4, 0, 'Regal Marie Biscuits', 30, 0, 930, 1000, 'default-product.jpg', 2, 1),
(226, '', 4, 4, 0, 'Roma Sari Gandum Sandwich', 251, 0, 1792, 2000, 'default-product.jpg', 2, 1),
(227, '', 4, 4, 0, 'Roma Malkist / Abon', 63, 0, 900, 1000, 'default-product.jpg', 2, 1),
(228, '', 4, 4, 0, 'Richeese Bisvit Selimut', 101, 0, 450, 1000, 'default-product.jpg', 2, 1),
(229, '', 4, 4, 0, 'Slai O\'Lai', 121, 0, 1335, 2000, 'default-product.jpg', 2, 1),
(230, '', 4, 4, 0, 'Sosis Sonice', 538, 0, 813, 1000, 'default-product.jpg', 2, 1),
(231, '', 4, 4, 0, 'Tango 1000', 30, 0, 900, 1000, 'default-product.jpg', 2, 1),
(232, '', 4, 4, 0, 'Tiktak / Tictac', 0, 0, 870, 1000, 'default-product.jpg', 2, 1),
(233, '', 10, 4, 0, 'Royco Ayam', 46, 0, 490, 1000, 'default-product.jpg', 2, 1),
(234, '', 4, 4, 0, 'Timtam Maxi', 43, 0, 875, 1000, 'default-product.jpg', 2, 1),
(236, '', 4, 4, 0, 'Delfi Top Chocolate', 183, 0, 813, 1000, 'default-product.jpg', 2, 1),
(237, '', 4, 4, 0, 'Wafello', 7, 0, 900, 1000, 'default-product.jpg', 2, 1),
(238, '', 7, 4, 0, 'Indomie Ayam Bawang', 31, 0, 2525, 3000, 'default-product.jpg', 2, 1),
(239, '', 7, 4, 0, 'Indomie Goreng', 0, 0, 2675, 3000, 'default-product.jpg', 2, 1),
(240, '', 7, 4, 0, 'Mie Sedap Ayam Bawang', 30, 0, 2363, 3000, 'default-product.jpg', 2, 1),
(241, '', 7, 0, 0, 'Mie Sedap Goreng', 0, 0, 2525, 3000, 'default-product.jpg', 2, 1),
(242, '', 7, 4, 0, 'Mie Sedap Soto', 0, 0, 2525, 3000, 'default-product.jpg', 2, 1),
(243, '', 10, 4, 0, 'Tissue Paseo 1000', 5, 0, 800, 1000, 'default-product.jpg', 2, 1),
(244, '', 10, 4, 0, 'Tissue Paseo 2500', 0, 0, 2200, 2500, 'default-product.jpg', 2, 1),
(245, '', 10, 4, 0, 'Polytex Spon Busa', 8, 0, 2600, 3000, 'default-product.jpg', 2, 1),
(246, '', 4, 4, 0, 'Iyes Kacang Oven Rasa Pedas', 10, 0, 850, 1000, 'default-product.jpg', 2, 1),
(247, '', 8, 4, 0, 'Kertas HVS', 0, 0, 85, 100, 'default-product.jpg', 2, 1),
(248, '', 8, 4, 0, 'Kertas Polio', 0, 0, 250, 500, 'default-product.jpg', 2, 1),
(249, '', 8, 4, 0, 'Tipe-Ex', 0, 0, 2500, 3000, 'default-product.jpg', 2, 1),
(251, '', 10, 4, 0, 'Softex Daun Sirih', 31, 0, 480, 500, 'default-product.jpg', 2, 1),
(252, '', 9, 4, 0, 'Promaag / Butir', 0, 0, 667, 1000, 'default-product.jpg', 2, 1),
(253, '', 10, 4, 0, 'Charm', 109, 0, 440, 1000, 'default-product.jpg', 2, 1),
(254, '', 10, 4, 0, 'Cuka 1500', 6, 0, 1000, 1500, 'default-product.jpg', 2, 1),
(255, '', 10, 4, 0, 'Garam Jempol', 9, 0, 1750, 2500, 'default-product.jpg', 2, 1),
(256, '', 10, 4, 0, 'Hers Protex', 49, 0, 550, 1000, 'default-product.jpg', 2, 1),
(257, '', 10, 4, 0, 'Laurier', 20, 0, 650, 1000, 'default-product.jpg', 2, 1),
(258, '', 10, 4, 0, 'Mama Lemon 55ml', 28, 0, 900, 1000, 'default-product.jpg', 2, 1),
(259, '', 10, 4, 0, 'Mama Lemon 450ml', 4, 0, 8200, 10000, 'default-product.jpg', 2, 1),
(260, '', 10, 4, 0, 'Mama Lemon 115 ml', 20, 0, 1750, 2000, 'default-product.jpg', 2, 1),
(261, '', 10, 4, 0, 'Minyak Sayur Sedaap 1L', 0, 0, 16700, 18000, 'default-product.jpg', 2, 1),
(262, '', 10, 4, 0, 'Saos Gembol', 6, 0, 2500, 3000, 'default-product.jpg', 2, 1),
(263, '', 10, 4, 0, 'Terigu Segitiga Curah 1kg', 10, 0, 11000, 13000, 'default-product.jpg', 2, 1),
(264, '', 10, 4, 0, 'Tissue Tessa', 18, 0, 1771, 2000, 'default-product.jpg', 2, 1),
(265, '', 4, 4, 0, 'Biskuat Bolu', 24, 0, 1792, 2500, 'default-product.jpg', 2, 1),
(267, '', 12, 4, 0, 'Kapal Api Special Mix', 43, 0, 1180, 2000, 'default-product.jpg', 2, 1),
(268, '', 12, 4, 0, 'Good Day Mochacino', 37, 0, 1130, 2000, 'default-product.jpg', 2, 1),
(269, '', 4, 4, 0, 'Tango Walut', 47, 0, 1140, 2000, 'default-product.jpg', 2, 1),
(270, '', 4, 4, 0, 'Yoritos', 16, 0, 1140, 2000, 'default-product.jpg', 2, 1),
(271, '', 4, 4, 0, 'Taro Net Potato', 6, 0, 1771, 2000, 'default-product.jpg', 2, 1),
(272, '', 4, 4, 0, 'Pulpen Standard AE7', 47, 0, 2041, 3000, 'default-product.jpg', 2, 1),
(273, '', 8, 4, 0, 'Buku Big Boss 50 Lbr', 0, 0, 4750, 6000, 'default-product.jpg', 2, 1),
(274, '', 8, 4, 0, 'Buku Saku Tipis', 0, 0, 900, 1500, 'default-product.jpg', 2, 1),
(275, '', 8, 4, 0, 'Glue Stick', 0, 0, 2000, 2500, 'default-product.jpg', 2, 1),
(276, '', 8, 4, 0, 'Penggaris 30cm', 0, 0, 2000, 2500, 'default-product.jpg', 2, 1),
(278, '', 9, 4, 0, 'Hansaplast', 100, 0, 285, 500, 'default-product.jpg', 2, 1),
(279, '', 10, 4, 0, 'Kecap Bango', 0, 0, 24300, 25000, 'default-product.jpg', 2, 1),
(280, '', 10, 4, 0, 'Minyak Sayur Promo 1L', 0, 0, 23750, 24000, 'default-product.jpg', 2, 1),
(282, '', 4, 4, 0, 'Gery Salut Chocolate Coconut', 7, 0, 1583, 2000, 'default-product.jpg', 2, 1),
(283, '', 4, 4, 0, 'Dua Kelinci Kacang Garing', 0, 0, 850, 1000, 'default-product.jpg', 2, 1),
(284, '', 4, 4, 0, 'Tango Wafer 1000 Vanilla Delight ', 8, 0, 840, 1000, 'default-product.jpg', 2, 1),
(285, '', 7, 4, 0, 'Mie Sedap Goreng', 1, 0, 2525, 3000, 'default-product.jpg', 2, 1),
(286, '', 10, 4, 0, 'Tisu Paseo 1000', 59, 0, 833, 1000, 'default-product.jpg', 2, 1),
(287, '', 10, 4, 0, 'Tisu Paseo 3000', 25, 0, 2200, 3000, 'default-product.jpg', 2, 1),
(289, '', 12, 4, 0, 'Luwak White Coffee ', 58, 0, 1120, 2000, 'default-product.jpg', 2, 1),
(290, '', 4, 4, 0, 'Taro Seaweed 1000', 11, 0, 900, 1000, 'default-product.jpg', 2, 1),
(291, '', 6, 1, 0, 'AICE Mochi Chocolate 45 ml-SP', 185, 0, 2313, 3000, 'default-product.jpg', 1, 1),
(292, '', 6, 1, 0, 'AICE Melon Cone 100 ml', 48, 0, 4062, 5000, 'default-product.jpg', 1, 1),
(293, '', 6, 1, 0, 'AICE Vanilla Chocolate Cup 90 ml', 0, 0, 3208, 4000, 'default-product.jpg', 1, 1),
(294, '', 6, 1, 0, 'AICE Mochi Vanila 30 gr', 62, 0, 2313, 3000, 'default-product.jpg', 1, 1),
(295, '8996006861924', 2, 3, 0, 'S-Tee Kotak 200 ml', 101, 0, 1583, 2500, 'default-product.jpg', 1, 1),
(296, '8996006857705', 2, 3, 0, 'S-Tee Botol 390 ml', 40, 0, 2208, 3000, 'default-product.jpg', 1, 1),
(297, '', 2, 3, 0, 'Sosro Kotak 200 ml', 164, 0, 2188, 3000, 'default-product.jpg', 1, 1),
(298, '', 2, 3, 0, 'Sosro Kotak 330 ml', 57, 0, 2708, 3500, 'default-product.jpg', 1, 1),
(299, '', 2, 3, 0, 'Fruitea Botol Apel 350 ml', 128, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(300, '', 2, 3, 0, 'Fruitea Botol Strawberry 350 ml', 71, 0, 3333, 4000, 'default-product.jpg', 1, 1),
(301, '8994116101183', 2, 3, 0, 'Country Choice Kotak 250 ml', 73, 0, 4167, 5000, 'default-product.jpg', 1, 1),
(302, '8996006861986', 2, 3, 0, 'Tebs Botol Lemon 300 ml', 50, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(303, '8996006858245', 2, 3, 0, 'Tebs Botol Mix Fruit 300 ml', 51, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(304, '', 1, 3, 0, 'Prima 600 ml', 111, 0, 1438, 2500, 'default-product.jpg', 1, 1),
(305, '', 1, 3, 0, 'Prima 330 ml', 92, 0, 1271, 2000, 'default-product.jpg', 1, 1),
(306, '', 1, 3, 0, 'Prima Gelas', 129, 0, 469, 500, 'default-product.jpg', 1, 1),
(307, '8996006853127', 2, 3, 0, 'Tebs Kaleng 330 ml', 23, 0, 3792, 5000, 'default-product.jpg', 1, 1),
(308, '8996006861580', 2, 3, 0, 'Teh Botol Kaleng 318 ml', 47, 0, 3583, 4500, 'default-product.jpg', 1, 1),
(310, '8996006858016', 2, 3, 0, 'Teh Botol Pet 350 ml', 58, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(311, '', 2, 3, 0, 'Fruitea Botol Blackcurrant 500 ml', 39, 0, 5000, 6000, 'default-product.jpg', 1, 1),
(313, '', 5, 4, 0, 'Blaster Choco Chocolate', 226, 0, 130, 250, 'default-product.jpg', 2, 1),
(314, '', 5, 4, 0, 'Blaster Neopolitan', 218, 0, 130, 250, 'default-product.jpg', 2, 1),
(315, '', 4, 4, 0, 'Nissin Lemonia Lemon Biskuit ', 4, 0, 6200, 7000, 'default-product.jpg', 2, 1),
(316, '', 1, 4, 0, 'Larutan Cap Kaki 3', 22, 0, 3300, 4000, 'default-product.jpg', 2, 1),
(317, '', 4, 4, 0, 'Suky Suky', 40, 0, 900, 1000, 'default-product.jpg', 2, 1),
(318, '', 6, 1, 0, 'AICE Berry Choco Max Cone 100 ml', 39, 20, 4063, 5000, 'default-product.jpg', 1, 1),
(319, '', 4, 4, 0, 'Roma Slai Olai 2000 (32 gr)', 20, 0, 1600, 2000, 'default-product.jpg', 1, 1),
(320, '', 5, 4, 0, 'Blaster Chocolate', 207, 0, 130, 250, 'default-product.jpg', 1, 1),
(321, '', 5, 4, 0, 'Blaster Neopolitan', 0, 0, 130, 250, 'default-product.jpg', 1, 1),
(322, '', 4, 4, 0, 'Chocolatos Wafer Roll isi 24 pcs', 186, 0, 450, 500, 'default-product.jpg', 1, 1),
(323, '7622300405588', 4, 4, 0, 'Keju Cake Bolu Keju ', 191, 0, 1750, 2500, 'default-product.jpg', 1, 1),
(324, '', 4, 4, 0, 'Kacang Iyes', 36, 0, 850, 1000, 'default-product.jpg', 1, 1),
(325, '', 12, 4, 0, 'Max Tea Tarik', 13, 0, 1690, 2000, 'default-product.jpg', 1, 1),
(326, '8991002105485', 12, 4, 0, 'Kapal Api Special Mix', 16, 0, 1180, 2000, 'default-product.jpg', 1, 1),
(327, '', 12, 4, 0, 'Good Day Mochacino', 12, 0, 1130, 2000, 'default-product.jpg', 1, 1),
(328, '', 4, 4, 0, 'Nissin Lemonia Lemon Biscuit', 0, 0, 6200, 7000, 'default-product.jpg', 1, 1),
(329, '', 4, 4, 0, 'Richese Bisvit Selimut ', 0, 0, 900, 1000, 'default-product.jpg', 1, 1),
(331, '8996006855145', 2, 3, 0, 'Teh Botol Sosro 450ml', 20, 0, 5120, 6000, 'default-product.jpg', 1, 1),
(332, '', 10, 4, 0, 'Larutan Cap Kaki 3 Botol  200 ml', 0, 0, 3300, 4000, 'default-product.jpg', 1, 1),
(333, '8996006855879', 2, 3, 0, 'Fruitea Pouch Blackcurrant 230ml', 8, 0, 1854, 2500, 'default-product.jpg', 1, 1),
(335, '', 6, 1, 0, 'AICE Sundae Chocolate Cup 100 ml', 20, 0, 4042, 5000, 'default-product.jpg', 2, 1),
(336, '', 10, 4, 0, 'Minyak Minyakita', 7, 0, 14000, 15000, 'default-product.jpg', 2, 1),
(337, '', 6, 1, 0, 'AICE Vanilla Chocolate Cup 90 ml', 12, 0, 3208, 4000, 'default-product.jpg', 2, 1),
(338, '', 6, 1, 0, 'AICE Mochi Chocolate 100ml', -1, 0, 2313, 3000, 'default-product.jpg', 1, 1),
(339, '8992761166052', 2, 2, 0, 'Frestea Melati 350ml', 172, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(340, '', 2, 3, 0, 'Fruitea Kotak Apel 250ml', -3, 0, 3333, 4000, 'default-product.jpg', 1, 1),
(341, '8996006855886', 2, 3, 0, 'Fruitea Pouch Apel 230 ml', 135, 0, 1854, 2500, 'default-product.jpg', 1, 1),
(342, '', 2, 4, 0, 'Teh Pucuk Harum', 6, 0, 2271, 3000, 'default-product.jpg', 2, 1),
(344, '', 2, 3, 0, 'Fruitea Botol Lemon 350 ml', 11, 0, 3333, 4000, 'default-product.jpg', 1, 1),
(345, '', 2, 3, 0, 'Fruitea Botol Freeze 350 ml', 35, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(346, '', 2, 3, 0, 'Fruitea Genggam Blackcurrant 200ml', 46, 0, 2188, 3000, 'default-product.jpg', 1, 1),
(347, '', 2, 3, 0, 'Fruitea Kotak Lemon 250ml', 37, 0, 2355, 3000, 'default-product.jpg', 1, 1),
(348, '', 2, 3, 0, 'Fruitea Genggam Apel 200 ml', 50, 0, 2147, 3000, 'default-product.jpg', 1, 1),
(349, '', 2, 3, 0, 'Fruitea Kotak Blackcurrant 250ml', 70, 0, 2417, 3000, 'default-product.jpg', 1, 1),
(350, '', 2, 3, 0, 'Fruitea Kaleng Blackcurrant 318 ml', 68, 0, 3375, 4000, 'default-product.jpg', 1, 1),
(351, '89960011350829', 4, 4, 0, 'Wafello Choco Blast', 10, 0, 1800, 2000, 'default-product.jpg', 1, 1),
(352, '', 10, 4, 0, 'Terigu Curah Segitiga 1kg', 9, 0, 11000, 13000, 'default-product.jpg', 1, 1),
(353, '', 10, 4, 0, 'Tisu Paseo', 29, 0, 2200, 3000, 'default-product.jpg', 1, 1),
(354, '8992775110171', 4, 4, 0, 'Garuda kacang kulit', 52, 0, 880, 1000, 'default-product.jpg', 1, 1),
(355, '', 6, 1, 0, 'AICE Chocolate Stick 40g', 4, 0, 1940, 2500, 'default-product.jpg', 2, 1),
(356, '', 4, 4, 0, 'Monde Serena 50 gram', 6, 0, 4000, 5000, 'default-product.jpg', 2, 1),
(357, '', 5, 4, 0, 'Tamarin', 83, 0, 108, 250, 'default-product.jpg', 2, 1),
(358, 'SPW', 4, 4, 0, 'Choki Choki Stick 2000', 24, 0, 1733, 2000, 'default-product.jpg', 2, 1),
(359, 'SPW', 4, 4, 0, 'Gery Malkist Keju ', 0, 0, 6000, 8000, 'default-product.jpg', 2, 1),
(360, '8885013130041', 6, 1, 0, 'AICE Manggo Slush 30g', -4, 0, 3208, 4000, 'default-product.jpg', 1, 1),
(361, 'SPW', 6, 1, 0, 'AICE Mango Slush Hi-C Stick 65g', 171, 0, 3017, 4000, 'default-product.jpg', 1, 1),
(362, '8999999000165', 4, 4, 0, 'Taro Net Seaweed', 58, 0, 900, 1000, 'default-product.jpg', 1, 1),
(363, 'SPW', 4, 4, 0, 'Nabati Wafer Coklat/Keju', 21, 0, 1800, 2500, 'default-product.jpg', 1, 1),
(364, '', 10, 4, 0, 'Minyak  1 Liter', 12, 0, 16000, 18000, 'default-product.jpg', 1, 1),
(365, 'SPW', 5, 4, 0, 'Mentos', 50, 0, 115, 250, 'default-product.jpg', 1, 1),
(366, 'SPW', 5, 4, 0, 'Lazery', 40, 0, 150, 250, 'default-product.jpg', 1, 1),
(367, '', 4, 4, 0, 'Monde Serena 50 gram', 30, 0, 4000, 5000, 'default-product.jpg', 1, 1),
(368, 'SPW', 0, 3, 0, 'Fruit Tea Strawberry 350 ml', -2, 0, 3333, 4000, 'default-product.jpg', 1, 1),
(369, '8885013131529', 6, 1, 0, 'AICE Mochi Klepon 45ml-SP', 117, 0, 2363, 3000, 'default-product.jpg', 1, 1),
(370, 'SPW', 6, 1, 0, 'AICE Chocolate Max Cone 100ml', 47, 0, 4063, 5000, 'default-product.jpg', 1, 1),
(371, 'SPW', 6, 1, 0, 'AICE Sundae Strawberry Cup 100ml', 24, 0, 4042, 5000, 'default-product.jpg', 1, 1),
(372, 'SPW', 0, 0, 0, 'Mama lemon 55 ml', 0, 0, 812, 1000, 'default-product.jpg', 1, 1),
(373, '8998866105125', 10, 4, 0, 'Mama Lemon 58 ml', 0, 0, 812, 1000, 'default-product.jpg', 1, 1),
(374, '', 1, 4, 0, 'AirCup 600 mL', 0, 0, 958, 2000, 'default-product.jpg', 2, 1),
(375, 'SPW', 4, 4, 0, 'Garuda Rosta', 40, 0, 880, 1000, 'default-product.jpg', 2, 1),
(376, '', 4, 4, 0, 'Koko Drink', 24, 0, 1063, 1500, 'default-product.jpg', 2, 1),
(377, 'SPW', 4, 4, 0, 'Superstar Triple Chocolate ', 60, 0, 900, 1000, 'default-product.jpg', 2, 1),
(378, 'SPW', 6, 1, 0, 'AICE Markisa 55 ml', 450, 0, 1550, 2000, 'default-product.jpg', 2, 1),
(379, 'SPW', 6, 1, 0, 'AICE Es Jeruk 60 g', 200, 0, 1560, 2000, 'default-product.jpg', 2, 1),
(380, '', 1, 4, 0, 'Hexua/Bening gelas', 0, 0, 292, 500, 'default-product.jpg', 2, 1),
(381, '', 6, 1, 0, 'AICE Mochi Durian 45 ml (FIFA EP) ', 40, 0, 2313, 3000, 'default-product.jpg', 2, 1),
(382, 'SPW', 4, 4, 0, 'Cloud 1000', 24, 0, 900, 1000, 'default-product.jpg', 1, 1),
(383, 'SPW', 4, 4, 0, 'Garuda Kacang Atom Rasa Original 20 g', 20, 0, 880, 1000, 'default-product.jpg', 2, 1),
(385, '', 9, 4, 0, 'Mixagrip Flu per tablet', 16, 0, 575, 1000, 'default-product.jpg', 2, 1),
(386, '', 9, 4, 0, 'Mixagrip Flu dan Batuk Per tablet', 4, 0, 613, 1000, 'default-product.jpg', 2, 1),
(387, 'SPW', 4, 4, 0, 'Moring Bandung 1000', 230, 0, 850, 1000, 'default-product.jpg', 2, 1),
(388, 'SPW', 2, 3, 0, 'Country Choice Kotak 250 ml', 48, 0, 4167, 5000, 'default-product.jpg', 2, 1),
(389, '', 2, 3, 0, 'Fruitea Pet (botol) Apple 350 ml', 36, 0, 3333, 4000, 'default-product.jpg', 2, 1),
(390, '', 2, 3, 0, 'Fruitea Botol Blackcurrant 500 ml', 24, 0, 4790, 6000, 'default-product.jpg', 2, 1),
(391, '', 2, 3, 0, 'Fruitea Pet (botol)  Blackcurrant 350 ml', 36, 0, 3333, 4000, 'default-product.jpg', 2, 1),
(392, '', 2, 3, 0, 'Fruitea Botol Frezze 350 ml', 24, 0, 3333, 4000, 'default-product.jpg', 2, 1),
(393, 'SPW', 2, 3, 0, 'Fruitea Genggam Freeze 200 ml', 47, 0, 2190, 3000, 'default-product.jpg', 2, 1),
(394, 'SPW', 2, 3, 0, 'Fruitea Genggam Strawberry 200 ml ', 24, 0, 2146, 3000, 'default-product.jpg', 2, 1),
(395, 'SPW', 2, 3, 0, 'Fruitea Kotak Blackcurrant 250 ml', 48, 0, 2354, 3000, 'default-product.jpg', 2, 1),
(396, 'SPW', 2, 3, 0, 'Fruitea Kotak Lemon 250 ml', 48, 0, 2354, 3000, 'default-product.jpg', 2, 1),
(397, 'SPW', 2, 3, 0, 'Prima Botol 330ml', 240, 0, 1271, 2000, 'default-product.jpg', 2, 1),
(398, 'SPW', 2, 3, 0, 'Prima Gelas 220ml', 192, 0, 448, 500, 'default-product.jpg', 2, 1),
(399, '', 2, 3, 0, 'S-tee Botol 390ml', 108, 0, 2208, 3000, 'default-product.jpg', 2, 1),
(400, 'SPW', 2, 3, 0, 'S-tee Kotak 200ml', 96, 0, 1583, 2500, 'default-product.jpg', 2, 1),
(401, '', 2, 3, 0, 'Teh Botol Original 350ml', 180, 0, 3500, 4000, 'default-product.jpg', 2, 1),
(402, '', 2, 3, 0, 'Teh Botol Original 450ml', 72, 0, 5000, 6000, 'default-product.jpg', 2, 1),
(403, '', 2, 3, 0, 'Teh Botol Kotak 200ml', 120, 0, 2188, 3000, 'default-product.jpg', 2, 1),
(404, '', 2, 3, 0, 'Teh Botol Kotak 330ml', 48, 0, 2625, 3500, 'default-product.jpg', 2, 1),
(405, 'SPW', 2, 3, 0, 'Teh Botol Kaleng 318ml', 48, 0, 3375, 4000, 'default-product.jpg', 2, 1),
(406, 'SPW', 2, 3, 0, 'Tebs Kaleng 330ml', 48, 0, 3583, 4000, 'default-product.jpg', 2, 1),
(407, 'SPW', 2, 3, 0, 'Tebs Botol Mix Fruit 300ml', 36, 0, 3333, 4000, 'default-product.jpg', 2, 1),
(408, 'SPW', 2, 3, 0, 'Tebs Sparkling 300ml', 84, 0, 3500, 4000, 'default-product.jpg', 2, 1),
(409, 'SPW', 2, 3, 0, 'Fruitea Kaleng 318 ml', 48, 0, 3375, 4000, 'default-product.jpg', 2, 1),
(410, '', 2, 3, 0, 'Fruitea Pouch Apple 230ml', 96, 0, 1854, 2500, 'default-product.jpg', 2, 1),
(411, 'SPW', 2, 3, 0, 'Fruitea Pouch Blackcurrant 230ml', 96, 0, 1854, 2500, 'default-product.jpg', 2, 1),
(412, 'SPW', 2, 3, 0, 'Prima Botol 600 ml', 288, 0, 1437, 2500, 'default-product.jpg', 2, 1),
(413, '', 6, 1, 0, 'AICE Mochi Klepon 45ml', 40, 0, 2362, 3000, 'default-product.jpg', 2, 1),
(414, 'SPW', 12, 4, 0, 'Kopi Top Cappucino ', 27, 0, 1250, 2000, 'default-product.jpg', 2, 1),
(415, 'SPW', 4, 4, 0, 'Roma Arden', 10, 0, 1780, 2000, 'default-product.jpg', 2, 1),
(416, 'SPW', 12, 4, 0, 'Neo Moccacino', 10, 0, 1180, 2000, 'default-product.jpg', 2, 1),
(417, 'SPW', 9, 4, 0, 'Bodrex', 10, 0, 780, 1000, 'default-product.jpg', 2, 1),
(418, 'SPW', 9, 4, 0, 'Bodrex Migra', 4, 0, 538, 1000, 'default-product.jpg', 2, 1),
(419, 'SPW', 9, 4, 0, 'Minyak Kayu Putih Cap Lang', 8, 0, 5800, 6500, 'default-product.jpg', 2, 1),
(420, 'SPW', 8, 4, 0, 'Buku Sidu', 10, 0, 3200, 4000, 'default-product.jpg', 2, 1),
(421, 'SPW', 5, 4, 0, 'Sido Muncul Tolak Angin Permen Herbal', 5, 0, 1850, 2500, 'default-product.jpg', 2, 1),
(422, '', 6, 1, 0, 'AICE Blueberry Cookies Stick 65g', 24, 0, 4800, 6000, 'default-product.jpg', 2, 1),
(423, 'SPW', 4, 4, 0, 'Nabati Wafer 1000 Keju', 20, 0, 900, 1000, 'default-product.jpg', 2, 1),
(424, 'SPW', 2, 3, 0, 'Fruitea Genggam Apple 200 ml', 24, 0, 2146, 3000, 'default-product.jpg', 2, 1),
(425, 'SPW', 2, 3, 0, 'Fruitea Genggam Blackcurrant 200 ml', 24, 0, 2146, 3000, 'default-product.jpg', 2, 1),
(426, 'SPW', 2, 3, 0, 'Fruitea Kotak Apple 250ml', 24, 0, 2260, 3000, 'default-product.jpg', 2, 1),
(427, 'SPW', 4, 4, 0, 'Fullo Pack Of Vanila Milk Isi 24', 96, 0, 450, 500, 'default-product.jpg', 2, 1),
(428, 'SPW', 4, 4, 0, 'Garuda Kacang Atom Rasa Original 42 g', 11, 0, 1850, 2000, 'default-product.jpg', 2, 1),
(429, 'SPW', 4, 4, 0, 'Lotte Chocopie ', 60, 0, 1750, 2000, 'default-product.jpg', 2, 1),
(430, '8885013130775', 6, 1, 0, 'AICE Durian Cup', 19, -4, 3209, 4000, 'default-product.jpg', 1, 1),
(431, 'SPW', 4, 4, 0, 'Corntoz', 0, 0, 900, 1000, 'default-product.jpg', 2, 1),
(434, 'SPW', 4, 4, 0, 'Nissin Walens Choco Soes 15g', 20, 0, 1650, 2000, 'default-product.jpg', 2, 1),
(435, 'SPW', 4, 4, 0, 'Roti Padimas', 25, 0, 1800, 2500, 'default-product.jpg', 2, 1),
(436, 'SPW', 10, 4, 0, 'Minyak Bunda 1000', 10, 0, 900, 1000, 'default-product.jpg', 2, 1),
(437, '8993176110098', 9, 4, 0, 'Minyak Kayu Putih Cap Lang 15 ml', 0, 0, 5800, 6500, 'default-product.jpg', 1, 1),
(438, '8999908039309', 9, 4, 0, 'Oskadon Biru', 0, 0, 450, 500, 'default-product.jpg', 1, 1),
(439, 'SPW', 4, 4, 0, 'Nabati Wafer (1000)', 0, 0, 950, 1000, 'default-product.jpg', 1, 1),
(440, '8888166995215', 4, 4, 0, 'Nissin Walens Choco Soes', 0, 0, 1650, 2000, 'default-product.jpg', 1, 1),
(441, '8992742370683', 10, 4, 0, 'Polytex Spon Cuci Piring', 7, 0, 2600, 3000, 'default-product.jpg', 1, 1),
(442, '8992775214008', 4, 4, 0, 'Garuda Kacang Atom 1000', 31, 0, 880, 1000, 'default-product.jpg', 1, 1),
(443, '8993004785139', 4, 4, 0, 'Smax Ring', 40, 0, 900, 1000, 'default-product.jpg', 1, 1),
(444, '8997004306455', 4, 4, 0, 'Suky Suky', 38, 0, 850, 1000, 'default-product.jpg', 1, 1),
(445, 'SPW', 4, 4, 0, 'Doritos 2000 Corn', 10, 0, 1750, 2000, 'default-product.jpg', 2, 1),
(446, 'SPW', 4, 4, 0, 'Khongguan Malkist Kelapa 1000', 20, 0, 880, 1000, 'default-product.jpg', 2, 1),
(447, 'SPW', 4, 0, 0, 'Oskadon Obat Sakit Kepala ', 8, 0, 450, 500, 'default-product.jpg', 2, 1),
(448, 'SPW', 9, 4, 0, 'Promaag', 36, 0, 203, 500, 'default-product.jpg', 2, 1),
(449, '8997225870780', 4, 4, 0, 'Potato Chips Sosis Jumbo', 8, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(450, '089686735017', 4, 4, 0, 'Chiki Net Potato Barbeque', 9, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(451, '8994834005510', 4, 4, 0, 'Mister French Fries', -3, 0, 1800, 2000, 'default-product.jpg', 1, 1),
(452, '8998866201353', 4, 4, 0, 'Kris Bee 1000', 19, 0, 900, 1000, 'default-product.jpg', 1, 1),
(453, 'SPW', 4, 4, 0, 'Jet Z', 7, 0, 900, 1000, 'default-product.jpg', 1, 1),
(454, '8991002501348', 4, 4, 0, 'Kenji Colak Colek 2000', 10, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(455, '8993175531863', 4, 4, 0, 'Nabati Wafer', 17, 0, 450, 500, 'default-product.jpg', 1, 1),
(457, '8996001313671', 4, 4, 0, 'Roma Apetito Sour Cream', 19, 0, 1709, 2000, 'default-product.jpg', 1, 1),
(458, 'SPW', 5, 4, 0, 'Yupi 500', 32, 0, 450, 500, 'default-product.jpg', 1, 1),
(459, 'SPW', 4, 4, 0, 'Good Time 2000', 10, 0, 1708, 2000, 'default-product.jpg', 1, 1),
(460, 'SPW', 4, 4, 0, 'Potato Q 2000', 0, 0, 1750, 2000, 'default-product.jpg', 2, 1),
(461, 'SPW', 4, 4, 0, 'Wafello 2000 Butter', 7, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(462, '8996001355046', 4, 4, 0, 'Superstar 1000', 22, 0, 900, 1000, 'default-product.jpg', 1, 1),
(463, 'SPW', 4, 4, 0, 'Gery Salut Wafer 2000', 6, 0, 1667, 2000, 'default-product.jpg', 1, 1),
(464, '', 2, 3, 0, 'Fruitea Genggam Freeze 200 ml', 24, 0, 2188, 3000, 'default-product.jpg', 1, 1),
(465, '', 4, 4, 0, 'So Klin Lantai Cirrus Lemon', 10, 0, 900, 1000, 'default-product.jpg', 2, 1),
(466, '8992761164546', 2, 2, 0, 'Nutriboost Strawberry', -4, 0, 5334, 7000, 'default-product.jpg', 1, 1),
(467, '8994171101289', 12, 4, 0, 'Luwak White Cofee', -2, 0, 1200, 2000, 'default-product.jpg', 1, 1),
(468, '', 10, 0, 0, 'Ladaku Merica Bubuk', 0, 0, 880, 1500, 'default-product.jpg', 1, 1),
(469, '8997011930612', 10, 4, 0, 'Ladaku Merica Bubuk', 0, 0, 880, 1500, 'default-product.jpg', 1, 1),
(470, '8998866201971', 12, 4, 0, 'Neo Coffee Mochacino', 0, 0, 780, 1500, 'default-product.jpg', 1, 1),
(471, '8991002101630', 12, 4, 0, 'ABC Susu', 4, 0, 1380, 2000, 'default-product.jpg', 1, 1),
(472, '', 10, 4, 0, 'Energen', -2, 0, 1850, 2500, 'default-product.jpg', 1, 1),
(473, '', 10, 4, 0, 'Royco Ayam/ Sapi', 0, 0, 458, 500, 'default-product.jpg', 1, 1),
(474, '', 8, 4, 0, 'Buku SIDU 38 L', -1, 0, 3300, 4000, 'default-product.jpg', 1, 1),
(475, '', 2, 3, 0, 'Fruitea Botol Lemon 350 mL', 12, 0, 3500, 4000, 'default-product.jpg', 2, 1),
(476, '8997225870766', 4, 4, 0, 'Potato Chip Rumput Laut', -8, 0, 1750, 2000, 'default-product.jpg', 1, 1),
(477, '7622210515285', 4, 4, 0, 'Mini Oreo Original', 0, 0, 1800, 2000, 'default-product.jpg', 1, 1),
(478, '', 2, 3, 0, 'Fruitea Botol Blackcurrant 350 ml', 30, 0, 3333, 4000, 'default-product.jpg', 1, 1),
(479, '', 0, 3, 0, 'Fruitea Botol Blackcurrant 500 ml', 0, 0, 0, 0, 'default-product.jpg', 1, 1),
(480, '', 4, 4, 0, 'Mini Oreo', 0, 0, 1800, 2000, 'default-product.jpg', 2, 1),
(481, '', 4, 4, 0, 'Energen', 0, 0, 1690, 2000, 'default-product.jpg', 2, 1),
(482, '', 10, 4, 0, 'Ladaku', 0, 0, 990, 1000, 'default-product.jpg', 2, 1),
(483, '8992761166205', 2, 2, 0, 'Frestea Madu 350ml', 48, 0, 3500, 4500, 'default-product.jpg', 1, 1),
(484, '8996006320117', 2, 3, 0, 'Teh Botol Kotak 200ml', 46, 0, 1583, 2500, 'default-product.jpg', 1, 1),
(485, '8996006856869', 2, 3, 0, 'Teh Botol Kotak 330ml', 50, 0, 2708, 3500, 'default-product.jpg', 1, 1),
(486, '8996006742025', 2, 3, 0, 'Fruit Tea Genggam Strawberry 200ml', 20, 0, 2188, 3000, 'default-product.jpg', 1, 1),
(487, '8992775312414', 4, 4, 0, 'Gery Salut Wafer Choco Hazelnut', 50, 0, 450, 500, 'default-product.jpg', 1, 1),
(488, '8996001313657', 4, 4, 0, 'Roma Apetito Tomato', 49, 0, 1705, 2000, 'default-product.jpg', 1, 1),
(489, '8992775203408', 4, 4, 0, 'Garuda Rosta Rasa Bawang', 47, 0, 850, 1000, 'default-product.jpg', 1, 1),
(490, '0101', 13, 5, 20, 'Seblak Polos Aboeya', -11, 120, 1800, 6000, 'default-product.jpg', 1, 1),
(491, '2334342', 13, 5, 21, 'Moring', 8, -2, 800, 1000, 'default-product.jpg', 1, 1),
(492, '320029928920019', 1, 4, 0, 'Aqua', 5, 15, 2500, 4000, 'default-product.jpg', 1, 1),
(493, '0102', 13, 5, 20, 'Seblak Toping Aboeya', 0, 10, 4300, 8000, 'default-product.jpg', 1, 1),
(494, '0103', 13, 5, 20, 'Cilok Goang Aboeya', 0, 0, 0, 5000, 'default-product.jpg', 1, 1),
(498, '0201', 14, 6, 27, 'Mie Goreng Pak Deri', 0, 0, 4300, 5000, 'default-product.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_categories`
--

CREATE TABLE `tbl_product_categories` (
  `id_category` int(11) NOT NULL,
  `category` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(12, 'Kopi'),
(13, 'Mitra'),
(14, 'Franchise');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_mutation`
--

CREATE TABLE `tbl_product_mutation` (
  `id_mutation` int(11) NOT NULL,
  `date_mutation` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_mutation`
--

INSERT INTO `tbl_product_mutation` (`id_mutation`, `date_mutation`, `id_user`, `id_lab`) VALUES
(1, '2023-02-17', 1, 1),
(2, '2023-02-19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_mutation_detail`
--

CREATE TABLE `tbl_product_mutation_detail` (
  `id_mutation_detail` int(11) NOT NULL,
  `id_mutation` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_mutation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_mutation_detail`
--

INSERT INTO `tbl_product_mutation_detail` (`id_mutation_detail`, `id_mutation`, `id_product`, `qty_mutation`) VALUES
(5, 1, 318, 20),
(6, 1, 104, 20),
(7, 2, 103, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_place`
--

CREATE TABLE `tbl_product_place` (
  `id_place` int(11) NOT NULL,
  `place` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_place`
--

INSERT INTO `tbl_product_place` (`id_place`, `place`) VALUES
(1, 'Es Krim (AICE)'),
(2, 'Showcase Coca-Cola'),
(3, 'Showcase Sosro'),
(4, 'Etalase'),
(5, 'Mitra'),
(6, 'Franchise');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(33, '2022-09-14', 4, 5, 1),
(34, '2022-09-14', 3, 5, 1),
(35, '2022-09-14', 3, 4, 2),
(36, '2022-09-19', 1, 4, 2),
(37, '2022-09-20', 3, 5, 1),
(38, '2022-09-20', 1, 5, 1),
(39, '2022-09-20', 3, 4, 2),
(40, '2022-09-20', 5, 4, 2),
(41, '2022-09-21', 1, 4, 2),
(42, '2022-09-21', 5, 4, 2),
(43, '2022-09-21', 5, 5, 1),
(44, '2022-09-23', 3, 5, 1),
(45, '2022-09-23', 3, 4, 2),
(46, '2022-09-26', 1, 4, 2),
(47, '2022-09-27', 4, 4, 2),
(48, '2022-09-28', 5, 4, 2),
(49, '2022-09-29', 3, 4, 2),
(50, '2022-10-03', 1, 4, 2),
(51, '2022-10-04', 5, 4, 2),
(52, '2022-10-05', 3, 4, 2),
(53, '2022-10-06', 1, 4, 2),
(54, '2022-10-08', 4, 4, 2),
(55, '2022-10-11', 3, 5, 1),
(56, '2022-10-11', 3, 4, 2),
(57, '2022-10-11', 1, 4, 2),
(58, '2022-10-12', 5, 4, 2),
(59, '2022-10-03', 1, 5, 1),
(60, '2022-10-17', 1, 4, 2),
(61, '2022-10-17', 3, 5, 1),
(62, '2022-10-17', 4, 5, 1),
(63, '2022-10-17', 5, 5, 1),
(64, '2022-10-17', 1, 5, 1),
(65, '2022-10-17', 3, 4, 2),
(66, '2022-10-19', 5, 4, 2),
(67, '2022-10-19', 1, 4, 2),
(68, '2022-10-20', 4, 4, 2),
(69, '2022-10-20', 1, 4, 1),
(70, '2022-10-24', 1, 4, 2),
(71, '2022-10-25', 5, 5, 1),
(72, '2022-10-25', 3, 4, 2),
(73, '2022-10-26', 4, 5, 1),
(74, '2022-10-26', 3, 5, 1),
(75, '2022-10-26', 1, 5, 1);

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
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_purchase_detail`
--

INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_basic_price`, `total_selling_price`) VALUES
(24, 10, 141, 100, 1900, 190000, 0),
(25, 10, 157, 40, 2412, 96480, 0),
(26, 10, 139, 80, 1912, 152960, 0),
(27, 10, 154, 120, 2362, 283440, 0),
(28, 10, 149, 60, 3017, 181020, 0),
(29, 10, 146, 60, 1558, 93480, 0),
(30, 10, 151, 50, 1540, 77000, 0),
(31, 10, 150, 50, 1540, 77000, 0),
(32, 10, 152, 40, 2750, 110000, 0),
(33, 11, 188, 15, 1800, 27000, 0),
(34, 11, 230, 96, 813, 78048, 0),
(35, 11, 313, 50, 130, 6500, 0),
(36, 11, 314, 50, 130, 6500, 0),
(37, 11, 182, 100, 104, 10400, 0),
(38, 11, 196, 48, 450, 21600, 0),
(39, 11, 198, 40, 870, 34800, 0),
(40, 11, 189, 51, 1700, 86700, 0),
(41, 11, 236, 48, 813, 39024, 0),
(42, 11, 209, 60, 450, 27000, 0),
(43, 11, 213, 24, 1817, 43608, 0),
(44, 11, 214, 24, 1750, 42000, 0),
(45, 11, 246, 20, 850, 17000, 0),
(46, 11, 215, 24, 450, 10800, 0),
(47, 11, 217, 10, 2000, 20000, 0),
(48, 11, 222, 20, 1750, 35000, 0),
(49, 11, 315, 2, 6200, 12400, 0),
(50, 11, 223, 24, 1750, 42000, 0),
(51, 11, 224, 24, 1750, 42000, 0),
(52, 11, 229, 24, 1335, 32040, 0),
(53, 12, 43, 96, 813, 78048, 0),
(54, 12, 47, 40, 196, 7840, 0),
(55, 12, 134, 96, 281, 26976, 0),
(56, 12, 4, 240, 1520, 364800, 0),
(57, 12, 105, 100, 106, 10600, 0),
(58, 12, 88, 48, 804, 38592, 0),
(59, 12, 16, 51, 1700, 86700, 0),
(60, 12, 121, 15, 1800, 27000, 0),
(62, 11, 202, 40, 425, 17000, 0),
(63, 11, 228, 40, 425, 17000, 0),
(65, 11, 316, 10, 3300, 33000, 0),
(66, 11, 317, 20, 900, 18000, 0),
(67, 11, 172, 96, 281, 26976, 0),
(68, 11, 136, 240, 958, 229920, 0),
(69, 13, 79, 120, 3958, 474960, 0),
(70, 13, 81, 60, 2375, 142500, 0),
(71, 13, 80, 60, 3958, 237480, 0),
(72, 13, 82, 60, 2375, 142500, 0),
(73, 13, 83, 60, 2375, 142500, 0),
(74, 13, 85, 60, 3958, 237480, 0),
(75, 12, 87, 40, 900, 36000, 0),
(76, 12, 120, 24, 1750, 42000, 0),
(77, 12, 38, 24, 1750, 42000, 0),
(78, 12, 37, 20, 1750, 35000, 0),
(79, 12, 123, 20, 840, 16800, 0),
(80, 12, 29, 60, 450, 27000, 0),
(81, 12, 31, 24, 1667, 40008, 0),
(82, 12, 126, 10, 2000, 20000, 0),
(83, 12, 33, 24, 450, 10800, 0),
(84, 12, 18, 20, 900, 18000, 0),
(85, 12, 319, 20, 1600, 32000, 0),
(86, 14, 152, 80, 2750, 220000, 0),
(87, 14, 154, 80, 2362, 188960, 0),
(89, 14, 147, 40, 1912, 76480, 0),
(90, 14, 150, 50, 1540, 77000, 0),
(92, 14, 335, 24, 4042, 97008, 0),
(93, 16, 92, 50, 1540, 77000, 0),
(94, 16, 101, 80, 2750, 220000, 0),
(95, 16, 91, 50, 1540, 77000, 0),
(96, 16, 93, 120, 3500, 420000, 0),
(97, 16, 97, 80, 1912, 152960, 0),
(98, 16, 90, 60, 1558, 93480, 0),
(100, 16, 291, 40, 2313, 92520, 0),
(101, 16, 294, 40, 2313, 92520, 0),
(102, 16, 318, 72, 4063, 292536, 0),
(103, 16, 102, 24, 4041, 96984, 0),
(104, 15, 336, 5, 14000, 70000, 0),
(105, 15, 188, 10, 1800, 18000, 0),
(106, 15, 191, 20, 900, 18000, 0),
(107, 15, 196, 24, 450, 10800, 0),
(108, 15, 208, 24, 875, 21000, 0),
(109, 15, 213, 12, 1817, 21804, 0),
(110, 15, 210, 10, 900, 9000, 0),
(111, 15, 215, 24, 450, 10800, 0),
(112, 15, 222, 20, 1750, 35000, 0),
(113, 15, 223, 24, 1750, 42000, 0),
(114, 15, 281, 12, 1791, 21492, 0),
(115, 15, 229, 24, 1335, 32040, 0),
(116, 15, 230, 24, 813, 19512, 0),
(117, 15, 234, 12, 875, 10500, 0),
(118, 15, 136, 48, 958, 45984, 0),
(119, 15, 216, 48, 446, 21408, 0),
(120, 17, 166, 240, 3500, 840000, 0),
(121, 18, 144, 160, 2425, 388000, 0),
(122, 18, 148, 40, 2313, 92520, 0),
(123, 18, 160, 24, 4062, 97488, 0),
(124, 18, 159, 24, 4062, 97488, 0),
(125, 18, 140, 48, 4062, 194976, 0),
(126, 18, 154, 80, 2362, 188960, 0),
(127, 18, 146, 60, 1558, 93480, 0),
(128, 18, 137, 40, 2313, 92520, 0),
(129, 18, 337, 48, 3208, 153984, 0),
(130, 20, 168, 36, 3833, 137988, 0),
(131, 19, 92, 50, 1550, 77500, 0),
(132, 20, 167, 24, 5333, 127992, 0),
(133, 19, 101, 80, 2750, 220000, 0),
(134, 19, 91, 50, 1550, 77500, 0),
(135, 19, 93, 120, 2362, 283440, 0),
(136, 20, 170, 36, 3958, 142488, 0),
(137, 19, 97, 80, 1913, 153040, 0),
(138, 19, 90, 60, 1558, 93480, 0),
(139, 19, 94, 40, 2313, 92520, 0),
(140, 19, 291, 40, 2313, 92520, 0),
(141, 20, 165, 36, 2375, 85500, 0),
(142, 20, 163, 36, 2375, 85500, 0),
(143, 19, 102, 24, 4042, 97008, 0),
(144, 19, 99, 40, 2425, 97000, 0),
(145, 21, 188, 25, 1800, 45000, 0),
(146, 21, 230, 48, 813, 39024, 0),
(147, 21, 182, 150, 106, 15900, 0),
(148, 21, 184, 150, 170, 25500, 0),
(149, 21, 189, 17, 1710, 29070, 0),
(150, 21, 189, 34, 1700, 57800, 0),
(151, 21, 211, 20, 880, 17600, 0),
(152, 21, 213, 24, 1817, 43608, 0),
(153, 21, 217, 5, 2000, 10000, 0),
(154, 21, 219, 60, 450, 27000, 0),
(155, 21, 221, 40, 450, 18000, 0),
(156, 21, 221, 40, 425, 17000, 0),
(157, 21, 222, 20, 1750, 35000, 0),
(158, 21, 227, 20, 900, 18000, 0),
(159, 21, 281, 24, 1791, 42984, 0),
(160, 21, 230, 48, 813, 39024, 0),
(161, 21, 177, 24, 813, 19512, 0),
(162, 22, 295, 48, 1500, 72000, 0),
(163, 22, 296, 24, 2083, 49992, 0),
(164, 22, 297, 48, 2146, 103008, 0),
(165, 22, 298, 48, 2625, 126000, 0),
(166, 22, 299, 12, 3333, 39996, 0),
(167, 22, 343, 12, 3333, 39996, 0),
(168, 22, 344, 12, 3333, 39996, 0),
(169, 22, 345, 12, 3333, 39996, 0),
(170, 22, 346, 24, 2146, 51504, 0),
(171, 22, 300, 24, 2146, 51504, 0),
(172, 22, 301, 24, 4167, 100008, 0),
(173, 22, 302, 24, 3333, 79992, 0),
(174, 22, 303, 24, 3333, 79992, 0),
(175, 22, 304, 48, 1354, 64992, 0),
(176, 22, 308, 24, 3375, 81000, 0),
(177, 22, 310, 48, 3333, 159984, 0),
(178, 22, 348, 24, 2355, 56520, 0),
(179, 22, 347, 24, 2355, 56520, 0),
(180, 22, 349, 24, 2355, 56520, 0),
(181, 22, 341, 24, 1771, 42504, 0),
(182, 22, 331, 12, 5120, 61440, 0),
(183, 22, 350, 24, 3375, 81000, 0),
(184, 23, 76, 5, 2500, 12500, 0),
(185, 23, 53, 10, 2675, 26750, 0),
(186, 23, 52, 10, 2525, 25250, 0),
(187, 23, 55, 10, 2525, 25250, 0),
(188, 23, 54, 10, 2363, 23630, 0),
(189, 23, 121, 5, 1800, 9000, 0),
(190, 23, 105, 100, 106, 10600, 0),
(191, 23, 322, 48, 450, 21600, 0),
(192, 23, 48, 100, 120, 12000, 0),
(193, 23, 110, 100, 138, 13800, 0),
(194, 23, 18, 20, 900, 18000, 0),
(195, 23, 88, 24, 813, 19512, 0),
(196, 23, 111, 48, 450, 21600, 0),
(197, 23, 25, 20, 850, 17000, 0),
(198, 23, 113, 48, 450, 21600, 0),
(199, 23, 29, 40, 450, 18000, 0),
(200, 23, 117, 20, 880, 17600, 0),
(201, 23, 324, 20, 850, 17000, 0),
(202, 23, 31, 24, 1667, 40008, 0),
(203, 23, 33, 48, 450, 21600, 0),
(204, 23, 126, 10, 2000, 20000, 0),
(205, 23, 35, 40, 450, 18000, 0),
(206, 23, 35, 40, 450, 18000, 0),
(207, 23, 36, 80, 450, 36000, 0),
(208, 23, 351, 10, 1800, 18000, 0),
(209, 23, 120, 24, 1750, 42000, 0),
(210, 23, 120, 24, 1750, 42000, 0),
(211, 23, 120, 24, 1750, 42000, 0),
(212, 23, 38, 24, 1750, 42000, 0),
(213, 23, 24, 60, 425, 25500, 0),
(214, 23, 39, 20, 1780, 35600, 0),
(215, 23, 41, 20, 900, 18000, 0),
(216, 23, 127, 40, 375, 15000, 0),
(217, 23, 130, 10, 2700, 27000, 0),
(218, 23, 11, 24, 813, 19512, 0),
(219, 23, 2, 240, 292, 70080, 0),
(220, 23, 4, 240, 1520, 364800, 0),
(221, 23, 69, 20, 440, 8800, 0),
(222, 23, 353, 10, 2200, 22000, 0),
(223, 23, 352, 10, 11000, 110000, 0),
(224, 24, 157, 80, 2412, 192960, 0),
(225, 24, 140, 24, 4062, 97488, 0),
(226, 24, 139, 80, 1912, 152960, 0),
(227, 24, 154, 120, 2362, 283440, 0),
(228, 24, 141, 100, 1900, 190000, 0),
(229, 24, 146, 120, 1558, 186960, 0),
(230, 24, 158, 40, 4000, 160000, 0),
(231, 24, 152, 80, 2750, 220000, 0),
(232, 24, 150, 100, 1540, 154000, 0),
(233, 24, 151, 100, 1540, 154000, 0),
(234, 24, 355, 50, 1940, 97000, 0),
(235, 21, 263, 10, 11000, 110000, 0),
(236, 21, 189, 34, 1710, 58140, 0),
(237, 21, 281, 12, 1791, 21492, 0),
(238, 21, 172, 240, 292, 70080, 0),
(239, 21, 136, 360, 958, 344880, 0),
(240, 25, 188, 16, 1800, 28800, 0),
(241, 25, 313, 50, 130, 6500, 0),
(242, 25, 196, 72, 450, 32400, 0),
(243, 25, 185, 100, 120, 12000, 0),
(244, 25, 357, 50, 120, 6000, 0),
(245, 25, 209, 20, 450, 9000, 0),
(246, 25, 222, 60, 1750, 105000, 0),
(247, 25, 223, 48, 1750, 84000, 0),
(248, 25, 228, 40, 450, 18000, 0),
(249, 25, 226, 12, 1792, 21504, 0),
(250, 25, 237, 20, 900, 18000, 0),
(251, 25, 253, 30, 430, 12900, 0),
(252, 26, 188, 30, 1800, 54000, 0),
(253, 26, 230, 100, 813, 81300, 0),
(254, 26, 189, 34, 1710, 58140, 0),
(255, 26, 190, 30, 854, 25620, 0),
(256, 26, 224, 36, 1792, 64512, 0),
(257, 26, 203, 10, 1850, 18500, 0),
(258, 26, 206, 48, 438, 21024, 0),
(260, 26, 208, 48, 875, 42000, 0),
(261, 26, 209, 20, 450, 9000, 0),
(262, 26, 213, 24, 1817, 43608, 0),
(263, 26, 214, 12, 1792, 21504, 0),
(264, 26, 218, 40, 875, 35000, 0),
(265, 26, 356, 10, 3700, 37000, 0),
(266, 26, 222, 30, 1750, 52500, 0),
(267, 26, 229, 24, 1335, 32040, 0),
(268, 26, 226, 24, 1792, 43008, 0),
(269, 26, 268, 20, 1130, 22600, 0),
(270, 26, 267, 10, 1180, 11800, 0),
(271, 26, 289, 40, 560, 22400, 0),
(272, 26, 136, 96, 958, 91968, 0),
(273, 26, 272, 12, 1625, 19500, 0),
(274, 26, 204, 40, 850, 34000, 0),
(275, 26, 358, 24, 1733, 41592, 0),
(276, 27, 164, 36, 3958, 142488, 0),
(277, 27, 170, 36, 3958, 142488, 0),
(278, 27, 138, 36, 3958, 142488, 0),
(279, 27, 169, 24, 2375, 57000, 0),
(280, 27, 163, 24, 2375, 57000, 0),
(281, 27, 165, 24, 2375, 57000, 0),
(282, 27, 168, 24, 3833, 91992, 0),
(283, 27, 167, 24, 5333, 127992, 0),
(284, 28, 92, 50, 1550, 77500, 0),
(285, 28, 101, 80, 2750, 220000, 0),
(286, 28, 91, 50, 1550, 77500, 0),
(287, 28, 93, 120, 2362, 283440, 0),
(288, 28, 97, 80, 1913, 153040, 0),
(289, 28, 90, 60, 1558, 93480, 0),
(290, 28, 294, 40, 2313, 92520, 0),
(291, 28, 291, 40, 2313, 92520, 0),
(292, 28, 104, 48, 4062, 194976, 0),
(293, 28, 102, 24, 4042, 97008, 0),
(294, 28, 100, 40, 4000, 160000, 0),
(295, 28, 361, 30, 3017, 90510, 0),
(296, 29, 188, 25, 1800, 45000, 0),
(297, 29, 214, 12, 1792, 21504, 0),
(298, 29, 199, 24, 1667, 40008, 0),
(299, 29, 208, 12, 875, 10500, 0),
(300, 29, 209, 40, 450, 18000, 0),
(301, 29, 213, 24, 1817, 43608, 0),
(302, 29, 214, 24, 1792, 43008, 0),
(303, 29, 222, 20, 1750, 35000, 0),
(304, 29, 226, 36, 1792, 64512, 0),
(305, 29, 180, 15, 4300, 64500, 0),
(306, 29, 136, 120, 958, 114960, 0),
(307, 32, 121, 5, 1800, 9000, 0),
(308, 32, 320, 100, 130, 13000, 0),
(309, 32, 22, 48, 795, 38160, 0),
(310, 32, 48, 100, 120, 12000, 0),
(311, 32, 110, 100, 138, 13800, 0),
(312, 32, 111, 48, 450, 21600, 0),
(313, 32, 25, 20, 850, 17000, 0),
(314, 32, 113, 24, 450, 10800, 0),
(315, 32, 29, 40, 450, 18000, 0),
(316, 32, 354, 20, 880, 17600, 0),
(317, 32, 112, 20, 1254, 25080, 0),
(318, 32, 324, 20, 850, 17000, 0),
(319, 32, 31, 24, 1667, 40008, 0),
(320, 32, 126, 11, 2000, 22000, 0),
(321, 32, 120, 24, 1750, 42000, 0),
(322, 32, 38, 24, 1750, 42000, 0),
(323, 32, 24, 60, 425, 25500, 0),
(324, 32, 39, 20, 1780, 35600, 0),
(325, 32, 41, 20, 900, 18000, 0),
(326, 32, 130, 10, 2700, 27000, 0),
(327, 32, 11, 24, 813, 19512, 0),
(328, 32, 2, 240, 292, 70080, 0),
(329, 32, 4, 240, 1520, 364800, 0),
(330, 31, 83, 12, 2375, 28500, 0),
(331, 31, 81, 84, 2375, 199500, 0),
(332, 31, 80, 132, 3958, 522456, 0),
(333, 31, 79, 72, 3958, 284976, 0),
(334, 31, 85, 48, 3958, 189984, 0),
(335, 31, 339, 48, 3500, 168000, 0),
(336, 31, 78, 12, 3833, 45996, 0),
(337, 31, 86, 72, 5333, 383976, 0),
(338, 32, 363, 11, 1800, 19800, 0),
(339, 32, 362, 20, 900, 18000, 0),
(340, 30, 364, 12, 14167, 170004, 0),
(341, 30, 121, 5, 1800, 9000, 0),
(342, 30, 322, 48, 450, 21600, 0),
(343, 30, 48, 50, 120, 6000, 0),
(344, 30, 110, 50, 138, 6900, 0),
(345, 30, 18, 20, 900, 18000, 0),
(346, 30, 23, 24, 1567, 37608, 0),
(347, 30, 25, 20, 850, 17000, 0),
(348, 30, 113, 72, 450, 32400, 0),
(349, 30, 114, 40, 850, 34000, 0),
(350, 30, 29, 40, 450, 18000, 0),
(351, 30, 30, 20, 850, 17000, 0),
(352, 30, 118, 20, 840, 16800, 0),
(353, 30, 31, 24, 1867, 44808, 0),
(354, 30, 33, 48, 450, 21600, 0),
(355, 30, 35, 40, 450, 18000, 0),
(356, 30, 36, 80, 450, 36000, 0),
(357, 30, 120, 24, 1792, 43008, 0),
(358, 30, 38, 24, 1792, 43008, 0),
(359, 30, 24, 60, 425, 25500, 0),
(360, 30, 39, 20, 1780, 35600, 0),
(361, 30, 41, 60, 900, 54000, 0),
(362, 30, 9, 48, 1042, 50016, 0),
(363, 30, 130, 10, 2700, 27000, 0),
(364, 30, 10, 48, 1042, 50016, 0),
(365, 30, 73, 72, 875, 63000, 0),
(366, 30, 2, 240, 292, 70080, 0),
(367, 30, 4, 240, 1520, 364800, 0),
(368, 30, 353, 10, 2200, 22000, 0),
(369, 30, 365, 50, 115, 5750, 0),
(370, 30, 366, 40, 150, 6000, 0),
(371, 30, 367, 10, 3700, 37000, 0),
(372, 35, 157, 80, 2412, 192960, 0),
(373, 35, 159, 48, 4062, 194976, 0),
(374, 35, 139, 40, 1912, 76480, 0),
(375, 35, 154, 160, 2362, 377920, 0),
(376, 35, 158, 40, 4000, 160000, 0),
(377, 35, 152, 80, 2750, 220000, 0),
(378, 35, 137, 80, 2313, 185040, 0),
(379, 35, 148, 40, 2313, 92520, 0),
(380, 33, 301, 24, 4167, 100008, 0),
(381, 33, 350, 24, 3375, 81000, 0),
(382, 33, 311, 12, 4750, 57000, 0),
(383, 33, 343, 12, 3333, 39996, 0),
(384, 33, 345, 12, 3333, 39996, 0),
(385, 33, 344, 12, 3333, 39996, 0),
(386, 33, 346, 24, 2146, 51504, 0),
(387, 33, 349, 24, 2355, 56520, 0),
(388, 33, 347, 24, 2355, 56520, 0),
(389, 33, 341, 24, 1771, 42504, 0),
(390, 33, 333, 24, 1771, 42504, 0),
(391, 33, 305, 48, 1188, 57024, 0),
(392, 33, 304, 48, 1354, 64992, 0),
(393, 33, 306, 48, 469, 22512, 0),
(394, 33, 296, 24, 2083, 49992, 0),
(395, 33, 295, 48, 1500, 72000, 0),
(396, 33, 310, 48, 3333, 159984, 0),
(397, 33, 331, 12, 5120, 61440, 0),
(398, 33, 297, 48, 2146, 103008, 0),
(399, 33, 298, 48, 2625, 126000, 0),
(400, 33, 308, 24, 3375, 81000, 0),
(401, 33, 303, 24, 3333, 79992, 0),
(402, 33, 302, 24, 3333, 79992, 0),
(403, 33, 300, 12, 3333, 39996, 0),
(404, 34, 101, 80, 2750, 220000, 0),
(405, 34, 93, 80, 2362, 188960, 0),
(406, 34, 91, 50, 1550, 77500, 0),
(407, 34, 291, 40, 2313, 92520, 0),
(408, 34, 97, 40, 1913, 76520, 0),
(409, 34, 90, 60, 1558, 93480, 0),
(410, 34, 89, 50, 1550, 77500, 0),
(411, 34, 361, 30, 3017, 90510, 0),
(412, 34, 369, 40, 2363, 94520, 0),
(413, 34, 370, 48, 4063, 195024, 0),
(414, 34, 371, 24, 4042, 97008, 0),
(415, 36, 188, 30, 1800, 54000, 0),
(416, 36, 196, 48, 450, 21600, 0),
(417, 36, 183, 50, 120, 6000, 0),
(418, 36, 184, 100, 170, 17000, 0),
(419, 36, 187, 50, 138, 6900, 0),
(420, 36, 189, 34, 1706, 58004, 0),
(421, 36, 191, 10, 900, 9000, 0),
(422, 36, 236, 48, 813, 39024, 0),
(423, 36, 216, 48, 730, 35040, 0),
(424, 36, 375, 20, 880, 17600, 0),
(425, 36, 215, 48, 450, 21600, 0),
(426, 36, 226, 24, 1792, 43008, 0),
(427, 36, 230, 24, 813, 19512, 0),
(428, 36, 173, 48, 825, 39600, 0),
(429, 36, 278, 100, 285, 28500, 0),
(430, 36, 258, 20, 900, 18000, 0),
(431, 36, 260, 10, 1750, 17500, 0),
(432, 36, 376, 24, 1063, 25512, 0),
(433, 29, 377, 12, 875, 10500, 0),
(434, 37, 91, 50, 1550, 77500, 0),
(435, 37, 101, 80, 2750, 220000, 0),
(436, 37, 93, 120, 2362, 283440, 0),
(437, 37, 97, 40, 1913, 76520, 0),
(438, 37, 90, 120, 1558, 186960, 0),
(439, 37, 291, 40, 2313, 92520, 0),
(440, 37, 99, 80, 2425, 194000, 0),
(441, 37, 361, 30, 3017, 90510, 0),
(442, 39, 378, 150, 1550, 232500, 0),
(443, 39, 151, 150, 1550, 232500, 0),
(444, 39, 150, 100, 1550, 155000, 0),
(445, 39, 146, 120, 1558, 186960, 0),
(446, 39, 144, 40, 2425, 97000, 0),
(447, 39, 379, 150, 1560, 234000, 0),
(448, 39, 152, 40, 2750, 110000, 0),
(449, 39, 154, 80, 2362, 188960, 0),
(450, 40, 169, 48, 2375, 114000, 0),
(451, 40, 163, 48, 2375, 114000, 0),
(452, 40, 165, 60, 2375, 142500, 0),
(453, 40, 170, 12, 3958, 47496, 0),
(454, 40, 164, 12, 3958, 47496, 0),
(455, 40, 167, 24, 5333, 127992, 0),
(456, 40, 138, 12, 3958, 47496, 0),
(457, 40, 168, 12, 3833, 45996, 0),
(458, 41, 188, 10, 1800, 18000, 0),
(459, 41, 180, 10, 4300, 43000, 0),
(460, 41, 316, 12, 3300, 39600, 0),
(461, 41, 180, 10, 4300, 43000, 0),
(462, 41, 136, 240, 958, 229920, 0),
(463, 41, 180, 5, 4300, 21500, 0),
(464, 41, 172, 240, 292, 70080, 0),
(465, 42, 168, 12, 3833, 45996, 0),
(466, 42, 170, 24, 3958, 94992, 0),
(467, 42, 166, 36, 3500, 126000, 0),
(468, 42, 138, 24, 3958, 94992, 0),
(469, 42, 167, 24, 5333, 127992, 0),
(470, 42, 164, 36, 3958, 142488, 0),
(471, 44, 101, 80, 2750, 220000, 0),
(472, 44, 91, 50, 1550, 77500, 0),
(473, 44, 93, 120, 2362, 283440, 0),
(474, 44, 97, 40, 1913, 76520, 0),
(475, 44, 90, 120, 1558, 186960, 0),
(476, 44, 291, 40, 2313, 92520, 0),
(477, 44, 99, 80, 2425, 194000, 0),
(478, 44, 361, 30, 3017, 90510, 0),
(479, 44, 100, 40, 4000, 160000, 0),
(480, 45, 144, 160, 2425, 388000, 0),
(481, 45, 147, 80, 1912, 152960, 0),
(482, 45, 142, 40, 4000, 160000, 0),
(483, 45, 381, 40, 2313, 92520, 0),
(484, 43, 339, 48, 3500, 168000, 0),
(485, 43, 86, 48, 5334, 256032, 0),
(486, 43, 83, 48, 2375, 114000, 0),
(487, 43, 85, 36, 3958, 142488, 0),
(488, 43, 81, 36, 2375, 85500, 0),
(489, 43, 79, 24, 3958, 94992, 0),
(490, 38, 320, 100, 130, 13000, 0),
(491, 38, 121, 5, 1800, 9000, 0),
(492, 38, 322, 24, 450, 10800, 0),
(493, 38, 48, 50, 120, 6000, 0),
(494, 38, 110, 50, 138, 6900, 0),
(495, 38, 18, 20, 900, 18000, 0),
(496, 38, 88, 48, 813, 39024, 0),
(497, 38, 23, 24, 1567, 37608, 0),
(498, 38, 25, 20, 850, 17000, 0),
(499, 38, 113, 72, 450, 32400, 0),
(500, 38, 26, 40, 440, 17600, 0),
(501, 38, 29, 20, 450, 9000, 0),
(502, 38, 30, 20, 850, 17000, 0),
(503, 38, 118, 20, 840, 16800, 0),
(504, 38, 31, 24, 1867, 44808, 0),
(505, 38, 33, 48, 450, 21600, 0),
(506, 38, 367, 10, 4000, 40000, 0),
(507, 38, 122, 40, 450, 18000, 0),
(508, 38, 36, 80, 450, 36000, 0),
(509, 38, 120, 24, 1792, 43008, 0),
(510, 38, 38, 24, 1792, 43008, 0),
(511, 38, 24, 60, 425, 25500, 0),
(512, 38, 39, 20, 1780, 35600, 0),
(513, 38, 41, 60, 900, 54000, 0),
(514, 38, 382, 24, 900, 21600, 0),
(515, 38, 2, 240, 292, 70080, 0),
(516, 38, 4, 240, 1520, 364800, 0),
(517, 38, 353, 10, 2200, 22000, 0),
(518, 46, 230, 48, 813, 39024, 0),
(519, 46, 313, 50, 130, 6500, 0),
(520, 46, 182, 100, 110, 11000, 0),
(521, 46, 196, 48, 450, 21600, 0),
(522, 46, 198, 60, 900, 54000, 0),
(523, 46, 184, 100, 170, 17000, 0),
(524, 46, 189, 34, 1706, 58004, 0),
(525, 46, 236, 48, 813, 39024, 0),
(526, 46, 383, 20, 880, 17600, 0),
(527, 46, 375, 10, 880, 8800, 0),
(528, 46, 208, 24, 875, 21000, 0),
(529, 46, 384, 12, 875, 10500, 0),
(530, 46, 209, 20, 450, 9000, 0),
(531, 46, 213, 12, 1792, 21504, 0),
(532, 46, 227, 20, 850, 17000, 0),
(533, 46, 215, 24, 450, 10800, 0),
(534, 46, 219, 60, 450, 27000, 0),
(535, 46, 221, 80, 450, 36000, 0),
(536, 46, 223, 12, 1792, 21504, 0),
(537, 46, 202, 20, 440, 8800, 0),
(538, 46, 226, 24, 1792, 43008, 0),
(539, 46, 229, 24, 1335, 32040, 0),
(540, 46, 230, 48, 813, 39024, 0),
(541, 46, 230, 24, 813, 19512, 0),
(542, 46, 234, 24, 875, 21000, 0),
(543, 46, 180, 15, 4300, 64500, 0),
(544, 46, 136, 72, 958, 68976, 0),
(545, 46, 385, 4, 575, 2300, 0),
(546, 46, 386, 4, 613, 2452, 0),
(547, 46, 286, 18, 833, 14994, 0),
(548, 46, 287, 10, 2200, 22000, 0),
(549, 46, 168, 12, 3833, 45996, 0),
(550, 46, 387, 10, 850, 8500, 0),
(551, 47, 388, 24, 4167, 100008, 0),
(552, 47, 409, 24, 3375, 81000, 0),
(553, 48, 169, 48, 2375, 114000, 0),
(554, 48, 163, 36, 2375, 85500, 0),
(555, 48, 165, 12, 2375, 28500, 0),
(556, 48, 164, 12, 3958, 47496, 0),
(557, 48, 167, 36, 5333, 191988, 0),
(558, 47, 389, 12, 3333, 39996, 0),
(559, 47, 390, 12, 4790, 57480, 0),
(560, 47, 391, 12, 3333, 39996, 0),
(561, 47, 392, 12, 3333, 39996, 0),
(562, 47, 393, 24, 2146, 51504, 0),
(563, 47, 394, 24, 2146, 51504, 0),
(564, 47, 395, 24, 2354, 56496, 0),
(565, 47, 396, 24, 2354, 56496, 0),
(566, 47, 410, 24, 1771, 42504, 0),
(567, 47, 411, 24, 1771, 42504, 0),
(568, 47, 397, 48, 1186, 56928, 0),
(569, 47, 412, 48, 1354, 64992, 0),
(570, 47, 398, 96, 448, 43008, 0),
(571, 47, 399, 24, 2083, 49992, 0),
(572, 47, 400, 48, 1500, 72000, 0),
(573, 47, 401, 36, 3333, 119988, 0),
(574, 47, 402, 12, 4792, 57504, 0),
(575, 47, 403, 24, 2145, 51480, 0),
(576, 47, 404, 24, 2625, 63000, 0),
(577, 47, 405, 24, 3375, 81000, 0),
(578, 47, 406, 24, 3583, 85992, 0),
(579, 47, 408, 24, 3333, 79992, 0),
(580, 47, 407, 12, 3333, 39996, 0),
(581, 49, 157, 40, 2412, 96480, 0),
(582, 49, 140, 48, 4062, 194976, 0),
(583, 49, 139, 80, 1912, 152960, 0),
(584, 49, 154, 160, 2362, 377920, 0),
(585, 49, 152, 80, 2750, 220000, 0),
(586, 49, 146, 120, 1558, 186960, 0),
(587, 49, 142, 40, 4000, 160000, 0),
(588, 49, 413, 40, 2362, 94480, 0),
(589, 50, 357, 50, 108, 5400, 0),
(590, 50, 314, 50, 130, 6500, 0),
(591, 50, 182, 100, 110, 11000, 0),
(592, 50, 196, 72, 450, 32400, 0),
(593, 50, 198, 40, 900, 36000, 0),
(594, 50, 184, 150, 170, 25500, 0),
(595, 50, 185, 50, 120, 6000, 0),
(596, 50, 377, 24, 900, 21600, 0),
(597, 50, 189, 51, 1706, 87006, 0),
(598, 50, 193, 10, 1750, 17500, 0),
(599, 50, 209, 40, 450, 18000, 0),
(600, 50, 213, 24, 1792, 43008, 0),
(601, 50, 214, 24, 1792, 43008, 0),
(602, 50, 215, 48, 450, 21600, 0),
(603, 50, 387, 50, 850, 42500, 0),
(604, 50, 222, 40, 1750, 70000, 0),
(605, 50, 223, 36, 1792, 64512, 0),
(606, 50, 265, 24, 1792, 43008, 0),
(607, 50, 202, 80, 440, 35200, 0),
(608, 50, 228, 40, 450, 18000, 0),
(609, 50, 226, 24, 1792, 43008, 0),
(610, 50, 231, 30, 900, 27000, 0),
(611, 50, 202, 40, 440, 17600, 0),
(612, 50, 180, 20, 4300, 86000, 0),
(613, 50, 268, 10, 1130, 11300, 0),
(614, 50, 267, 20, 1180, 23600, 0),
(615, 50, 415, 10, 1780, 17800, 0),
(617, 50, 289, 10, 1120, 11200, 0),
(618, 50, 258, 6, 900, 5400, 0),
(619, 50, 416, 10, 1180, 11800, 0),
(620, 50, 172, 144, 292, 42048, 0),
(621, 50, 417, 10, 780, 7800, 0),
(622, 50, 418, 4, 538, 2152, 0),
(623, 50, 419, 5, 5800, 29000, 0),
(624, 50, 385, 12, 575, 6900, 0),
(625, 50, 253, 20, 440, 8800, 0),
(626, 50, 256, 10, 440, 4400, 0),
(627, 50, 251, 10, 470, 4700, 0),
(628, 50, 414, 15, 1000, 15000, 0),
(629, 50, 420, 10, 3200, 32000, 0),
(630, 50, 272, 24, 2041, 48984, 0),
(631, 50, 260, 6, 1750, 10500, 0),
(632, 50, 245, 6, 2600, 15600, 0),
(633, 50, 188, 10, 1800, 18000, 0),
(634, 50, 421, 5, 1850, 9250, 0),
(635, 50, 136, 216, 958, 206928, 0),
(636, 51, 168, 36, 3833, 137988, 0),
(637, 51, 167, 36, 5333, 191988, 0),
(638, 51, 166, 48, 3500, 168000, 0),
(639, 51, 169, 36, 2375, 85500, 0),
(640, 51, 163, 24, 2375, 57000, 0),
(641, 51, 165, 24, 2375, 57000, 0),
(642, 52, 157, 40, 2412, 96480, 0),
(643, 52, 162, 40, 2750, 110000, 0),
(644, 52, 154, 40, 2362, 94480, 0),
(645, 52, 144, 80, 2425, 194000, 0),
(646, 52, 422, 24, 4800, 115200, 0),
(647, 53, 188, 30, 1800, 54000, 0),
(648, 53, 180, 20, 4300, 86000, 0),
(649, 54, 388, 24, 4167, 100008, 0),
(650, 54, 409, 24, 3375, 81000, 0),
(651, 54, 389, 12, 3333, 39996, 0),
(652, 54, 390, 12, 4790, 57480, 0),
(653, 54, 391, 12, 3333, 39996, 0),
(654, 54, 392, 12, 3333, 39996, 0),
(655, 54, 424, 24, 2146, 51504, 0),
(656, 54, 425, 24, 2146, 51504, 0),
(657, 54, 395, 24, 2354, 56496, 0),
(658, 54, 396, 24, 2354, 56496, 0),
(659, 54, 410, 24, 1771, 42504, 0),
(660, 54, 411, 24, 1771, 42504, 0),
(661, 54, 397, 48, 1186, 56928, 0),
(662, 54, 412, 48, 1354, 64992, 0),
(663, 54, 398, 96, 448, 43008, 0),
(664, 54, 399, 24, 2083, 49992, 0),
(665, 54, 401, 36, 3333, 119988, 0),
(666, 54, 402, 12, 4792, 57504, 0),
(667, 54, 403, 24, 2145, 51480, 0),
(668, 54, 404, 24, 2625, 63000, 0),
(669, 54, 405, 24, 3375, 81000, 0),
(670, 54, 406, 24, 3583, 85992, 0),
(671, 54, 407, 24, 3333, 79992, 0),
(672, 54, 408, 24, 3333, 79992, 0),
(673, 54, 426, 24, 2260, 54240, 0),
(674, 55, 93, 120, 2362, 283440, 0),
(675, 55, 292, 48, 4062, 194976, 0),
(676, 55, 369, 80, 2363, 189040, 0),
(677, 55, 92, 100, 1550, 155000, 0),
(678, 55, 91, 100, 1550, 155000, 0),
(679, 55, 101, 40, 2750, 110000, 0),
(680, 55, 90, 120, 1558, 186960, 0),
(681, 55, 102, 24, 4042, 97008, 0),
(682, 55, 89, 40, 1940, 77600, 0),
(683, 56, 378, 150, 1550, 232500, 0),
(684, 56, 151, 100, 1550, 155000, 0),
(685, 56, 150, 150, 1550, 232500, 0),
(686, 56, 146, 120, 1558, 186960, 0),
(687, 56, 379, 50, 1560, 78000, 0),
(688, 56, 152, 80, 2750, 220000, 0),
(689, 56, 154, 80, 2362, 188960, 0),
(690, 56, 139, 80, 1912, 152960, 0),
(691, 56, 144, 80, 2425, 194000, 0),
(692, 57, 230, 48, 813, 39024, 0),
(693, 57, 189, 51, 1706, 87006, 0),
(694, 57, 191, 20, 900, 18000, 0),
(695, 57, 195, 40, 795, 31800, 0),
(697, 57, 427, 48, 450, 21600, 0),
(698, 57, 428, 6, 1850, 11100, 0),
(699, 57, 208, 36, 875, 31500, 0),
(700, 57, 209, 40, 450, 18000, 0),
(701, 57, 213, 24, 1792, 43008, 0),
(702, 57, 214, 24, 1792, 43008, 0),
(703, 57, 217, 10, 2200, 22000, 0),
(704, 57, 387, 40, 850, 34000, 0),
(705, 57, 219, 80, 450, 36000, 0),
(706, 57, 222, 30, 1750, 52500, 0),
(707, 57, 223, 24, 1792, 43008, 0),
(708, 57, 224, 24, 1792, 43008, 0),
(709, 57, 226, 36, 1792, 64512, 0),
(710, 57, 229, 24, 1335, 32040, 0),
(711, 57, 230, 48, 813, 39024, 0),
(712, 57, 180, 10, 4300, 43000, 0),
(713, 57, 172, 144, 292, 42048, 0),
(714, 57, 136, 192, 958, 183936, 0),
(715, 57, 429, 24, 1750, 42000, 0),
(716, 58, 164, 36, 3958, 142488, 0),
(717, 58, 138, 36, 3958, 142488, 0),
(718, 58, 169, 36, 2375, 85500, 0),
(719, 58, 170, 36, 3958, 142488, 0),
(720, 58, 163, 36, 2375, 85500, 0),
(721, 58, 165, 36, 2375, 85500, 0),
(722, 58, 167, 36, 5333, 191988, 0),
(723, 58, 166, 36, 3500, 126000, 0),
(724, 58, 168, 36, 3875, 139500, 0),
(725, 55, 430, 24, 3209, 77016, 0),
(726, 59, 4, 120, 1520, 182400, 0),
(727, 60, 255, 3, 1750, 5250, 0),
(728, 60, 336, 5, 14000, 70000, 0),
(729, 60, 198, 60, 900, 54000, 0),
(730, 60, 184, 100, 170, 17000, 0),
(731, 61, 101, 80, 2750, 220000, 0),
(732, 61, 93, 120, 2363, 283560, 0),
(733, 61, 97, 40, 1913, 76520, 0),
(734, 61, 90, 60, 1558, 93480, 0),
(735, 61, 104, 48, 4062, 194976, 0),
(736, 61, 361, 30, 3017, 90510, 0),
(737, 61, 99, 80, 2425, 194000, 0),
(738, 62, 301, 24, 4167, 100008, 0),
(739, 62, 350, 24, 3375, 81000, 0),
(740, 62, 299, 12, 3333, 39996, 0),
(741, 62, 311, 12, 4750, 57000, 0),
(742, 62, 343, 12, 3333, 39996, 0),
(743, 62, 345, 12, 3333, 39996, 0),
(744, 62, 346, 24, 2188, 52512, 0),
(745, 62, 432, 24, 2188, 52512, 0),
(746, 62, 348, 24, 2417, 58008, 0),
(747, 62, 349, 24, 2417, 58008, 0),
(748, 62, 341, 48, 1854, 88992, 0),
(749, 62, 305, 48, 1271, 61008, 0),
(750, 62, 304, 48, 1438, 69024, 0),
(751, 62, 306, 96, 469, 45024, 0),
(752, 62, 295, 48, 1583, 75984, 0),
(753, 62, 296, 24, 2208, 52992, 0),
(754, 62, 310, 36, 3500, 126000, 0),
(755, 62, 331, 12, 5120, 61440, 0),
(756, 62, 297, 24, 2188, 52512, 0),
(757, 62, 298, 24, 2708, 64992, 0),
(758, 62, 308, 24, 3583, 85992, 0),
(759, 62, 302, 24, 3500, 84000, 0),
(760, 62, 303, 24, 3500, 84000, 0),
(761, 62, 307, 24, 3792, 91008, 0),
(762, 63, 81, 36, 2375, 85500, 0),
(763, 63, 82, 36, 2375, 85500, 0),
(764, 63, 83, 36, 2375, 85500, 0),
(765, 63, 339, 72, 3500, 252000, 0),
(766, 63, 78, 60, 3833, 229980, 0),
(767, 63, 79, 24, 3958, 94992, 0),
(768, 63, 80, 24, 3958, 94992, 0),
(769, 63, 85, 24, 3958, 94992, 0),
(770, 64, 53, 10, 2675, 26750, 0),
(771, 64, 52, 10, 2525, 25250, 0),
(772, 64, 55, 10, 2525, 25250, 0),
(773, 64, 54, 10, 2363, 23630, 0),
(774, 64, 121, 5, 1800, 9000, 0),
(775, 64, 105, 50, 106, 5300, 0),
(776, 64, 127, 48, 375, 18000, 0),
(777, 60, 427, 48, 450, 21600, 0),
(778, 60, 375, 10, 880, 8800, 0),
(779, 60, 217, 5, 2200, 11000, 0),
(780, 60, 387, 60, 850, 51000, 0),
(781, 60, 222, 30, 1750, 52500, 0),
(782, 60, 226, 24, 1792, 43008, 0),
(783, 65, 140, 72, 4062, 292464, 0),
(784, 65, 144, 40, 2425, 97000, 0),
(785, 65, 154, 120, 2362, 283440, 0),
(786, 60, 435, 25, 1800, 45000, 0),
(787, 60, 436, 10, 900, 9000, 0),
(788, 60, 434, 10, 1650, 16500, 0),
(789, 64, 87, 40, 900, 36000, 0),
(790, 64, 48, 100, 120, 12000, 0),
(791, 64, 110, 100, 138, 13800, 0),
(792, 64, 18, 20, 900, 18000, 0),
(793, 64, 88, 48, 813, 39024, 0),
(794, 64, 23, 24, 1567, 37608, 0),
(795, 64, 111, 48, 450, 21600, 0),
(796, 64, 25, 20, 850, 17000, 0),
(797, 64, 113, 48, 450, 21600, 0),
(798, 64, 114, 40, 850, 34000, 0),
(799, 64, 28, 24, 875, 21000, 0),
(800, 64, 29, 40, 450, 18000, 0),
(801, 64, 117, 20, 880, 17600, 0),
(802, 64, 31, 24, 1867, 44808, 0),
(803, 64, 367, 10, 4000, 40000, 0),
(804, 64, 35, 20, 450, 9000, 0),
(805, 64, 36, 80, 450, 36000, 0),
(806, 64, 363, 10, 1800, 18000, 0),
(807, 64, 37, 20, 1750, 35000, 0),
(808, 64, 120, 24, 1792, 43008, 0),
(809, 64, 24, 60, 425, 25500, 0),
(810, 64, 39, 40, 1780, 71200, 0),
(811, 64, 41, 20, 900, 18000, 0),
(812, 66, 166, 84, 3500, 294000, 0),
(813, 64, 42, 24, 1334, 32016, 0),
(814, 66, 169, 48, 2375, 114000, 0),
(815, 64, 43, 48, 813, 39024, 0),
(816, 67, 188, 10, 1800, 18000, 0),
(817, 67, 230, 48, 813, 39024, 0),
(818, 64, 322, 48, 450, 21600, 0),
(819, 67, 182, 50, 110, 5500, 0),
(820, 64, 130, 10, 2700, 27000, 0),
(821, 64, 2, 240, 292, 70080, 0),
(822, 64, 4, 240, 1520, 364800, 0),
(823, 64, 67, 36, 667, 24012, 0),
(824, 64, 69, 20, 440, 8800, 0),
(825, 67, 196, 48, 450, 21600, 0),
(826, 67, 189, 51, 1706, 87006, 0),
(827, 67, 190, 20, 1280, 25600, 0),
(828, 67, 195, 40, 800, 32000, 0),
(829, 67, 199, 24, 1667, 40008, 0),
(830, 67, 201, 20, 880, 17600, 0),
(831, 67, 208, 24, 875, 21000, 0),
(833, 67, 213, 12, 1792, 21504, 0),
(834, 67, 214, 24, 1792, 43008, 0),
(835, 67, 429, 24, 1750, 42000, 0),
(836, 67, 387, 50, 850, 42500, 0),
(837, 67, 221, 80, 450, 36000, 0),
(838, 67, 223, 24, 1792, 43008, 0),
(839, 67, 224, 24, 1792, 43008, 0),
(840, 67, 202, 40, 440, 17600, 0),
(841, 67, 227, 30, 900, 27000, 0),
(842, 67, 229, 24, 1335, 32040, 0),
(843, 67, 230, 48, 813, 39024, 0),
(844, 67, 180, 20, 4300, 86000, 0),
(845, 67, 414, 12, 1250, 15000, 0),
(846, 67, 136, 168, 958, 160944, 0),
(847, 67, 209, 40, 450, 18000, 0),
(848, 68, 389, 12, 3333, 39996, 0),
(849, 68, 391, 12, 3333, 39996, 0),
(850, 68, 393, 24, 2190, 52560, 0),
(851, 68, 410, 24, 1854, 44496, 0),
(852, 68, 411, 24, 1854, 44496, 0),
(853, 68, 412, 96, 1437, 137952, 0),
(855, 68, 399, 36, 2208, 79488, 0),
(856, 68, 400, 24, 1583, 37992, 0),
(857, 68, 401, 48, 3333, 159984, 0),
(858, 68, 402, 24, 5000, 120000, 0),
(859, 68, 403, 48, 2188, 105024, 0),
(860, 68, 408, 24, 3333, 79992, 0),
(861, 68, 397, 72, 1271, 91512, 0),
(862, 69, 354, 20, 880, 17600, 0),
(863, 69, 442, 20, 880, 17600, 0),
(864, 69, 443, 20, 900, 18000, 0),
(865, 69, 119, 20, 850, 17000, 0),
(866, 69, 444, 20, 850, 17000, 0),
(867, 70, 255, 3, 1750, 5250, 0),
(868, 70, 233, 20, 490, 9800, 0),
(869, 70, 188, 20, 1800, 36000, 0),
(870, 70, 230, 48, 813, 39024, 0),
(871, 70, 198, 40, 900, 36000, 0),
(872, 70, 189, 51, 1706, 87006, 0),
(873, 70, 214, 12, 1792, 21504, 0),
(874, 70, 195, 20, 800, 16000, 0),
(875, 70, 195, 20, 800, 16000, 0),
(876, 70, 196, 48, 450, 21600, 0),
(877, 70, 460, 10, 1750, 17500, 0),
(878, 70, 428, 5, 1850, 9250, 0),
(879, 70, 446, 20, 880, 17600, 0),
(880, 70, 429, 12, 1750, 21000, 0),
(881, 70, 387, 20, 850, 17000, 0),
(882, 70, 219, 40, 450, 18000, 0),
(883, 70, 221, 40, 450, 18000, 0),
(884, 70, 222, 20, 1780, 35600, 0),
(885, 70, 434, 10, 1650, 16500, 0),
(886, 70, 224, 12, 1792, 21504, 0),
(887, 70, 225, 10, 930, 9300, 0),
(888, 70, 226, 60, 1792, 107520, 0),
(889, 70, 229, 12, 1335, 16020, 0),
(890, 70, 230, 48, 813, 39024, 0),
(891, 70, 234, 12, 875, 10500, 0),
(892, 70, 180, 25, 4300, 107500, 0),
(893, 70, 267, 10, 1180, 11800, 0),
(894, 70, 419, 3, 5800, 17400, 0),
(895, 70, 253, 20, 440, 8800, 0),
(896, 70, 257, 20, 650, 13000, 0),
(897, 70, 251, 20, 480, 9600, 0),
(898, 70, 272, 12, 2041, 24492, 0),
(899, 70, 287, 10, 2200, 22000, 0),
(900, 70, 286, 18, 833, 14994, 0),
(901, 70, 447, 8, 450, 3600, 0),
(902, 70, 448, 36, 203, 7308, 0),
(903, 71, 339, 60, 3500, 210000, 0),
(904, 71, 78, 60, 3875, 232500, 0),
(905, 71, 86, 60, 5334, 320040, 0),
(906, 71, 83, 60, 2375, 142500, 0),
(907, 71, 81, 60, 2375, 142500, 0),
(908, 71, 82, 60, 2375, 142500, 0),
(909, 71, 85, 60, 3958, 237480, 0),
(910, 71, 79, 60, 3958, 237480, 0),
(911, 71, 80, 60, 3958, 237480, 0),
(912, 72, 157, 80, 2412, 192960, 0),
(913, 72, 140, 48, 4062, 194976, 0),
(914, 72, 154, 40, 2362, 94480, 0),
(915, 72, 141, 150, 1900, 285000, 0),
(916, 72, 152, 40, 2750, 110000, 0),
(917, 72, 144, 80, 2425, 194000, 0),
(918, 72, 146, 60, 1558, 93480, 0),
(919, 69, 362, 20, 900, 18000, 0),
(920, 74, 101, 80, 2750, 220000, 0),
(921, 74, 93, 120, 2363, 283560, 0),
(922, 74, 90, 60, 1558, 93480, 0),
(923, 74, 104, 48, 4062, 194976, 0),
(924, 74, 361, 30, 3017, 90510, 0),
(925, 74, 97, 40, 1913, 76520, 0),
(926, 75, 113, 48, 450, 21600, 24000),
(927, 75, 115, 48, 450, 21600, 24000),
(928, 75, 322, 48, 450, 21600, 24000),
(929, 75, 23, 24, 1567, 37608, 48000),
(930, 75, 16, 34, 1706, 58004, 68000),
(931, 75, 457, 24, 1709, 41016, 48000),
(932, 75, 31, 24, 1867, 44808, 48000),
(933, 75, 458, 48, 450, 21600, 24000),
(934, 75, 459, 12, 1708, 20496, 24000),
(935, 75, 354, 20, 880, 17600, 20000),
(936, 75, 461, 10, 1750, 17500, 20000),
(937, 75, 120, 10, 1800, 18000, 20000),
(938, 75, 87, 40, 900, 36000, 60000),
(939, 75, 88, 48, 813, 39024, 48000),
(940, 75, 38, 24, 1792, 43008, 60000),
(941, 75, 28, 24, 875, 21000, 24000),
(942, 75, 17, 30, 890, 26700, 45000),
(943, 75, 462, 24, 900, 21600, 24000),
(944, 75, 21, 24, 1708, 40992, 48000),
(945, 75, 40, 24, 1734, 41616, 48000),
(946, 75, 455, 40, 450, 18000, 20000),
(947, 75, 36, 40, 450, 18000, 20000),
(948, 75, 42, 20, 1334, 26680, 40000),
(949, 75, 442, 20, 880, 17600, 20000),
(950, 75, 452, 20, 900, 18000, 20000),
(951, 75, 119, 20, 850, 17000, 20000),
(952, 75, 444, 20, 850, 17000, 20000),
(953, 75, 453, 10, 900, 9000, 10000),
(954, 75, 362, 20, 900, 18000, 20000),
(955, 75, 450, 10, 1750, 17500, 20000),
(956, 75, 449, 10, 1750, 17500, 20000),
(957, 75, 443, 20, 900, 18000, 20000),
(958, 75, 37, 20, 1750, 35000, 40000),
(959, 75, 25, 20, 850, 17000, 20000),
(960, 75, 454, 10, 1750, 17500, 20000),
(961, 75, 463, 12, 1667, 20004, 24000),
(962, 75, 4, 240, 1520, 364800, 480000),
(963, 75, 2, 240, 292, 70080, 120000),
(964, 73, 301, 24, 4167, 100008, 0),
(965, 73, 350, 24, 3375, 81000, 0),
(966, 73, 299, 12, 3500, 42000, 0),
(967, 73, 311, 12, 5000, 60000, 0),
(968, 73, 343, 12, 3500, 42000, 0),
(969, 73, 345, 12, 3500, 42000, 0),
(970, 73, 432, 24, 2188, 52512, 0),
(971, 73, 464, 24, 2188, 52512, 0),
(972, 73, 348, 24, 2417, 58008, 0),
(973, 73, 349, 24, 2417, 58008, 0),
(975, 73, 341, 24, 1854, 44496, 0),
(976, 75, 471, 4, 1380, 5520, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `id_schedule` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `picket_schedule` date NOT NULL,
  `lab_head` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`, `lab_head`) VALUES
(71, 13, 17, '2023-01-10', 'Andika Nurhidayat, S.Pd'),
(72, 10, 12, '2023-01-18', 'Fachmi Fathurahman, S.Pd'),
(73, 9, 21, '2023-01-19', 'Fachmi Fathurahman, S.Pd'),
(74, 6, 22, '2023-01-20', 'Fachmi Fathurahman, S.Pd'),
(75, 4, 2, '2023-01-21', 'Eka Anas Jatnika, S.Ds'),
(76, 2, 1, '2023-01-22', 'Eka Anas Jatnika, S.Ds'),
(77, 7, 13, '2023-01-23', 'Eka Anas Jatnika, S.Ds'),
(78, 13, 16, '2023-01-24', 'Eka Anas Jatnika, S.Ds'),
(79, 3, 14, '2023-01-25', 'Eka Anas Jatnika, S.Ds'),
(80, 12, 19, '2023-01-26', 'Eka Anas Jatnika, S.Ds'),
(81, 13, 17, '2023-01-27', 'Eka Anas Jatnika, S.Ds'),
(82, 12, 18, '2023-01-31', 'Elinda Rosi, S.Si'),
(83, 6, 20, '2023-01-30', 'Elinda Rosi, S.Si'),
(84, 12, 19, '2023-02-09', 'Eka Anas Jatnika, S.Ds'),
(85, 13, 17, '2023-02-10', 'Eka Anas Jatnika, S.Ds'),
(87, 2, 1, '2023-02-19', 'Eka Anas Jatnika, S.Ds');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_selling`
--

CREATE TABLE `tbl_selling` (
  `id_selling` int(11) NOT NULL,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_selling`
--

INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_class`, `id_lab`) VALUES
(14, '2022-08-29', 7, 1, 1),
(15, '2022-08-29', 7, 1, 2),
(16, '2022-08-30', 13, 1, 1),
(17, '2022-08-30', 13, 1, 2),
(18, '2022-08-31', 11, 1, 1),
(19, '2022-08-31', 11, 1, 2),
(20, '2022-09-01', 6, 1, 1),
(21, '2022-09-01', 6, 1, 2),
(22, '2022-09-02', 9, 1, 1),
(23, '2022-09-02', 9, 1, 2),
(24, '2022-09-05', 4, 1, 1),
(25, '2022-09-05', 4, 1, 2),
(26, '2022-09-06', 12, 1, 1),
(27, '2022-09-06', 12, 1, 2),
(28, '2022-09-07', 3, 1, 1),
(29, '2022-09-07', 3, 1, 2),
(30, '2022-09-09', 6, 1, 1),
(31, '2022-09-09', 6, 1, 2),
(32, '2022-09-12', 4, 1, 2),
(33, '2022-09-08', 5, 1, 1),
(34, '2022-09-08', 5, 1, 2),
(35, '2022-09-12', 4, 1, 1),
(36, '2022-09-13', 11, 1, 1),
(37, '2022-09-13', 11, 1, 2),
(38, '2022-09-14', 3, 1, 1),
(39, '2022-09-14', 3, 1, 2),
(40, '2022-09-15', 12, 1, 1),
(41, '2022-09-15', 12, 1, 2),
(42, '2022-09-16', 11, 1, 1),
(43, '2022-09-16', 11, 1, 2),
(44, '2022-09-20', 2, 1, 1),
(45, '2022-09-20', 2, 1, 2),
(46, '2022-09-30', 6, 1, 1),
(52, '2022-11-01', 9, 1, 1),
(53, '2022-11-02', 9, 1, 1),
(54, '2022-11-08', 12, 1, 1),
(55, '2022-11-09', 5, 4, 1),
(56, '2022-11-10', 9, 11, 1),
(57, '2022-11-10', 9, 11, 1),
(58, '2022-11-10', 9, 11, 1),
(59, '2022-12-05', 4, 2, 1),
(60, '2023-01-19', 9, 21, 1),
(61, '2023-01-19', 9, 21, 1),
(62, '2023-01-19', 9, 21, 1),
(63, '2023-01-19', 9, 21, 1),
(64, '2023-01-19', 9, 21, 1),
(65, '2023-01-19', 9, 21, 1),
(66, '2023-01-19', 9, 21, 1),
(67, '2023-01-19', 9, 21, 1),
(68, '2023-01-19', 9, 21, 1),
(69, '2023-01-19', 9, 21, 1),
(70, '2023-01-19', 9, 21, 1),
(71, '2023-01-19', 9, 21, 1),
(72, '2023-01-19', 9, 21, 1),
(73, '2023-01-19', 9, 21, 1),
(74, '2023-01-19', 9, 21, 1),
(75, '2023-01-19', 9, 21, 1),
(76, '2023-01-21', 4, 2, 1),
(77, '2023-01-21', 4, 2, 1),
(78, '2023-01-21', 4, 2, 1),
(79, '2023-01-24', 13, 1, 1),
(80, '2023-01-25', 13, 16, 1),
(81, '2023-01-26', 12, 19, 1),
(84, '2023-01-30', 6, 18, 1),
(85, '2023-01-19', 9, 21, 1),
(86, '2023-01-30', 6, 20, 1),
(87, '2023-01-30', 6, 20, 1),
(88, '2023-01-30', 6, 20, 1),
(89, '2023-01-19', 9, 21, 1),
(90, '2023-01-19', 9, 21, 1),
(91, '2023-01-30', 6, 20, 1),
(92, '2023-01-30', 6, 20, 1),
(93, '2023-01-31', 12, 18, 1),
(94, '2023-01-31', 12, 18, 1),
(95, '2023-01-31', 12, 18, 1),
(96, '2023-01-31', 12, 18, 1),
(97, '2023-01-31', 12, 18, 1),
(98, '2023-01-31', 12, 18, 1),
(99, '2023-01-31', 12, 18, 1),
(100, '2023-01-31', 12, 18, 1),
(101, '2023-01-31', 12, 18, 1),
(102, '2023-01-31', 12, 18, 1),
(103, '2023-01-31', 12, 18, 1),
(104, '2023-01-31', 12, 18, 1),
(105, '2023-01-31', 12, 18, 1),
(106, '2023-01-31', 12, 18, 1),
(107, '2023-01-31', 12, 18, 1),
(108, '2023-02-12', 2, 1, 2),
(109, '2023-02-12', 2, 1, 2),
(110, '2023-02-12', 2, 1, 2),
(111, '2023-02-19', 2, 1, 1),
(112, '2023-02-19', 2, 1, 1),
(113, '2023-02-19', 2, 1, 1),
(114, '2023-02-19', 2, 1, 1),
(115, '2023-02-19', 2, 1, 1),
(116, '2023-02-19', 2, 1, 1);

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
  `total_selling_price` int(11) NOT NULL,
  `date_selling` date NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_selling_detail`
--

INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`, `date_selling`, `id_lab`) VALUES
(34, 17, 169, 1, 2375, 3000, '0000-00-00', 0),
(35, 17, 163, 7, 16625, 21000, '0000-00-00', 0),
(36, 17, 138, 2, 7916, 10000, '0000-00-00', 0),
(37, 17, 167, 7, 37331, 49000, '0000-00-00', 0),
(38, 17, 168, 10, 38330, 45000, '0000-00-00', 0),
(39, 17, 169, 5, 11875, 15000, '0000-00-00', 0),
(40, 17, 172, 12, 3372, 6000, '0000-00-00', 0),
(41, 17, 136, 57, 54606, 114000, '0000-00-00', 0),
(42, 17, 176, 2, 1584, 2000, '0000-00-00', 0),
(43, 17, 177, 4, 3252, 4000, '0000-00-00', 0),
(44, 17, 182, 48, 4992, 12000, '0000-00-00', 0),
(45, 17, 184, 29, 3480, 7250, '0000-00-00', 0),
(46, 17, 185, 8, 1568, 2000, '0000-00-00', 0),
(47, 17, 188, 12, 21600, 24000, '0000-00-00', 0),
(48, 17, 199, 1, 1567, 2000, '0000-00-00', 0),
(49, 17, 202, 5, 2125, 2500, '0000-00-00', 0),
(50, 17, 208, 8, 7000, 8000, '0000-00-00', 0),
(51, 17, 209, 4, 1800, 2000, '0000-00-00', 0),
(52, 17, 213, 4, 7268, 8000, '0000-00-00', 0),
(53, 17, 214, 3, 5250, 6000, '0000-00-00', 0),
(54, 17, 217, 2, 4000, 5000, '0000-00-00', 0),
(55, 17, 219, 2, 850, 1000, '0000-00-00', 0),
(56, 17, 221, 26, 11050, 13000, '0000-00-00', 0),
(57, 17, 222, 12, 21000, 24000, '0000-00-00', 0),
(58, 17, 223, 8, 14000, 16000, '0000-00-00', 0),
(59, 17, 224, 5, 8750, 10000, '0000-00-00', 0),
(60, 17, 207, 2, 3166, 4000, '0000-00-00', 0),
(61, 17, 228, 4, 1700, 2000, '0000-00-00', 0),
(62, 17, 230, 43, 34959, 43000, '0000-00-00', 0),
(63, 17, 232, 2, 1740, 2000, '0000-00-00', 0),
(64, 17, 236, 3, 2439, 3000, '0000-00-00', 0),
(65, 17, 201, 3, 2550, 3000, '0000-00-00', 0),
(66, 17, 267, 2, 2360, 4000, '0000-00-00', 0),
(67, 17, 268, 1, 1130, 2000, '0000-00-00', 0),
(68, 17, 255, 1, 1500, 2000, '0000-00-00', 0),
(69, 17, 256, 1, 440, 500, '0000-00-00', 0),
(70, 16, 134, 52, 14612, 26000, '0000-00-00', 0),
(71, 17, 263, 1, 10800, 12000, '0000-00-00', 0),
(72, 16, 4, 91, 138320, 182000, '0000-00-00', 0),
(73, 17, 206, 3, 1314, 1500, '0000-00-00', 0),
(74, 17, 204, 3, 1320, 1500, '0000-00-00', 0),
(75, 17, 178, 1, 2050, 3000, '0000-00-00', 0),
(76, 16, 7, 4, 3168, 4000, '0000-00-00', 0),
(77, 16, 9, 4, 3180, 6000, '0000-00-00', 0),
(78, 16, 10, 2, 1584, 2000, '0000-00-00', 0),
(79, 16, 11, 2, 1626, 2000, '0000-00-00', 0),
(80, 16, 128, 2, 4100, 6000, '0000-00-00', 0),
(81, 16, 105, 61, 6466, 15250, '0000-00-00', 0),
(82, 16, 110, 1, 138, 250, '0000-00-00', 0),
(83, 16, 121, 14, 25200, 28000, '0000-00-00', 0),
(84, 17, 141, 26, 49400, 65000, '0000-00-00', 0),
(85, 16, 16, 17, 28900, 34000, '0000-00-00', 0),
(86, 16, 18, 14, 12600, 14000, '0000-00-00', 0),
(87, 17, 142, 10, 40000, 50000, '0000-00-00', 0),
(88, 17, 146, 26, 40508, 52000, '0000-00-00', 0),
(89, 17, 147, 1, 1912, 2500, '0000-00-00', 0),
(90, 17, 150, 19, 29260, 38000, '0000-00-00', 0),
(91, 17, 151, 19, 29260, 38000, '0000-00-00', 0),
(92, 17, 152, 25, 68750, 87500, '0000-00-00', 0),
(93, 17, 154, 88, 207856, 264000, '0000-00-00', 0),
(94, 16, 322, 34, 15300, 17000, '0000-00-00', 0),
(95, 16, 87, 3, 2700, 4500, '0000-00-00', 0),
(97, 17, 157, 15, 36180, 45000, '0000-00-00', 0),
(98, 17, 160, 6, 24372, 30000, '0000-00-00', 0),
(99, 16, 87, 3, 2700, 4500, '0000-00-00', 0),
(100, 16, 24, 24, 10200, 12000, '0000-00-00', 0),
(101, 16, 113, 10, 4460, 5000, '0000-00-00', 0),
(102, 16, 29, 48, 21600, 24000, '0000-00-00', 0),
(103, 16, 31, 4, 6668, 8000, '0000-00-00', 0),
(104, 16, 323, 5, 8750, 10000, '0000-00-00', 0),
(105, 16, 33, 5, 2250, 2500, '0000-00-00', 0),
(106, 16, 126, 3, 6000, 7500, '0000-00-00', 0),
(107, 16, 37, 16, 28000, 32000, '0000-00-00', 0),
(108, 16, 120, 20, 35000, 40000, '0000-00-00', 0),
(109, 16, 38, 5, 8750, 10000, '0000-00-00', 0),
(110, 16, 122, 7, 0, 3500, '0000-00-00', 0),
(111, 16, 42, 1, 850, 1000, '0000-00-00', 0),
(112, 16, 43, 13, 10569, 13000, '0000-00-00', 0),
(113, 16, 88, 24, 19296, 24000, '0000-00-00', 0),
(114, 16, 52, 2, 5050, 6000, '0000-00-00', 0),
(115, 16, 57, 4, 5832, 8000, '0000-00-00', 0),
(116, 16, 70, 7, 3010, 3500, '0000-00-00', 0),
(117, 16, 69, 1, 440, 500, '0000-00-00', 0),
(118, 16, 73, 1, 875, 1000, '0000-00-00', 0),
(119, 16, 325, 1, 1690, 2000, '0000-00-00', 0),
(120, 16, 326, 1, 1180, 2000, '0000-00-00', 0),
(121, 16, 327, 1, 1130, 2000, '0000-00-00', 0),
(122, 16, 80, 4, 15832, 20000, '0000-00-00', 0),
(123, 16, 79, 13, 51454, 58500, '0000-00-00', 0),
(124, 16, 78, 14, 53662, 63000, '0000-00-00', 0),
(125, 16, 86, 5, 26665, 35000, '0000-00-00', 0),
(126, 16, 299, 12, 39996, 48000, '0000-00-00', 0),
(127, 16, 84, 10, 35000, 45000, '0000-00-00', 0),
(128, 16, 85, 5, 19790, 25000, '0000-00-00', 0),
(129, 16, 330, 6, 17520, 21000, '0000-00-00', 0),
(130, 16, 295, 10, 15000, 25000, '0000-00-00', 0),
(131, 16, 301, 5, 20835, 25000, '0000-00-00', 0),
(132, 16, 331, 5, 25600, 30000, '0000-00-00', 0),
(133, 16, 303, 12, 39996, 48000, '0000-00-00', 0),
(134, 16, 308, 3, 10125, 12000, '0000-00-00', 0),
(135, 16, 296, 2, 4166, 6000, '0000-00-00', 0),
(136, 16, 310, 2, 6666, 8000, '0000-00-00', 0),
(137, 16, 333, 11, 32120, 38500, '0000-00-00', 0),
(138, 16, 300, 3, 6438, 9000, '0000-00-00', 0),
(139, 16, 311, 2, 9500, 12000, '0000-00-00', 0),
(140, 16, 310, 1, 3333, 4000, '0000-00-00', 0),
(142, 14, 99, 25, 60625, 75000, '0000-00-00', 0),
(143, 14, 97, 47, 89864, 117500, '0000-00-00', 0),
(144, 14, 94, 19, 43928, 57000, '0000-00-00', 0),
(145, 14, 91, 14, 21560, 28000, '0000-00-00', 0),
(146, 14, 92, 38, 58520, 76000, '0000-00-00', 0),
(147, 14, 101, 53, 145750, 185500, '0000-00-00', 0),
(148, 14, 102, 6, 24246, 30000, '0000-00-00', 0),
(149, 14, 93, 1, 2362, 3000, '0000-00-00', 0),
(150, 14, 338, 18, 41634, 54000, '0000-00-00', 0),
(151, 14, 85, 11, 43538, 55000, '0000-00-00', 0),
(152, 14, 80, 10, 39580, 50000, '0000-00-00', 0),
(153, 14, 86, 3, 15999, 21000, '0000-00-00', 0),
(154, 14, 78, 12, 45996, 54000, '0000-00-00', 0),
(155, 14, 79, 18, 71244, 81000, '0000-00-00', 0),
(156, 14, 339, 10, 35000, 45000, '0000-00-00', 0),
(157, 14, 295, 5, 7500, 12500, '0000-00-00', 0),
(158, 14, 298, 12, 31500, 42000, '0000-00-00', 0),
(159, 14, 300, 5, 10730, 15000, '0000-00-00', 0),
(160, 14, 301, 3, 12501, 15000, '0000-00-00', 0),
(161, 14, 302, 6, 19998, 24000, '0000-00-00', 0),
(162, 14, 308, 2, 6750, 8000, '0000-00-00', 0),
(163, 14, 310, 5, 16665, 20000, '0000-00-00', 0),
(164, 14, 311, 6, 28500, 36000, '0000-00-00', 0),
(165, 14, 340, 5, 16665, 20000, '0000-00-00', 0),
(166, 14, 341, 2, 6666, 8000, '0000-00-00', 0),
(167, 14, 300, 5, 10730, 15000, '0000-00-00', 0),
(168, 14, 341, 2, 6666, 8000, '0000-00-00', 0),
(169, 14, 331, 5, 25600, 30000, '0000-00-00', 0),
(170, 14, 134, 24, 6744, 12000, '0000-00-00', 0),
(171, 14, 4, 64, 97280, 128000, '0000-00-00', 0),
(172, 14, 7, 1, 792, 1000, '0000-00-00', 0),
(173, 14, 9, 4, 3180, 6000, '0000-00-00', 0),
(174, 14, 10, 2, 1584, 2000, '0000-00-00', 0),
(175, 14, 11, 1, 813, 1000, '0000-00-00', 0),
(176, 14, 16, 17, 28900, 34000, '0000-00-00', 0),
(177, 14, 22, 14, 11130, 14000, '0000-00-00', 0),
(178, 14, 117, 8, 6960, 8000, '0000-00-00', 0),
(179, 14, 33, 7, 3150, 3500, '0000-00-00', 0),
(180, 14, 37, 3, 5250, 6000, '0000-00-00', 0),
(181, 14, 38, 1, 1750, 2000, '0000-00-00', 0),
(182, 14, 57, 4, 5832, 8000, '0000-00-00', 0),
(183, 14, 66, 2, 450, 1000, '0000-00-00', 0),
(184, 14, 67, 1, 667, 1000, '0000-00-00', 0),
(185, 14, 70, 4, 1720, 2000, '0000-00-00', 0),
(186, 15, 139, 7, 13384, 17500, '0000-00-00', 0),
(187, 15, 141, 21, 39900, 52500, '0000-00-00', 0),
(188, 15, 146, 33, 51414, 66000, '0000-00-00', 0),
(189, 15, 150, 18, 27720, 36000, '0000-00-00', 0),
(190, 15, 151, 9, 13860, 18000, '0000-00-00', 0),
(191, 15, 152, 15, 41250, 52500, '0000-00-00', 0),
(192, 15, 154, 51, 120462, 153000, '0000-00-00', 0),
(193, 15, 160, 19, 77178, 95000, '0000-00-00', 0),
(194, 15, 149, 3, 9051, 12000, '0000-00-00', 0),
(195, 15, 145, 8, 15520, 20000, '0000-00-00', 0),
(196, 15, 157, 23, 55476, 69000, '0000-00-00', 0),
(197, 15, 164, 2, 7916, 10000, '0000-00-00', 0),
(198, 15, 163, 6, 14250, 18000, '0000-00-00', 0),
(199, 15, 138, 1, 3958, 5000, '0000-00-00', 0),
(200, 15, 166, 4, 14000, 18000, '0000-00-00', 0),
(201, 15, 167, 4, 21332, 28000, '0000-00-00', 0),
(202, 15, 168, 6, 22998, 27000, '0000-00-00', 0),
(203, 15, 169, 5, 11875, 15000, '0000-00-00', 0),
(204, 15, 172, 18, 5058, 9000, '0000-00-00', 0),
(205, 15, 136, 87, 83346, 174000, '0000-00-00', 0),
(206, 15, 177, 3, 2439, 3000, '0000-00-00', 0),
(207, 15, 342, 9, 20439, 27000, '0000-00-00', 0),
(208, 15, 190, 4, 3560, 4000, '0000-00-00', 0),
(209, 15, 199, 1, 1567, 2000, '0000-00-00', 0),
(210, 15, 202, 10, 4250, 5000, '0000-00-00', 0),
(211, 15, 208, 29, 25375, 29000, '0000-00-00', 0),
(212, 15, 209, 8, 3600, 4000, '0000-00-00', 0),
(213, 15, 213, 3, 5451, 6000, '0000-00-00', 0),
(214, 15, 214, 4, 7000, 8000, '0000-00-00', 0),
(215, 15, 219, 19, 8075, 9500, '0000-00-00', 0),
(216, 15, 221, 1, 425, 500, '0000-00-00', 0),
(217, 15, 222, 2, 3500, 4000, '0000-00-00', 0),
(218, 15, 226, 12, 21504, 24000, '0000-00-00', 0),
(219, 15, 269, 8, 9120, 16000, '0000-00-00', 0),
(220, 15, 232, 2, 1740, 2000, '0000-00-00', 0),
(221, 15, 234, 1, 875, 1000, '0000-00-00', 0),
(222, 15, 236, 2, 1626, 2000, '0000-00-00', 0),
(223, 20, 90, 8, 12464, 16000, '0000-00-00', 0),
(224, 20, 97, 29, 55448, 72500, '0000-00-00', 0),
(225, 20, 91, 26, 40040, 52000, '0000-00-00', 0),
(226, 20, 92, 20, 30800, 40000, '0000-00-00', 0),
(227, 20, 101, 28, 77000, 98000, '0000-00-00', 0),
(228, 20, 102, 9, 36369, 45000, '0000-00-00', 0),
(229, 20, 93, 42, 99204, 126000, '0000-00-00', 0),
(230, 20, 291, 14, 32382, 42000, '0000-00-00', 0),
(231, 20, 85, 1, 3958, 5000, '0000-00-00', 0),
(232, 20, 83, 12, 28500, 36000, '0000-00-00', 0),
(233, 20, 82, 6, 14250, 18000, '0000-00-00', 0),
(234, 20, 80, 5, 19790, 25000, '0000-00-00', 0),
(235, 20, 339, 22, 77000, 99000, '0000-00-00', 0),
(236, 20, 86, 12, 63996, 84000, '0000-00-00', 0),
(237, 20, 78, 7, 26831, 31500, '0000-00-00', 0),
(238, 20, 81, 8, 19000, 24000, '0000-00-00', 0),
(239, 20, 79, 8, 31664, 36000, '0000-00-00', 0),
(240, 20, 295, 3, 4500, 7500, '0000-00-00', 0),
(241, 20, 299, 5, 16665, 20000, '0000-00-00', 0),
(242, 20, 300, 13, 27898, 39000, '0000-00-00', 0),
(243, 20, 308, 2, 6750, 8000, '0000-00-00', 0),
(244, 20, 310, 5, 16665, 20000, '0000-00-00', 0),
(245, 20, 4, 37, 56240, 74000, '0000-00-00', 0),
(246, 20, 7, 7, 5544, 7000, '0000-00-00', 0),
(247, 20, 9, 1, 795, 1500, '0000-00-00', 0),
(248, 20, 10, 3, 2376, 3000, '0000-00-00', 0),
(249, 20, 11, 1, 813, 1000, '0000-00-00', 0),
(250, 20, 105, 5, 530, 1250, '0000-00-00', 0),
(251, 20, 18, 2, 1800, 2000, '0000-00-00', 0),
(252, 20, 87, 14, 12600, 21000, '0000-00-00', 0),
(253, 20, 27, 1, 1583, 2000, '0000-00-00', 0),
(254, 20, 31, 13, 21671, 26000, '0000-00-00', 0),
(255, 20, 33, 11, 4950, 5500, '0000-00-00', 0),
(256, 20, 126, 1, 2000, 2500, '0000-00-00', 0),
(257, 20, 38, 8, 14000, 16000, '0000-00-00', 0),
(258, 20, 122, 17, 0, 8500, '0000-00-00', 0),
(259, 20, 43, 37, 30081, 37000, '0000-00-00', 0),
(260, 20, 57, 9, 13122, 18000, '0000-00-00', 0),
(261, 20, 69, 2, 880, 1000, '0000-00-00', 0),
(262, 20, 68, 4, 1720, 2000, '0000-00-00', 0),
(263, 20, 73, 2, 1750, 2000, '0000-00-00', 0),
(264, 20, 326, 1, 1180, 2000, '0000-00-00', 0),
(265, 20, 327, 1, 1130, 2000, '0000-00-00', 0),
(266, 21, 172, 10, 2810, 5000, '0000-00-00', 0),
(267, 21, 136, 85, 81430, 170000, '0000-00-00', 0),
(268, 21, 176, 24, 19008, 24000, '0000-00-00', 0),
(269, 21, 177, 4, 3252, 4000, '0000-00-00', 0),
(270, 21, 184, 12, 1440, 3000, '0000-00-00', 0),
(271, 21, 188, 10, 18000, 20000, '0000-00-00', 0),
(272, 21, 189, 11, 18700, 22000, '0000-00-00', 0),
(273, 21, 190, 6, 5340, 6000, '0000-00-00', 0),
(274, 21, 191, 1, 900, 1000, '0000-00-00', 0),
(275, 21, 196, 37, 16650, 18500, '0000-00-00', 0),
(276, 21, 198, 17, 14790, 17000, '0000-00-00', 0),
(277, 21, 199, 1, 1567, 2000, '0000-00-00', 0),
(278, 21, 202, 2, 850, 1000, '0000-00-00', 0),
(279, 21, 207, 1, 1583, 2000, '0000-00-00', 0),
(280, 21, 208, 2, 1750, 2000, '0000-00-00', 0),
(281, 21, 209, 2, 900, 1000, '0000-00-00', 0),
(282, 21, 213, 6, 10902, 12000, '0000-00-00', 0),
(283, 21, 214, 6, 10500, 12000, '0000-00-00', 0),
(284, 21, 215, 48, 21600, 24000, '0000-00-00', 0),
(285, 21, 219, 3, 1275, 1500, '0000-00-00', 0),
(286, 21, 221, 3, 1275, 1500, '0000-00-00', 0),
(287, 21, 222, 2, 3500, 4000, '0000-00-00', 0),
(288, 21, 224, 2, 3500, 4000, '0000-00-00', 0),
(289, 21, 281, 12, 21492, 24000, '0000-00-00', 0),
(290, 21, 228, 8, 4000, 8000, '0000-00-00', 0),
(291, 21, 229, 11, 14685, 22000, '0000-00-00', 0),
(292, 21, 230, 34, 27642, 34000, '0000-00-00', 0),
(293, 21, 258, 1, 812, 1000, '0000-00-00', 0),
(294, 21, 139, 24, 45888, 60000, '0000-00-00', 0),
(295, 21, 141, 16, 30400, 40000, '0000-00-00', 0),
(296, 21, 145, 16, 31040, 40000, '0000-00-00', 0),
(297, 21, 147, 15, 28680, 37500, '0000-00-00', 0),
(298, 21, 149, 20, 60340, 80000, '0000-00-00', 0),
(299, 21, 150, 35, 53900, 70000, '0000-00-00', 0),
(300, 21, 151, 3, 4620, 6000, '0000-00-00', 0),
(301, 21, 152, 39, 107250, 136500, '0000-00-00', 0),
(302, 21, 335, 4, 16168, 20000, '0000-00-00', 0),
(303, 21, 154, 20, 47240, 60000, '0000-00-00', 0),
(304, 21, 164, 8, 31664, 40000, '0000-00-00', 0),
(305, 21, 165, 5, 11875, 15000, '0000-00-00', 0),
(306, 21, 163, 4, 9500, 12000, '0000-00-00', 0),
(307, 21, 138, 4, 15832, 20000, '0000-00-00', 0),
(308, 21, 166, 9, 31500, 40500, '0000-00-00', 0),
(309, 21, 167, 9, 47997, 63000, '0000-00-00', 0),
(310, 21, 169, 11, 26125, 33000, '0000-00-00', 0),
(311, 20, 297, 3, 6438, 9000, '0000-00-00', 0),
(312, 20, 3, 96, 26976, 48000, '0000-00-00', 0),
(313, 20, 129, 3, 2463, 3000, '0000-00-00', 0),
(314, 20, 323, 5, 8750, 10000, '0000-00-00', 0),
(315, 20, 42, 9, 12006, 18000, '0000-00-00', 0),
(316, 24, 99, 40, 97000, 120000, '0000-00-00', 0),
(317, 24, 90, 36, 56088, 72000, '0000-00-00', 0),
(318, 24, 97, 6, 11478, 15000, '0000-00-00', 0),
(319, 24, 291, 9, 20817, 27000, '0000-00-00', 0),
(320, 24, 91, 15, 23250, 30000, '0000-00-00', 0),
(321, 24, 92, 13, 20150, 26000, '0000-00-00', 0),
(322, 24, 101, 20, 55000, 70000, '0000-00-00', 0),
(323, 24, 102, 6, 24252, 30000, '0000-00-00', 0),
(324, 24, 93, 26, 61412, 78000, '0000-00-00', 0),
(326, 24, 94, 9, 20817, 27000, '0000-00-00', 0),
(327, 24, 318, 10, 40630, 50000, '0000-00-00', 0),
(328, 24, 134, 61, 17141, 30500, '0000-00-00', 0),
(329, 24, 4, 73, 110960, 146000, '0000-00-00', 0),
(330, 24, 7, 12, 9504, 12000, '0000-00-00', 0),
(331, 24, 9, 8, 6360, 12000, '0000-00-00', 0),
(332, 24, 10, 3, 2376, 3000, '0000-00-00', 0),
(333, 24, 11, 4, 3252, 4000, '0000-00-00', 0),
(334, 24, 130, 5, 13500, 17500, '0000-00-00', 0),
(335, 24, 105, 28, 2968, 7000, '0000-00-00', 0),
(336, 24, 48, 30, 3600, 7500, '0000-00-00', 0),
(337, 24, 110, 6, 828, 1500, '0000-00-00', 0),
(338, 24, 121, 5, 9000, 10000, '0000-00-00', 0),
(339, 24, 18, 8, 7200, 8000, '0000-00-00', 0),
(340, 24, 22, 12, 9540, 12000, '0000-00-00', 0),
(341, 24, 87, 10, 9000, 15000, '0000-00-00', 0),
(342, 24, 24, 7, 2975, 3500, '0000-00-00', 0),
(343, 24, 113, 1, 450, 500, '0000-00-00', 0),
(344, 24, 113, 9, 4050, 4500, '0000-00-00', 0),
(345, 24, 29, 4, 1800, 2000, '0000-00-00', 0),
(346, 24, 31, 5, 8335, 10000, '0000-00-00', 0),
(347, 24, 33, 25, 11250, 12500, '0000-00-00', 0),
(348, 24, 127, 9, 3375, 4500, '0000-00-00', 0),
(349, 24, 36, 25, 11250, 12500, '0000-00-00', 0),
(350, 24, 120, 8, 14000, 16000, '0000-00-00', 0),
(351, 24, 38, 8, 14000, 16000, '0000-00-00', 0),
(352, 24, 39, 6, 10680, 12000, '0000-00-00', 0),
(353, 24, 43, 12, 9756, 12000, '0000-00-00', 0),
(354, 24, 46, 7, 6300, 7000, '0000-00-00', 0),
(355, 24, 55, 1, 2525, 3000, '0000-00-00', 0),
(356, 24, 57, 5, 7290, 10000, '0000-00-00', 0),
(357, 24, 59, 3, 2700, 4500, '0000-00-00', 0),
(358, 24, 65, 4, 880, 2000, '0000-00-00', 0),
(359, 24, 66, 2, 450, 1000, '0000-00-00', 0),
(360, 24, 70, 1, 430, 500, '0000-00-00', 0),
(361, 24, 68, 1, 430, 500, '0000-00-00', 0),
(362, 24, 73, 2, 1750, 2000, '0000-00-00', 0),
(363, 24, 302, 1, 3333, 4000, '0000-00-00', 0),
(364, 24, 304, 1, 1354, 2500, '0000-00-00', 0),
(365, 24, 308, 5, 16875, 20000, '0000-00-00', 0),
(367, 24, 340, 19, 63327, 76000, '0000-00-00', 0),
(368, 24, 348, 9, 21195, 27000, '0000-00-00', 0),
(369, 24, 333, 3, 5313, 7500, '0000-00-00', 0),
(370, 24, 85, 13, 51454, 65000, '0000-00-00', 0),
(371, 24, 83, 16, 38000, 48000, '0000-00-00', 0),
(372, 24, 82, 24, 57000, 72000, '0000-00-00', 0),
(373, 24, 80, 14, 55412, 70000, '0000-00-00', 0),
(374, 24, 339, 58, 203000, 261000, '0000-00-00', 0),
(375, 24, 86, 2, 10666, 14000, '0000-00-00', 0),
(376, 24, 78, 15, 57495, 67500, '0000-00-00', 0),
(377, 24, 81, 20, 47500, 60000, '0000-00-00', 0),
(378, 24, 79, 11, 43538, 49500, '0000-00-00', 0),
(379, 25, 139, 7, 13384, 17500, '0000-00-00', 0),
(380, 25, 140, 14, 56868, 70000, '0000-00-00', 0),
(381, 25, 144, 64, 155200, 192000, '0000-00-00', 0),
(382, 25, 145, 2, 3880, 5000, '0000-00-00', 0),
(383, 25, 146, 46, 71668, 92000, '0000-00-00', 0),
(384, 25, 147, 5, 9560, 12500, '0000-00-00', 0),
(385, 25, 148, 18, 41634, 54000, '0000-00-00', 0),
(386, 25, 149, 6, 18102, 24000, '0000-00-00', 0),
(387, 25, 152, 19, 52250, 66500, '0000-00-00', 0),
(388, 25, 154, 27, 63774, 81000, '0000-00-00', 0),
(389, 25, 337, 2, 6416, 8000, '0000-00-00', 0),
(391, 25, 160, 6, 24372, 30000, '0000-00-00', 0),
(392, 25, 159, 10, 40620, 50000, '0000-00-00', 0),
(393, 25, 164, 3, 11874, 15000, '0000-00-00', 0),
(394, 25, 165, 11, 26125, 33000, '0000-00-00', 0),
(395, 25, 163, 4, 9500, 12000, '0000-00-00', 0),
(396, 25, 138, 3, 11874, 15000, '0000-00-00', 0),
(397, 25, 166, 20, 70000, 90000, '0000-00-00', 0),
(398, 25, 167, 4, 21332, 28000, '0000-00-00', 0),
(399, 25, 169, 17, 40375, 51000, '0000-00-00', 0),
(400, 25, 170, 1, 3958, 4500, '0000-00-00', 0),
(401, 25, 136, 48, 45984, 96000, '0000-00-00', 0),
(402, 25, 316, 1, 3300, 4000, '0000-00-00', 0),
(403, 25, 172, 27, 7587, 13500, '0000-00-00', 0),
(404, 25, 136, 42, 40236, 84000, '0000-00-00', 0),
(405, 25, 176, 3, 2376, 3000, '0000-00-00', 0),
(406, 25, 177, 6, 4878, 6000, '0000-00-00', 0),
(407, 25, 182, 16, 1664, 4000, '0000-00-00', 0),
(408, 25, 184, 24, 4080, 6000, '0000-00-00', 0),
(409, 25, 188, 6, 10800, 12000, '0000-00-00', 0),
(410, 25, 190, 7, 6230, 7000, '0000-00-00', 0),
(411, 25, 196, 3, 1350, 1500, '0000-00-00', 0),
(412, 25, 208, 12, 10500, 12000, '0000-00-00', 0),
(413, 25, 209, 12, 5400, 6000, '0000-00-00', 0),
(414, 25, 213, 5, 9085, 10000, '0000-00-00', 0),
(415, 25, 214, 3, 5250, 6000, '0000-00-00', 0),
(416, 25, 268, 1, 1130, 2000, '0000-00-00', 0),
(417, 27, 135, 69, 66102, 138000, '0000-00-00', 0),
(418, 27, 171, 18, 5670, 9000, '0000-00-00', 0),
(419, 27, 316, 1, 3300, 4000, '0000-00-00', 0),
(420, 27, 177, 3, 2439, 3000, '0000-00-00', 0),
(421, 27, 281, 13, 23283, 26000, '0000-00-00', 0),
(422, 27, 314, 24, 3120, 6000, '0000-00-00', 0),
(423, 27, 184, 20, 3400, 5000, '0000-00-00', 0),
(424, 27, 188, 11, 19800, 22000, '0000-00-00', 0),
(425, 27, 189, 16, 27360, 32000, '0000-00-00', 0),
(426, 27, 196, 6, 2700, 3000, '0000-00-00', 0),
(427, 27, 201, 1, 850, 1000, '0000-00-00', 0),
(428, 27, 202, 2, 850, 1000, '0000-00-00', 0),
(429, 27, 208, 1, 875, 1000, '0000-00-00', 0),
(430, 27, 209, 10, 4500, 5000, '0000-00-00', 0),
(431, 27, 210, 4, 3600, 4000, '0000-00-00', 0),
(432, 27, 213, 4, 7268, 8000, '0000-00-00', 0),
(433, 27, 214, 4, 7000, 8000, '0000-00-00', 0),
(434, 27, 215, 11, 4950, 5500, '0000-00-00', 0),
(435, 27, 216, 17, 7582, 8500, '0000-00-00', 0),
(436, 27, 217, 1, 2000, 2500, '0000-00-00', 0),
(437, 27, 219, 3, 1350, 1500, '0000-00-00', 0),
(438, 27, 221, 2, 900, 1000, '0000-00-00', 0),
(439, 27, 224, 2, 3500, 4000, '0000-00-00', 0),
(440, 27, 229, 1, 1335, 2000, '0000-00-00', 0),
(441, 27, 230, 24, 19512, 24000, '0000-00-00', 0),
(442, 27, 234, 5, 4375, 5000, '0000-00-00', 0),
(443, 27, 236, 1, 813, 1000, '0000-00-00', 0),
(444, 27, 243, 1, 800, 1000, '0000-00-00', 0),
(445, 27, 268, 1, 1130, 2000, '0000-00-00', 0),
(446, 26, 295, 3, 4500, 7500, '0000-00-00', 0),
(447, 26, 344, 12, 39996, 48000, '0000-00-00', 0),
(448, 26, 345, 12, 39996, 48000, '0000-00-00', 0),
(449, 26, 343, 4, 13332, 16000, '0000-00-00', 0),
(450, 26, 302, 5, 16665, 20000, '0000-00-00', 0),
(451, 26, 305, 10, 11880, 20000, '0000-00-00', 0),
(452, 26, 85, 5, 19790, 25000, '0000-00-00', 0),
(453, 26, 83, 10, 23750, 30000, '0000-00-00', 0),
(454, 26, 82, 14, 33250, 42000, '0000-00-00', 0),
(455, 26, 80, 2, 7916, 10000, '0000-00-00', 0),
(456, 26, 339, 14, 49000, 63000, '0000-00-00', 0),
(457, 26, 86, 3, 15999, 21000, '0000-00-00', 0),
(458, 26, 78, 1, 3833, 4500, '0000-00-00', 0),
(459, 26, 81, 10, 23750, 30000, '0000-00-00', 0),
(460, 26, 79, 4, 15832, 18000, '0000-00-00', 0),
(461, 26, 92, 11, 17050, 22000, '0000-00-00', 0),
(462, 26, 90, 20, 31160, 40000, '0000-00-00', 0),
(463, 26, 93, 48, 113376, 144000, '0000-00-00', 0),
(464, 26, 97, 22, 42086, 55000, '0000-00-00', 0),
(465, 26, 294, 5, 11565, 15000, '0000-00-00', 0),
(466, 26, 91, 29, 44950, 58000, '0000-00-00', 0),
(467, 26, 101, 11, 30250, 38500, '0000-00-00', 0),
(468, 26, 102, 7, 28294, 35000, '0000-00-00', 0),
(469, 26, 291, 14, 32382, 42000, '0000-00-00', 0),
(470, 26, 4, 56, 85120, 112000, '0000-00-00', 0),
(471, 26, 117, 8, 7040, 8000, '0000-00-00', 0),
(472, 26, 113, 12, 5400, 6000, '0000-00-00', 0),
(473, 26, 11, 1, 813, 1000, '0000-00-00', 0),
(474, 26, 113, 8, 3600, 4000, '0000-00-00', 0),
(475, 26, 66, 2, 450, 1000, '0000-00-00', 0),
(476, 26, 33, 5, 2250, 2500, '0000-00-00', 0),
(477, 26, 71, 2, 4400, 6000, '0000-00-00', 0),
(478, 26, 57, 5, 7290, 10000, '0000-00-00', 0),
(479, 26, 110, 11, 1518, 2750, '0000-00-00', 0),
(480, 26, 67, 1, 667, 1000, '0000-00-00', 0),
(481, 26, 9, 2, 1590, 3000, '0000-00-00', 0),
(482, 27, 146, 5, 7790, 10000, '0000-00-00', 0),
(483, 27, 144, 50, 121250, 150000, '0000-00-00', 0),
(484, 27, 137, 19, 43947, 57000, '0000-00-00', 0),
(485, 27, 149, 27, 81459, 108000, '0000-00-00', 0),
(486, 27, 145, 4, 7760, 10000, '0000-00-00', 0),
(487, 27, 160, 3, 12186, 15000, '0000-00-00', 0),
(488, 27, 159, 7, 28434, 35000, '0000-00-00', 0),
(489, 27, 337, 2, 6416, 8000, '0000-00-00', 0),
(490, 27, 140, 25, 101550, 125000, '0000-00-00', 0),
(491, 27, 154, 30, 70860, 90000, '0000-00-00', 0),
(492, 27, 163, 8, 19000, 24000, '0000-00-00', 0),
(493, 27, 165, 5, 11875, 15000, '0000-00-00', 0),
(494, 27, 169, 4, 9500, 12000, '0000-00-00', 0),
(495, 27, 166, 6, 21000, 27000, '0000-00-00', 0),
(496, 27, 167, 3, 15999, 21000, '0000-00-00', 0),
(497, 27, 138, 5, 19790, 25000, '0000-00-00', 0),
(498, 27, 170, 4, 15832, 18000, '0000-00-00', 0),
(499, 27, 164, 1, 3958, 5000, '0000-00-00', 0),
(500, 27, 168, 6, 22998, 27000, '0000-00-00', 0),
(501, 25, 314, 8, 1040, 2000, '0000-00-00', 0),
(502, 30, 79, 3, 11874, 13500, '0000-00-00', 0),
(503, 30, 80, 2, 7916, 10000, '0000-00-00', 0),
(504, 30, 82, 4, 9500, 12000, '0000-00-00', 0),
(505, 30, 86, 2, 10666, 14000, '0000-00-00', 0),
(506, 30, 339, 6, 21000, 27000, '0000-00-00', 0),
(507, 30, 90, 12, 18696, 24000, '0000-00-00', 0),
(508, 30, 92, 1, 1550, 2000, '0000-00-00', 0),
(509, 30, 93, 24, 56688, 72000, '0000-00-00', 0),
(510, 30, 97, 2, 3826, 5000, '0000-00-00', 0),
(511, 30, 101, 4, 11000, 14000, '0000-00-00', 0),
(512, 30, 294, 3, 6939, 9000, '0000-00-00', 0),
(513, 31, 135, 11, 10538, 22000, '0000-00-00', 0),
(514, 31, 171, 6, 1890, 3000, '0000-00-00', 0),
(515, 31, 184, 7, 1190, 1750, '0000-00-00', 0),
(516, 31, 185, 6, 720, 1500, '0000-00-00', 0),
(517, 31, 189, 11, 18810, 22000, '0000-00-00', 0),
(518, 31, 199, 2, 3134, 4000, '0000-00-00', 0),
(519, 31, 213, 1, 1817, 2000, '0000-00-00', 0),
(520, 31, 216, 2, 892, 1000, '0000-00-00', 0),
(521, 31, 219, 6, 2700, 3000, '0000-00-00', 0),
(522, 31, 220, 8, 4000, 8000, '0000-00-00', 0),
(523, 31, 221, 2, 900, 1000, '0000-00-00', 0),
(524, 31, 222, 5, 8750, 10000, '0000-00-00', 0),
(525, 31, 223, 2, 3500, 4000, '0000-00-00', 0),
(526, 31, 224, 4, 7000, 8000, '0000-00-00', 0),
(527, 31, 226, 3, 5376, 6000, '0000-00-00', 0),
(528, 31, 227, 1, 900, 1000, '0000-00-00', 0),
(529, 31, 237, 1, 900, 1000, '0000-00-00', 0),
(530, 31, 246, 5, 4250, 5000, '0000-00-00', 0),
(531, 31, 260, 1, 1500, 2000, '0000-00-00', 0),
(532, 31, 263, 1, 11000, 13000, '0000-00-00', 0),
(533, 31, 336, 1, 14000, 15000, '0000-00-00', 0),
(534, 31, 139, 3, 5736, 7500, '0000-00-00', 0),
(535, 31, 150, 6, 9240, 12000, '0000-00-00', 0),
(536, 31, 152, 10, 27500, 35000, '0000-00-00', 0),
(537, 31, 154, 16, 37792, 48000, '0000-00-00', 0),
(538, 31, 158, 1, 4000, 5000, '0000-00-00', 0),
(539, 31, 337, 2, 6416, 8000, '0000-00-00', 0),
(540, 31, 355, 1, 1940, 2500, '0000-00-00', 0),
(541, 31, 163, 6, 14250, 18000, '0000-00-00', 0),
(542, 31, 165, 1, 2375, 3000, '0000-00-00', 0),
(543, 31, 166, 4, 14000, 18000, '0000-00-00', 0),
(544, 31, 167, 1, 5333, 7000, '0000-00-00', 0),
(545, 31, 168, 1, 3833, 4500, '0000-00-00', 0),
(546, 31, 170, 3, 11874, 13500, '0000-00-00', 0),
(547, 30, 4, 8, 12160, 16000, '0000-00-00', 0),
(548, 30, 8, 2, 1700, 2000, '0000-00-00', 0),
(549, 30, 9, 1, 795, 1500, '0000-00-00', 0),
(550, 30, 24, 7, 2975, 3500, '0000-00-00', 0),
(551, 30, 29, 1, 450, 500, '0000-00-00', 0),
(552, 30, 33, 21, 9450, 10500, '0000-00-00', 0),
(553, 30, 35, 10, 4500, 5000, '0000-00-00', 0),
(554, 30, 36, 17, 7650, 8500, '0000-00-00', 0),
(555, 30, 38, 7, 12250, 14000, '0000-00-00', 0),
(556, 30, 39, 9, 16020, 18000, '0000-00-00', 0),
(557, 30, 41, 6, 5400, 6000, '0000-00-00', 0),
(558, 30, 48, 23, 2760, 5750, '0000-00-00', 0),
(559, 30, 52, 3, 7575, 9000, '0000-00-00', 0),
(560, 30, 53, 1, 2675, 3000, '0000-00-00', 0),
(561, 30, 54, 2, 4726, 6000, '0000-00-00', 0),
(562, 30, 110, 8, 1104, 2000, '0000-00-00', 0),
(563, 30, 126, 5, 10000, 12500, '0000-00-00', 0),
(564, 30, 322, 6, 2700, 3000, '0000-00-00', 0),
(566, 30, 26, 17, 7480, 8500, '0000-00-00', 0),
(567, 30, 112, 8, 10032, 16000, '0000-00-00', 0),
(568, 30, 1, 21, 6615, 10500, '0000-00-00', 0),
(569, 30, 100, 2, 8000, 10000, '0000-00-00', 0),
(570, 30, 104, 6, 24372, 24000, '0000-00-00', 0),
(571, 31, 269, 1, 1140, 2000, '0000-00-00', 0),
(572, 30, 295, 2, 3000, 5000, '0000-00-00', 0),
(573, 30, 303, 2, 6666, 8000, '0000-00-00', 0),
(574, 30, 310, 8, 26664, 32000, '0000-00-00', 0),
(575, 30, 333, 4, 7084, 10000, '0000-00-00', 0),
(576, 30, 309, 1, 3375, 4000, '0000-00-00', 0),
(577, 28, 97, 59, 112867, 147500, '0000-00-00', 0),
(578, 28, 94, 19, 43947, 57000, '0000-00-00', 0),
(579, 28, 92, 3, 4650, 6000, '0000-00-00', 0),
(580, 28, 101, 48, 132000, 168000, '0000-00-00', 0),
(581, 28, 102, 10, 40420, 50000, '0000-00-00', 0),
(582, 28, 93, 7, 16534, 21000, '0000-00-00', 0),
(583, 28, 338, 18, 41634, 54000, '0000-00-00', 0),
(584, 28, 85, 7, 27706, 35000, '0000-00-00', 0),
(585, 28, 82, 19, 45125, 57000, '0000-00-00', 0),
(586, 28, 80, 11, 43538, 55000, '0000-00-00', 0),
(587, 28, 339, 17, 59500, 76500, '0000-00-00', 0),
(588, 28, 86, 8, 42664, 56000, '0000-00-00', 0),
(589, 28, 78, 5, 19165, 22500, '0000-00-00', 0),
(590, 28, 81, 24, 57000, 72000, '0000-00-00', 0),
(591, 28, 79, 8, 31664, 36000, '0000-00-00', 0),
(592, 28, 295, 6, 9000, 15000, '0000-00-00', 0),
(593, 28, 297, 8, 17168, 24000, '0000-00-00', 0),
(594, 28, 299, 11, 36663, 44000, '0000-00-00', 0),
(595, 28, 301, 4, 16668, 20000, '0000-00-00', 0),
(596, 28, 302, 13, 43329, 52000, '0000-00-00', 0),
(597, 28, 303, 2, 6666, 8000, '0000-00-00', 0),
(598, 28, 304, 32, 43328, 80000, '0000-00-00', 0),
(600, 28, 310, 8, 26664, 32000, '0000-00-00', 0),
(601, 28, 347, 3, 7065, 9000, '0000-00-00', 0),
(602, 28, 333, 3, 5313, 7500, '0000-00-00', 0),
(603, 28, 134, 50, 14050, 25000, '0000-00-00', 0),
(604, 28, 4, 72, 109440, 144000, '0000-00-00', 0),
(605, 28, 7, 8, 6336, 8000, '0000-00-00', 0),
(606, 28, 105, 3, 318, 750, '0000-00-00', 0),
(607, 28, 48, 25, 3000, 6250, '0000-00-00', 0),
(608, 28, 110, 2, 276, 500, '0000-00-00', 0),
(609, 28, 18, 1, 900, 1000, '0000-00-00', 0),
(610, 28, 322, 22, 9900, 11000, '0000-00-00', 0),
(611, 28, 117, 6, 5280, 6000, '0000-00-00', 0),
(612, 28, 24, 4, 1700, 2000, '0000-00-00', 0),
(613, 28, 25, 4, 3400, 4000, '0000-00-00', 0),
(614, 28, 113, 13, 5850, 6500, '0000-00-00', 0),
(615, 28, 29, 15, 6750, 7500, '0000-00-00', 0),
(616, 28, 31, 9, 15003, 18000, '0000-00-00', 0),
(617, 28, 33, 14, 6300, 7000, '0000-00-00', 0),
(618, 28, 126, 3, 6000, 7500, '0000-00-00', 0),
(619, 28, 35, 13, 5850, 6500, '0000-00-00', 0),
(620, 28, 127, 1, 375, 500, '0000-00-00', 0),
(621, 28, 36, 13, 5850, 6500, '0000-00-00', 0),
(622, 28, 120, 13, 22750, 26000, '0000-00-00', 0),
(623, 28, 39, 6, 10680, 12000, '0000-00-00', 0),
(624, 28, 41, 17, 15300, 17000, '0000-00-00', 0),
(625, 28, 88, 12, 9756, 12000, '0000-00-00', 0),
(626, 28, 69, 3, 1320, 1500, '0000-00-00', 0),
(627, 28, 324, 4, 3400, 4000, '0000-00-00', 0),
(628, 29, 139, 8, 15296, 20000, '0000-00-00', 0),
(629, 29, 140, 30, 121860, 150000, '0000-00-00', 0),
(630, 29, 141, 26, 49400, 65000, '0000-00-00', 0),
(631, 29, 144, 18, 43650, 54000, '0000-00-00', 0),
(632, 29, 146, 28, 43624, 56000, '0000-00-00', 0),
(633, 29, 148, 10, 23130, 30000, '0000-00-00', 0),
(634, 29, 149, 6, 18102, 24000, '0000-00-00', 0),
(635, 29, 150, 22, 33880, 44000, '0000-00-00', 0),
(636, 29, 151, 11, 16940, 22000, '0000-00-00', 0),
(637, 29, 154, 21, 49602, 63000, '0000-00-00', 0),
(638, 29, 337, 4, 12832, 16000, '0000-00-00', 0),
(639, 29, 157, 22, 53064, 66000, '0000-00-00', 0),
(640, 29, 158, 5, 20000, 25000, '0000-00-00', 0),
(641, 29, 159, 3, 12186, 15000, '0000-00-00', 0),
(642, 29, 160, 8, 32496, 40000, '0000-00-00', 0),
(643, 29, 355, 6, 11640, 15000, '0000-00-00', 0),
(644, 29, 164, 1, 3958, 5000, '0000-00-00', 0),
(645, 29, 165, 19, 45125, 57000, '0000-00-00', 0),
(646, 29, 163, 7, 16625, 21000, '0000-00-00', 0),
(647, 29, 138, 5, 19790, 25000, '0000-00-00', 0),
(648, 29, 166, 9, 31500, 40500, '0000-00-00', 0),
(649, 29, 167, 9, 47997, 63000, '0000-00-00', 0),
(650, 29, 168, 1, 3833, 4500, '0000-00-00', 0),
(651, 29, 170, 2, 7916, 9000, '0000-00-00', 0),
(652, 29, 172, 23, 6716, 11500, '0000-00-00', 0),
(653, 29, 135, 54, 51732, 108000, '0000-00-00', 0),
(654, 29, 176, 1, 792, 1000, '0000-00-00', 0),
(655, 29, 177, 6, 4878, 6000, '0000-00-00', 0),
(656, 29, 281, 15, 26865, 30000, '0000-00-00', 0),
(657, 29, 184, 22, 3740, 5500, '0000-00-00', 0),
(658, 29, 185, 49, 5880, 12250, '0000-00-00', 0),
(659, 29, 186, 7, 700, 1750, '0000-00-00', 0),
(660, 29, 189, 19, 32490, 38000, '0000-00-00', 0),
(661, 29, 191, 10, 9000, 10000, '0000-00-00', 0),
(662, 29, 196, 15, 6750, 7500, '0000-00-00', 0),
(663, 29, 199, 5, 7835, 10000, '0000-00-00', 0),
(664, 29, 201, 1, 850, 1000, '0000-00-00', 0),
(665, 29, 206, 4, 1752, 2000, '0000-00-00', 0),
(666, 29, 208, 8, 7000, 8000, '0000-00-00', 0),
(667, 29, 209, 12, 5400, 6000, '0000-00-00', 0),
(668, 29, 213, 18, 32706, 36000, '0000-00-00', 0),
(669, 29, 215, 14, 6300, 7000, '0000-00-00', 0),
(670, 29, 216, 7, 3122, 3500, '0000-00-00', 0),
(671, 29, 217, 2, 4000, 5000, '0000-00-00', 0),
(672, 29, 219, 14, 6300, 7000, '0000-00-00', 0),
(673, 29, 220, 11, 5500, 11000, '0000-00-00', 0),
(674, 29, 221, 16, 7200, 8000, '0000-00-00', 0),
(675, 29, 222, 10, 17500, 20000, '0000-00-00', 0),
(676, 29, 224, 10, 17500, 20000, '0000-00-00', 0),
(677, 29, 226, 15, 26880, 30000, '0000-00-00', 0),
(678, 29, 229, 1, 1335, 2000, '0000-00-00', 0),
(679, 29, 230, 26, 21138, 26000, '0000-00-00', 0),
(680, 29, 236, 1, 813, 1000, '0000-00-00', 0),
(681, 29, 245, 1, 2400, 3000, '0000-00-00', 0),
(682, 29, 253, 1, 430, 1000, '0000-00-00', 0),
(683, 29, 260, 2, 3000, 4000, '0000-00-00', 0),
(684, 29, 336, 1, 14000, 15000, '0000-00-00', 0),
(685, 29, 264, 3, 5313, 6000, '0000-00-00', 0),
(686, 32, 139, 18, 34416, 45000, '0000-00-00', 0),
(687, 32, 146, 23, 35834, 46000, '0000-00-00', 0),
(688, 32, 149, 2, 6034, 8000, '0000-00-00', 0),
(689, 32, 150, 35, 53900, 70000, '0000-00-00', 0),
(690, 32, 151, 18, 27720, 36000, '0000-00-00', 0),
(691, 32, 152, 19, 52250, 66500, '0000-00-00', 0),
(692, 32, 154, 21, 49602, 63000, '0000-00-00', 0),
(693, 32, 337, 6, 19248, 24000, '0000-00-00', 0),
(694, 32, 158, 10, 40000, 50000, '0000-00-00', 0),
(695, 32, 355, 3, 5820, 7500, '0000-00-00', 0),
(696, 34, 135, 54, 51732, 108000, '0000-00-00', 0),
(697, 34, 171, 17, 5355, 8500, '0000-00-00', 0),
(698, 34, 176, 26, 20592, 26000, '0000-00-00', 0),
(699, 34, 177, 2, 1626, 2000, '0000-00-00', 0),
(700, 34, 182, 47, 4982, 11750, '0000-00-00', 0),
(701, 34, 184, 94, 15980, 23500, '0000-00-00', 0),
(702, 34, 188, 16, 28800, 40000, '0000-00-00', 0),
(703, 34, 189, 20, 34200, 40000, '0000-00-00', 0),
(704, 34, 191, 3, 2700, 3000, '0000-00-00', 0),
(705, 34, 199, 1, 1567, 2000, '0000-00-00', 0),
(706, 34, 202, 26, 11050, 13000, '0000-00-00', 0),
(707, 34, 207, 1, 1583, 2000, '0000-00-00', 0),
(708, 34, 210, 3, 2700, 3000, '0000-00-00', 0),
(709, 34, 213, 16, 29072, 32000, '0000-00-00', 0),
(710, 34, 214, 4, 7168, 8000, '0000-00-00', 0),
(711, 34, 216, 10, 4460, 5000, '0000-00-00', 0),
(712, 34, 217, 2, 4000, 5000, '0000-00-00', 0),
(713, 34, 219, 20, 9000, 10000, '0000-00-00', 0),
(714, 34, 221, 27, 12150, 13500, '0000-00-00', 0),
(715, 34, 222, 11, 19250, 22000, '0000-00-00', 0),
(716, 34, 224, 8, 14336, 16000, '0000-00-00', 0),
(717, 34, 225, 6, 5580, 6000, '0000-00-00', 0),
(718, 34, 226, 12, 21504, 24000, '0000-00-00', 0),
(719, 34, 227, 6, 5400, 6000, '0000-00-00', 0),
(720, 34, 229, 20, 26700, 40000, '0000-00-00', 0),
(721, 34, 230, 50, 40650, 50000, '0000-00-00', 0),
(722, 34, 231, 1, 900, 1000, '0000-00-00', 0),
(723, 34, 233, 4, 1600, 2000, '0000-00-00', 0),
(724, 34, 246, 3, 2550, 3000, '0000-00-00', 0),
(725, 34, 260, 1, 1500, 2000, '0000-00-00', 0),
(726, 34, 267, 2, 2360, 4000, '0000-00-00', 0),
(727, 34, 271, 3, 5313, 6000, '0000-00-00', 0),
(728, 34, 243, 5, 4000, 5000, '0000-00-00', 0),
(729, 34, 313, 12, 1560, 3000, '0000-00-00', 0),
(730, 34, 316, 1, 3300, 4000, '0000-00-00', 0),
(731, 34, 356, 4, 14800, 20000, '0000-00-00', 0),
(732, 33, 90, 21, 32718, 42000, '0000-00-00', 0),
(733, 33, 91, 24, 37200, 48000, '0000-00-00', 0),
(734, 33, 92, 8, 12400, 16000, '0000-00-00', 0),
(735, 33, 97, 16, 30608, 40000, '0000-00-00', 0),
(736, 33, 100, 13, 52000, 65000, '0000-00-00', 0),
(737, 33, 101, 20, 55000, 70000, '0000-00-00', 0),
(738, 33, 102, 7, 28294, 35000, '0000-00-00', 0),
(739, 33, 104, 37, 150294, 148000, '0000-00-00', 0),
(740, 33, 291, 13, 30069, 39000, '0000-00-00', 0),
(741, 33, 294, 8, 18504, 24000, '0000-00-00', 0),
(742, 33, 6, 12, 18000, 24000, '0000-00-00', 0),
(743, 33, 7, 3, 2376, 3000, '0000-00-00', 0),
(744, 33, 11, 3, 2439, 3000, '0000-00-00', 0),
(745, 33, 18, 9, 8100, 9000, '0000-00-00', 0),
(746, 33, 24, 22, 9350, 11000, '0000-00-00', 0),
(747, 33, 25, 1, 850, 1000, '0000-00-00', 0),
(748, 33, 29, 14, 6300, 7000, '0000-00-00', 0),
(749, 33, 31, 6, 10002, 12000, '0000-00-00', 0),
(750, 33, 33, 4, 1800, 2000, '0000-00-00', 0),
(751, 33, 35, 4, 1800, 2000, '0000-00-00', 0),
(752, 33, 36, 11, 4950, 5500, '0000-00-00', 0),
(753, 33, 38, 3, 5250, 7500, '0000-00-00', 0),
(754, 33, 39, 2, 3560, 4000, '0000-00-00', 0),
(755, 33, 41, 13, 11700, 13000, '0000-00-00', 0),
(756, 33, 48, 33, 3960, 8250, '0000-00-00', 0),
(757, 33, 55, 1, 2525, 3000, '0000-00-00', 0),
(758, 33, 57, 5, 7290, 10000, '0000-00-00', 0),
(759, 33, 59, 1, 900, 1500, '0000-00-00', 0),
(760, 33, 60, 1, 2000, 2500, '0000-00-00', 0),
(761, 33, 69, 6, 2640, 3000, '0000-00-00', 0),
(762, 33, 70, 1, 430, 500, '0000-00-00', 0),
(763, 33, 73, 1, 875, 1000, '0000-00-00', 0),
(764, 33, 110, 32, 4416, 8000, '0000-00-00', 0),
(765, 33, 111, 8, 3600, 4000, '0000-00-00', 0),
(766, 33, 112, 2, 2508, 4000, '0000-00-00', 0),
(767, 33, 113, 18, 8100, 9000, '0000-00-00', 0),
(768, 33, 120, 3, 5250, 6000, '0000-00-00', 0),
(769, 33, 121, 5, 9000, 12500, '0000-00-00', 0),
(770, 33, 126, 2, 4000, 5000, '0000-00-00', 0),
(771, 33, 127, 3, 1125, 1500, '0000-00-00', 0),
(772, 33, 130, 1, 2700, 3500, '0000-00-00', 0),
(773, 33, 134, 133, 37373, 66500, '0000-00-00', 0),
(774, 33, 320, 2, 260, 500, '0000-00-00', 0),
(775, 33, 322, 21, 9450, 10500, '0000-00-00', 0),
(776, 33, 325, 1, 1690, 2000, '0000-00-00', 0),
(777, 33, 353, 1, 2200, 3000, '0000-00-00', 0),
(778, 33, 295, 31, 46500, 77500, '0000-00-00', 0),
(779, 33, 296, 24, 49992, 72000, '0000-00-00', 0),
(780, 33, 297, 35, 75110, 105000, '0000-00-00', 0),
(781, 33, 298, 45, 118125, 157500, '0000-00-00', 0),
(782, 33, 300, 24, 51504, 72000, '0000-00-00', 0),
(783, 33, 301, 26, 108342, 130000, '0000-00-00', 0),
(784, 33, 302, 17, 56661, 68000, '0000-00-00', 0),
(785, 33, 303, 21, 69993, 84000, '0000-00-00', 0),
(786, 33, 308, 24, 81000, 96000, '0000-00-00', 0),
(787, 33, 309, 23, 77625, 92000, '0000-00-00', 0),
(788, 33, 310, 33, 109989, 132000, '0000-00-00', 0),
(789, 33, 330, 14, 40880, 49000, '0000-00-00', 0),
(790, 33, 331, 12, 61440, 72000, '0000-00-00', 0),
(791, 33, 333, 5, 8855, 12500, '0000-00-00', 0),
(792, 33, 340, 18, 59994, 72000, '0000-00-00', 0),
(793, 33, 341, 5, 8855, 12500, '0000-00-00', 0),
(794, 33, 346, 8, 17168, 24000, '0000-00-00', 0),
(795, 33, 347, 31, 73005, 93000, '0000-00-00', 0),
(796, 33, 349, 14, 32970, 42000, '0000-00-00', 0),
(797, 33, 350, 23, 77625, 92000, '0000-00-00', 0),
(798, 34, 138, 5, 19790, 25000, '0000-00-00', 0),
(800, 34, 166, 7, 24500, 31500, '0000-00-00', 0),
(801, 34, 167, 4, 21332, 28000, '0000-00-00', 0),
(802, 34, 168, 2, 7666, 9000, '0000-00-00', 0),
(804, 34, 170, 2, 7916, 9000, '0000-00-00', 0),
(805, 34, 139, 16, 30592, 40000, '0000-00-00', 0),
(806, 34, 141, 23, 43700, 57500, '0000-00-00', 0),
(807, 34, 146, 30, 46740, 60000, '0000-00-00', 0),
(808, 34, 149, 3, 9051, 12000, '0000-00-00', 0),
(809, 34, 150, 26, 40040, 52000, '0000-00-00', 0),
(810, 34, 151, 15, 23100, 30000, '0000-00-00', 0),
(811, 34, 337, 8, 25664, 32000, '0000-00-00', 0),
(812, 34, 355, 12, 23280, 30000, '0000-00-00', 0),
(813, 36, 92, 21, 32550, 42000, '0000-00-00', 0),
(814, 36, 93, 36, 85032, 108000, '0000-00-00', 0),
(815, 36, 97, 40, 76520, 100000, '0000-00-00', 0),
(816, 36, 100, 15, 60000, 75000, '0000-00-00', 0),
(817, 36, 101, 33, 90750, 115500, '0000-00-00', 0),
(818, 36, 102, 7, 28294, 35000, '0000-00-00', 0),
(819, 36, 291, 11, 25443, 33000, '0000-00-00', 0),
(820, 36, 294, 9, 20817, 27000, '0000-00-00', 0),
(821, 36, 360, 12, 38496, 48000, '0000-00-00', 0),
(822, 36, 295, 4, 6000, 10000, '0000-00-00', 0),
(823, 36, 296, 4, 8332, 12000, '0000-00-00', 0),
(824, 36, 297, 6, 12876, 18000, '0000-00-00', 0),
(825, 36, 300, 2, 4292, 6000, '0000-00-00', 0),
(826, 36, 301, 1, 4167, 5000, '0000-00-00', 0),
(827, 36, 303, 1, 3333, 4000, '0000-00-00', 0),
(828, 36, 309, 4, 13500, 16000, '0000-00-00', 0),
(829, 36, 310, 4, 13332, 16000, '0000-00-00', 0),
(830, 36, 330, 10, 29200, 35000, '0000-00-00', 0),
(831, 36, 331, 4, 20480, 24000, '0000-00-00', 0),
(832, 36, 298, 4, 10500, 14000, '0000-00-00', 0),
(833, 36, 78, 9, 34497, 40500, '0000-00-00', 0),
(834, 36, 79, 8, 31664, 36000, '0000-00-00', 0),
(835, 36, 80, 16, 63328, 80000, '0000-00-00', 0),
(836, 36, 81, 3, 7125, 9000, '0000-00-00', 0),
(837, 36, 82, 11, 26125, 33000, '0000-00-00', 0),
(838, 36, 83, 11, 26125, 33000, '0000-00-00', 0),
(839, 36, 85, 4, 15832, 20000, '0000-00-00', 0),
(840, 36, 86, 7, 37331, 49000, '0000-00-00', 0),
(841, 36, 339, 13, 45500, 58500, '0000-00-00', 0),
(842, 36, 1, 48, 15120, 24000, '0000-00-00', 0),
(843, 36, 6, 57, 85500, 114000, '0000-00-00', 0),
(844, 36, 7, 4, 3168, 4000, '0000-00-00', 0),
(845, 36, 9, 1, 795, 1500, '0000-00-00', 0),
(846, 36, 10, 3, 2376, 3000, '0000-00-00', 0),
(847, 36, 11, 1, 813, 1000, '0000-00-00', 0),
(848, 36, 24, 19, 8075, 9500, '0000-00-00', 0),
(849, 36, 29, 12, 5400, 6000, '0000-00-00', 0),
(850, 36, 31, 19, 31673, 38000, '0000-00-00', 0),
(851, 36, 33, 2, 900, 1000, '0000-00-00', 0),
(852, 36, 36, 5, 2250, 2500, '0000-00-00', 0),
(853, 36, 38, 3, 5250, 7500, '0000-00-00', 0),
(854, 36, 60, 1, 2000, 2500, '0000-00-00', 0),
(855, 36, 110, 8, 1104, 2000, '0000-00-00', 0),
(856, 36, 111, 20, 9000, 10000, '0000-00-00', 0),
(857, 36, 113, 25, 11250, 12500, '0000-00-00', 0),
(858, 36, 126, 3, 6000, 7500, '0000-00-00', 0),
(859, 36, 129, 1, 821, 1000, '0000-00-00', 0),
(860, 36, 130, 3, 8100, 10500, '0000-00-00', 0),
(861, 36, 320, 16, 2080, 4000, '0000-00-00', 0),
(862, 36, 327, 1, 1130, 2000, '0000-00-00', 0),
(863, 36, 25, 2, 1700, 2000, '0000-00-00', 0),
(864, 37, 139, 33, 63096, 82500, '0000-00-00', 0),
(865, 37, 146, 35, 54530, 70000, '0000-00-00', 0),
(866, 37, 150, 31, 47740, 62000, '0000-00-00', 0),
(867, 37, 151, 19, 29260, 38000, '0000-00-00', 0),
(868, 37, 152, 37, 101750, 129500, '0000-00-00', 0),
(869, 37, 158, 8, 32000, 40000, '0000-00-00', 0),
(870, 37, 337, 8, 25664, 32000, '0000-00-00', 0),
(871, 37, 355, 18, 34920, 45000, '0000-00-00', 0),
(872, 37, 138, 1, 3958, 5000, '0000-00-00', 0),
(873, 37, 163, 1, 2375, 3000, '0000-00-00', 0),
(874, 37, 164, 3, 11874, 15000, '0000-00-00', 0),
(875, 37, 165, 6, 14250, 18000, '0000-00-00', 0),
(876, 37, 166, 23, 80500, 103500, '0000-00-00', 0),
(877, 37, 167, 10, 53330, 70000, '0000-00-00', 0),
(878, 37, 168, 10, 38330, 45000, '0000-00-00', 0),
(879, 37, 170, 7, 27706, 31500, '0000-00-00', 0),
(880, 37, 136, 45, 43110, 90000, '0000-00-00', 0),
(881, 37, 172, 18, 5256, 9000, '0000-00-00', 0),
(882, 37, 176, 1, 792, 1000, '0000-00-00', 0),
(883, 37, 184, 16, 2720, 4000, '0000-00-00', 0),
(884, 37, 185, 10, 1200, 2500, '0000-00-00', 0),
(885, 37, 188, 11, 19800, 27500, '0000-00-00', 0),
(886, 37, 189, 1, 1710, 2000, '0000-00-00', 0),
(887, 37, 196, 2, 900, 1000, '0000-00-00', 0),
(888, 37, 199, 1, 1567, 2000, '0000-00-00', 0),
(889, 37, 202, 7, 2975, 3500, '0000-00-00', 0),
(890, 37, 213, 1, 1817, 2000, '0000-00-00', 0),
(891, 37, 219, 1, 450, 500, '0000-00-00', 0),
(892, 37, 220, 5, 2500, 5000, '0000-00-00', 0),
(893, 37, 221, 9, 4050, 4500, '0000-00-00', 0),
(894, 37, 222, 5, 8750, 10000, '0000-00-00', 0),
(895, 37, 223, 6, 10500, 12000, '0000-00-00', 0),
(896, 37, 224, 8, 14336, 16000, '0000-00-00', 0),
(897, 37, 230, 21, 17073, 21000, '0000-00-00', 0),
(898, 37, 237, 11, 9900, 11000, '0000-00-00', 0),
(899, 37, 246, 2, 1700, 2000, '0000-00-00', 0),
(900, 37, 271, 1, 1771, 2000, '0000-00-00', 0),
(901, 37, 281, 7, 12537, 14000, '0000-00-00', 0),
(902, 37, 243, 5, 4000, 5000, '0000-00-00', 0),
(903, 37, 313, 12, 1560, 3000, '0000-00-00', 0),
(904, 37, 357, 9, 1080, 2250, '0000-00-00', 0),
(905, 39, 138, 17, 67286, 85000, '0000-00-00', 0),
(906, 39, 163, 6, 14250, 18000, '0000-00-00', 0),
(907, 39, 164, 4, 15832, 20000, '0000-00-00', 0),
(908, 39, 165, 11, 26125, 33000, '0000-00-00', 0),
(909, 39, 166, 16, 56000, 72000, '0000-00-00', 0),
(910, 39, 167, 12, 63996, 84000, '0000-00-00', 0),
(911, 39, 168, 10, 38330, 45000, '0000-00-00', 0),
(912, 35, 104, 5, 20310, 20000, '0000-00-00', 0),
(913, 35, 100, 7, 28000, 35000, '0000-00-00', 0),
(914, 35, 90, 23, 35834, 46000, '0000-00-00', 0),
(915, 35, 97, 17, 32521, 42500, '0000-00-00', 0),
(916, 35, 94, 7, 16191, 21000, '0000-00-00', 0),
(917, 35, 91, 23, 35650, 46000, '0000-00-00', 0),
(918, 35, 92, 19, 29450, 38000, '0000-00-00', 0),
(919, 35, 101, 21, 57750, 73500, '0000-00-00', 0),
(920, 35, 102, 11, 44462, 55000, '0000-00-00', 0),
(921, 35, 93, 30, 70860, 90000, '0000-00-00', 0),
(922, 35, 291, 12, 27756, 36000, '0000-00-00', 0),
(923, 35, 361, 9, 27153, 36000, '0000-00-00', 0),
(924, 33, 80, 6, 23748, 30000, '0000-00-00', 0),
(925, 33, 85, 5, 19790, 25000, '0000-00-00', 0),
(926, 33, 339, 24, 84000, 108000, '0000-00-00', 0),
(927, 33, 86, 4, 21332, 28000, '0000-00-00', 0),
(928, 33, 78, 5, 19165, 22500, '0000-00-00', 0),
(929, 33, 81, 13, 30875, 39000, '0000-00-00', 0),
(930, 33, 79, 12, 47496, 54000, '0000-00-00', 0),
(931, 34, 163, 5, 11875, 15000, '0000-00-00', 0),
(932, 34, 165, 4, 9500, 12000, '0000-00-00', 0),
(933, 35, 85, 1, 3958, 5000, '0000-00-00', 0),
(934, 35, 80, 10, 39580, 50000, '0000-00-00', 0),
(935, 35, 339, 30, 105000, 135000, '0000-00-00', 0),
(936, 35, 86, 7, 37331, 49000, '0000-00-00', 0),
(937, 35, 78, 7, 26831, 31500, '0000-00-00', 0),
(938, 35, 81, 19, 45125, 57000, '0000-00-00', 0),
(939, 35, 79, 11, 43538, 49500, '0000-00-00', 0),
(940, 35, 295, 4, 6000, 10000, '0000-00-00', 0),
(941, 35, 297, 11, 23606, 33000, '0000-00-00', 0),
(942, 35, 298, 6, 15750, 21000, '0000-00-00', 0),
(943, 35, 346, 8, 17168, 24000, '0000-00-00', 0),
(944, 35, 302, 5, 16665, 20000, '0000-00-00', 0),
(945, 35, 333, 7, 12397, 17500, '0000-00-00', 0),
(946, 35, 349, 2, 4710, 6000, '0000-00-00', 0),
(947, 35, 301, 4, 16668, 20000, '0000-00-00', 0),
(948, 32, 164, 1, 3958, 5000, '0000-00-00', 0),
(949, 32, 165, 6, 14250, 18000, '0000-00-00', 0),
(950, 32, 163, 4, 9500, 12000, '0000-00-00', 0),
(951, 32, 166, 8, 28000, 36000, '0000-00-00', 0),
(952, 32, 167, 3, 15999, 21000, '0000-00-00', 0),
(953, 32, 168, 9, 34497, 40500, '0000-00-00', 0),
(954, 32, 170, 3, 11874, 13500, '0000-00-00', 0),
(955, 35, 4, 153, 232560, 306000, '0000-00-00', 0),
(956, 35, 7, 7, 5544, 7000, '0000-00-00', 0),
(957, 35, 9, 2, 2084, 3000, '0000-00-00', 0),
(958, 35, 11, 1, 813, 1000, '0000-00-00', 0),
(959, 35, 130, 3, 8100, 10500, '0000-00-00', 0),
(960, 35, 48, 58, 6960, 14500, '0000-00-00', 0),
(961, 35, 110, 42, 5796, 10500, '0000-00-00', 0),
(963, 35, 22, 20, 15900, 20000, '0000-00-00', 0),
(964, 35, 24, 4, 1700, 2000, '0000-00-00', 0),
(965, 35, 25, 11, 9350, 11000, '0000-00-00', 0),
(966, 35, 29, 7, 3150, 3500, '0000-00-00', 0),
(967, 35, 31, 1, 1867, 2000, '0000-00-00', 0),
(968, 35, 33, 10, 4500, 5000, '0000-00-00', 0),
(969, 35, 111, 4, 1800, 2000, '0000-00-00', 0),
(970, 35, 35, 1, 450, 500, '0000-00-00', 0),
(971, 35, 36, 9, 4050, 4500, '0000-00-00', 0),
(972, 35, 120, 11, 19712, 22000, '0000-00-00', 0),
(973, 35, 38, 10, 17920, 25000, '0000-00-00', 0),
(974, 35, 39, 9, 16020, 18000, '0000-00-00', 0),
(975, 35, 39, 10, 17800, 20000, '0000-00-00', 0),
(976, 35, 52, 1, 2525, 3000, '0000-00-00', 0),
(977, 35, 55, 1, 2525, 3000, '0000-00-00', 0),
(978, 35, 57, 1, 1458, 2000, '0000-00-00', 0),
(979, 35, 66, 2, 450, 1000, '0000-00-00', 0),
(980, 35, 70, 4, 1720, 2000, '0000-00-00', 0),
(981, 35, 352, 1, 11000, 13000, '0000-00-00', 0),
(982, 35, 71, 2, 4400, 6000, '0000-00-00', 0),
(983, 35, 134, 25, 7025, 12500, '0000-00-00', 0),
(984, 32, 270, 1, 1140, 2000, '0000-00-00', 0),
(985, 32, 230, 7, 5691, 7000, '0000-00-00', 0),
(986, 32, 336, 1, 14000, 15000, '0000-00-00', 0),
(987, 38, 97, 14, 26782, 35000, '0000-00-00', 0),
(988, 38, 100, 2, 8000, 10000, '0000-00-00', 0),
(989, 38, 102, 7, 28294, 35000, '0000-00-00', 0),
(990, 38, 291, 2, 4626, 6000, '0000-00-00', 0),
(991, 38, 294, 14, 32382, 42000, '0000-00-00', 0),
(992, 38, 360, 8, 25664, 32000, '0000-00-00', 0),
(993, 38, 295, 1, 1500, 2500, '0000-00-00', 0),
(994, 38, 296, 8, 16664, 24000, '0000-00-00', 0),
(995, 38, 297, 10, 21460, 30000, '0000-00-00', 0),
(996, 38, 298, 12, 31500, 42000, '0000-00-00', 0),
(997, 38, 300, 3, 9999, 12000, '0000-00-00', 0),
(998, 38, 301, 2, 8334, 10000, '0000-00-00', 0),
(999, 38, 302, 1, 3333, 4000, '0000-00-00', 0),
(1000, 38, 303, 13, 43329, 52000, '0000-00-00', 0),
(1001, 38, 308, 1, 3375, 4000, '0000-00-00', 0),
(1002, 38, 310, 8, 26664, 32000, '0000-00-00', 0),
(1003, 38, 331, 2, 10240, 12000, '0000-00-00', 0),
(1004, 38, 347, 3, 7065, 9000, '0000-00-00', 0),
(1005, 38, 349, 4, 9420, 12000, '0000-00-00', 0),
(1006, 38, 350, 3, 10125, 12000, '0000-00-00', 0),
(1007, 38, 7, 1, 792, 1000, '0000-00-00', 0),
(1008, 38, 9, 2, 2084, 3000, '0000-00-00', 0),
(1009, 38, 11, 2, 1626, 2000, '0000-00-00', 0),
(1010, 38, 24, 20, 8500, 10000, '0000-00-00', 0),
(1011, 38, 25, 4, 3400, 4000, '0000-00-00', 0),
(1012, 38, 31, 3, 5601, 6000, '0000-00-00', 0),
(1013, 38, 54, 1, 2363, 3000, '0000-00-00', 0),
(1014, 38, 53, 1, 2675, 3000, '0000-00-00', 0),
(1015, 38, 57, 1, 1458, 2000, '0000-00-00', 0),
(1016, 38, 110, 11, 1518, 2750, '0000-00-00', 0),
(1017, 38, 111, 14, 6300, 7000, '0000-00-00', 0),
(1018, 38, 112, 4, 5016, 8000, '0000-00-00', 0),
(1019, 38, 113, 16, 7200, 8000, '0000-00-00', 0),
(1020, 38, 130, 2, 5400, 7000, '0000-00-00', 0),
(1021, 38, 320, 11, 1430, 2750, '0000-00-00', 0),
(1022, 38, 326, 1, 1180, 2000, '0000-00-00', 0),
(1023, 38, 327, 1, 1130, 2000, '0000-00-00', 0),
(1024, 38, 354, 6, 5280, 6000, '0000-00-00', 0),
(1025, 38, 2, 124, 36208, 62000, '0000-00-00', 0),
(1026, 39, 169, 23, 54625, 69000, '0000-00-00', 0),
(1027, 39, 170, 10, 39580, 45000, '0000-00-00', 0),
(1028, 39, 141, 20, 38000, 50000, '0000-00-00', 0),
(1029, 39, 151, 16, 24640, 32000, '0000-00-00', 0),
(1030, 39, 152, 10, 27500, 35000, '0000-00-00', 0),
(1031, 39, 157, 40, 96480, 120000, '0000-00-00', 0),
(1032, 39, 337, 4, 12832, 16000, '0000-00-00', 0),
(1033, 39, 355, 6, 11640, 15000, '0000-00-00', 0),
(1034, 39, 135, 48, 45984, 96000, '0000-00-00', 0),
(1035, 39, 136, 41, 39278, 82000, '0000-00-00', 0),
(1036, 39, 172, 48, 14016, 24000, '0000-00-00', 0),
(1037, 39, 176, 2, 1584, 2000, '0000-00-00', 0),
(1038, 39, 188, 2, 3600, 5000, '0000-00-00', 0),
(1039, 39, 189, 8, 13680, 16000, '0000-00-00', 0),
(1040, 39, 196, 8, 3600, 4000, '0000-00-00', 0),
(1041, 39, 203, 6, 11100, 12000, '0000-00-00', 0),
(1042, 39, 206, 48, 21024, 24000, '0000-00-00', 0),
(1043, 39, 208, 3, 2625, 3000, '0000-00-00', 0),
(1044, 39, 209, 7, 3150, 3500, '0000-00-00', 0),
(1045, 39, 218, 2, 1750, 2000, '0000-00-00', 0),
(1046, 39, 219, 3, 1350, 1500, '0000-00-00', 0),
(1047, 39, 221, 1, 450, 500, '0000-00-00', 0),
(1048, 39, 222, 5, 8750, 10000, '0000-00-00', 0),
(1049, 39, 223, 6, 10500, 12000, '0000-00-00', 0),
(1050, 39, 224, 1, 1792, 2000, '0000-00-00', 0),
(1051, 39, 226, 8, 14336, 16000, '0000-00-00', 0),
(1052, 39, 230, 5, 4065, 5000, '0000-00-00', 0),
(1053, 39, 243, 1, 800, 1000, '0000-00-00', 0),
(1054, 39, 253, 3, 1290, 3000, '0000-00-00', 0),
(1055, 39, 255, 1, 1500, 2000, '0000-00-00', 0),
(1056, 39, 272, 1, 1625, 2000, '0000-00-00', 0),
(1057, 39, 243, 1, 800, 1000, '0000-00-00', 0),
(1058, 39, 316, 1, 3300, 4000, '0000-00-00', 0),
(1059, 39, 357, 8, 960, 2000, '0000-00-00', 0),
(1060, 32, 136, 58, 55564, 116000, '0000-00-00', 0),
(1061, 32, 316, 6, 19800, 24000, '0000-00-00', 0),
(1062, 32, 172, 20, 5840, 10000, '0000-00-00', 0),
(1063, 32, 176, 1, 792, 1000, '0000-00-00', 0),
(1064, 32, 188, 8, 14400, 20000, '0000-00-00', 0),
(1065, 32, 189, 4, 6840, 8000, '0000-00-00', 0),
(1066, 32, 191, 1, 900, 1000, '0000-00-00', 0),
(1067, 32, 196, 2, 900, 1000, '0000-00-00', 0),
(1068, 32, 203, 1, 1850, 2000, '0000-00-00', 0),
(1069, 32, 202, 4, 1700, 2000, '0000-00-00', 0),
(1070, 32, 286, 1, 800, 1000, '0000-00-00', 0),
(1071, 32, 259, 1, 8200, 10000, '0000-00-00', 0),
(1072, 32, 237, 1, 900, 1000, '0000-00-00', 0),
(1073, 32, 236, 4, 3252, 4000, '0000-00-00', 0),
(1074, 32, 229, 2, 2670, 4000, '0000-00-00', 0),
(1075, 32, 228, 7, 3150, 7000, '0000-00-00', 0),
(1076, 32, 225, 1, 930, 1000, '0000-00-00', 0),
(1077, 32, 223, 15, 26250, 30000, '0000-00-00', 0),
(1078, 32, 222, 10, 17500, 20000, '0000-00-00', 0),
(1079, 32, 219, 9, 4050, 4500, '0000-00-00', 0),
(1080, 32, 216, 1, 730, 1000, '0000-00-00', 0),
(1081, 44, 79, 18, 71244, 81000, '0000-00-00', 0),
(1082, 44, 85, 13, 51454, 65000, '0000-00-00', 0),
(1083, 32, 213, 3, 5451, 6000, '0000-00-00', 0),
(1084, 44, 80, 4, 15832, 20000, '0000-00-00', 0),
(1085, 44, 339, 15, 52500, 67500, '0000-00-00', 0),
(1086, 44, 86, 11, 58663, 77000, '0000-00-00', 0),
(1087, 32, 209, 3, 1350, 1500, '0000-00-00', 0),
(1088, 44, 81, 26, 61750, 78000, '0000-00-00', 0),
(1089, 44, 78, 10, 38330, 45000, '0000-00-00', 0),
(1090, 44, 347, 5, 11775, 15000, '0000-00-00', 0),
(1091, 32, 282, 2, 3166, 4000, '0000-00-00', 0),
(1092, 44, 349, 6, 14130, 18000, '0000-00-00', 0),
(1093, 44, 346, 10, 21460, 30000, '0000-00-00', 0),
(1094, 46, 104, 20, 81240, 100000, '0000-00-00', 0),
(1095, 46, 318, 2, 8126, 10000, '0000-00-00', 0),
(1096, 46, 16, 25, 42500, 50000, '0000-00-00', 0),
(1097, 48, 1, 1, 315, 500, '2022-11-03', 1),
(1098, 48, 2, 3, 876, 1500, '2022-11-03', 1),
(1099, 49, 1, 1, 315, 500, '2022-11-07', 1),
(1100, 49, 80, 1, 3958, 5000, '2022-11-07', 1);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`, `date_selling`, `id_lab`) VALUES
(1101, 54, 2, 1, 292, 500, '2022-11-08', 1),
(1102, 54, 3, 1, 281, 500, '2022-11-08', 1),
(1103, 54, 4, 2, 3040, 4000, '2022-11-08', 1),
(1104, 54, 339, 5, 17500, 22500, '2022-11-08', 1),
(1105, 54, 11, 1, 813, 1000, '2022-11-08', 1),
(1106, 54, 20, 1, 1750, 2000, '2022-11-08', 1),
(1107, 54, 19, 1, 1750, 2000, '2022-11-08', 1),
(1108, 54, 13, 1, 0, 0, '2022-11-08', 1),
(1109, 54, 1, 1, 315, 500, '2022-11-08', 1),
(1110, 54, 10, 1, 1042, 1500, '2022-11-08', 1),
(1111, 54, 18, 1, 900, 1000, '2022-11-08', 1),
(1112, 54, 24, 1, 425, 500, '2022-11-08', 1),
(1113, 55, 29, 1, 450, 500, '2022-11-09', 1),
(1114, 56, 331, 1, 5120, 6000, '2022-11-10', 1),
(1115, 57, 360, 1, 3208, 4000, '2022-11-10', 1),
(1116, 57, 86, 2, 10668, 14000, '2022-11-10', 1),
(1117, 58, 490, 1, 1800, 2000, '2022-11-10', 1),
(1118, 59, 96, 1, 1912, 2500, '2022-12-05', 1),
(1119, 59, 370, 1, 4063, 5000, '2022-12-05', 1),
(1120, 59, 472, 1, 1850, 2500, '2022-12-05', 1),
(1121, 59, 489, 1, 850, 1000, '2022-12-05', 1),
(1122, 59, 83, 1, 2375, 3000, '2022-12-05', 1),
(1123, 59, 81, 1, 2375, 3000, '2022-12-05', 1),
(1124, 59, 490, 1, 1800, 2000, '2022-12-05', 1),
(1127, 62, 490, 1, 1800, 2000, '2023-01-19', 1),
(1128, 63, 490, 4, 7200, 8000, '2023-01-19', 1),
(1130, 66, 83, 4, 9500, 12000, '2023-01-19', 1),
(1133, 69, 83, 3, 7125, 9000, '2023-01-19', 1),
(1134, 70, 81, 2, 4750, 6000, '2023-01-19', 1),
(1135, 71, 301, 2, 8334, 10000, '2023-01-19', 1),
(1136, 72, 104, 20, 81240, 100000, '2023-01-19', 1),
(1137, 73, 430, 4, 12836, 16000, '2023-01-19', 1),
(1138, 74, 104, 5, 20310, 25000, '2023-01-19', 1),
(1139, 75, 104, 5, 20310, 25000, '2023-01-19', 1),
(1140, 76, 96, 2, 3824, 5000, '2023-01-21', 1),
(1141, 77, 96, 3, 5736, 7500, '2023-01-21', 1),
(1142, 78, 96, 2, 3824, 5000, '2023-01-21', 1),
(1143, 85, 490, 5, 9000, 10000, '2023-01-19', 1),
(1144, 86, 490, 5, 9000, 10000, '2023-01-30', 1),
(1151, 93, 96, 7, 13384, 17500, '2023-01-31', 1),
(1155, 97, 430, 1, 3209, 4000, '2023-01-31', 1),
(1156, 98, 96, 1, 1912, 2500, '2023-01-31', 1),
(1157, 99, 47, 5, 980, 1250, '2023-01-31', 1),
(1158, 100, 96, 1, 1912, 2500, '2023-01-31', 1),
(1159, 101, 129, 4, 3284, 4000, '2023-01-31', 1),
(1164, 106, 490, 4, 7200, 8000, '2023-01-31', 1),
(1165, 107, 491, 2, 1600, 2000, '2023-01-31', 1),
(1166, 108, 318, 1, 4063, 5000, '2023-02-12', 2),
(1167, 109, 160, 1, 4062, 5000, '2023-02-12', 2),
(1168, 110, 158, 1, 4000, 5000, '2023-02-12', 2),
(1169, 111, 96, 2, 3824, 5000, '2023-02-19', 1),
(1170, 112, 98, 3, 7500, 9000, '2023-02-19', 1),
(1171, 113, 430, 4, 12836, 16000, '2023-02-19', 1),
(1172, 114, 103, 7, 10920, 14000, '2023-02-19', 1),
(1173, 115, 491, 2, 1600, 2000, '2023-02-19', 1),
(1174, 116, 98, 2, 5000, 6000, '2023-02-19', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(12, '2022-09-14', 3, 1, 14),
(13, '2022-09-20', 2, 1, 2),
(14, '2022-09-20', 2, 2, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(19, 12, 14, 'Bala-bala + Tahu Pedas', 800, 1000, 575, 0, 575, 460000, 575000),
(20, 8, 2, 'Tahu Pedas', 1300, 1500, 205, 0, 205, 266500, 307500),
(21, 8, 2, 'Bala Bala', 800, 1000, 71, 0, 71, 56800, 71000),
(22, 9, 2, 'Karoket mrecon', 1300, 1500, 112, 34, 78, 101400, 117000),
(23, 9, 2, 'Tahu Walik', 800, 1000, 137, 0, 137, 109600, 137000),
(24, 14, 1, 'Bala-Bala', 800, 1000, 200, 0, 200, 160000, 200000),
(25, 14, 1, 'Tahu Crispy', 1500, 2000, 50, 0, 50, 75000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL,
  `supplier` varchar(128) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_tool_category` int(11) NOT NULL,
  `tool` varchar(128) NOT NULL,
  `brand` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tool_condition` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tool`
--

INSERT INTO `tbl_tool` (`id_tool`, `id_tool_category`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES
(1, 4, 'Showcase', 'Panasonic', 2, 1800000, 1, 'Kepemilikan Titipan Coca Cola', 1, 1),
(2, 4, 'Freezer', 'Aqua 262 Liter', 1, 0, 1, 'Kepemilikan Titipan AICE', 1, 1),
(3, 4, 'Rak Piring', '3 Tingkat', 1, 200000, 1, 'Kepemilikan SPW', 1, 1),
(5, 1, 'Kompor', 'Rinnai 2 Tungku', 1, 325000, 1, 'Kepemilikan SPW', 1, 1),
(6, 1, 'Kompor Rinnai', '', 1, 0, 1, '', 2, 1),
(7, 1, 'Kompor', 'Rinai 2 Tungku', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(8, 1, 'Gas 3 Kg', '3 Kg', 2, 160000, 1, 'Kepemilikan SPW', 1, 1),
(9, 1, 'Gas 5 Kg', '5 Kg', 1, 400000, 1, 'Kepemilikan SPW', 1, 1),
(10, 4, 'Estalase', '2 Meter', 1, 1200000, 1, 'Kepemilikan SPW', 1, 1),
(11, 1, 'Rice Cooker', '', 1, 250000, 1, 'Kepemilikan SPW', 1, 1),
(12, 1, 'Langseng', '', 1, 50000, 1, 'Kepemilikan SPW', 1, 1),
(13, 1, 'Katel Besar', 'Ukuran Besar', 1, 75000, 1, 'Kepemilikan SPW', 1, 1),
(14, 1, 'Katel Kecil', 'Ukuran Kecil', 1, 45000, 1, 'Kepemilikan SPW', 1, 1),
(15, 1, 'Baskom Besar', 'Ukuran Besar Biru', 1, 75000, 1, 'Kepemilikan SPW', 1, 1),
(16, 1, 'Baskom Kecil', 'Ukuran Kecil Warna Merah', 2, 25000, 1, 'Kepemilikan SPW', 1, 1),
(17, 1, 'Kontener Besar', 'Lion Star', 1, 125000, 1, 'Kepemilikan SPW', 1, 1),
(18, 1, 'Timbingan Digital', 'Kapasitas Max 5 Kg', 5, 100000, 1, 'Kepemilikan SPW', 1, 1),
(19, 1, 'Gunting', '', 5, 16000, 1, 'Kepemilikan SPW', 1, 1),
(20, 1, 'Talenan Kayu', 'Kayu', 2, 10000, 1, 'Kepemilikan SPW', 1, 1),
(21, 1, 'Serokan', 'Stanless', 4, 20000, 1, 'Kepemilikan SPW', 1, 1),
(22, 1, 'Sodet', 'Plastik', 3, 5000, 1, 'Kepemilikan SPW', 1, 1),
(23, 1, 'Sealer', '', 5, 250000, 1, 'Kepemilikan SPW', 1, 1),
(24, 1, 'Timbangan BDigital Besar', 'Kapasitas Max 100 Kg', 1, 400000, 1, 'Kepemilikan SPW', 1, 1),
(25, 1, 'Keler Besar', '', 1, 45000, 1, 'Kepemilikan SPW', 1, 1),
(26, 1, 'Gelas Plastik', 'Plastik', 167, 5000, 1, 'Kepemilikan SPW', 1, 1),
(27, 1, 'Cangkir Plastik', 'Plastik', 6, 5000, 1, 'Kepemilikan SPW', 1, 1),
(28, 1, 'Piring Plastik', 'Plastik', 9, 7000, 1, 'Kepemilikan SPW', 1, 1),
(29, 1, 'Mangkok Plastik', 'Plastik', 254, 7000, 1, 'Kepemilikan SPW', 1, 1),
(30, 1, 'Mangkok Kaca', 'Kaca', 1, 20000, 1, 'Kepemilikan SPW', 1, 1),
(31, 1, 'Box Roti Bening', 'Plastik', 5, 35000, 1, 'Kepemilikan SPW', 1, 1),
(32, 1, 'Baki', '', 2, 20000, 1, 'Kepemilikan SPW', 1, 1),
(33, 1, 'Gayung', 'Gayung', 1, 1000, 0, '', 1, 1),
(34, 1, 'Gayung', 'Plastik', 1, 10000, 1, 'Kepemilikan SPW', 1, 1),
(35, 1, 'Ember', 'Plastik', 1, 15000, 1, 'Kepemilikan SPW', 1, 1),
(36, 1, 'Pe\'lan', '', 3, 15000, 1, 'Kepemilikan SPW', 1, 1),
(37, 2, 'Meja Kecil', 'Kayu', 8, 0, 1, 'Kepemilikan Sekolah', 1, 1),
(38, 2, 'Meja Besar', 'Kayu', 2, 0, 1, 'Kepemilikan Sekolah', 1, 1),
(39, 2, 'Bangku Kayu', 'Kayu', 16, 0, 1, 'Kepemilikan Sekolah', 1, 1),
(40, 2, 'Kursi Plastik', 'Plastik', 2, 50000, 1, 'Kepemilikan SPW', 1, 1),
(41, 1, 'Cetakan Telur', 'Stanless', 1, 35000, 1, 'Kepemilikan SPW', 1, 1),
(42, 1, 'Botol Saus Kecap', 'Plastik', 3, 15000, 1, 'Kepemilikan SPW', 1, 1),
(43, 1, 'Pisau', 'Stanless', 4, 20000, 1, 'Kepemilikan SPW', 1, 1),
(44, 1, 'Centong', 'Plastik', 2, 10000, 1, 'Kepemilikan SPW', 1, 1),
(45, 1, 'Sendok Nasi', 'Plastik', 15, 22000, 1, 'Kepemilikan SPW', 1, 1),
(46, 1, 'Sendok Stanless', 'Stanless', 85, 2000, 1, 'Kepemilikan SPW', 1, 1),
(47, 1, 'Garpu', 'Stanless', 9, 2000, 1, 'Kepemilikan SPW', 1, 1),
(48, 1, 'Sendok Plastik', 'Plastik', 135, 200, 1, 'Kepemilikan SPW', 1, 1),
(49, 1, 'Penjapit', 'Almunium', 1, 15000, 1, 'Kepemilikan SPW', 1, 1),
(50, 1, 'Sapu', 'Kayu', 1, 10000, 1, 'Kepemilikan SPW', 1, 1),
(51, 1, 'Termos Es', 'Kapasitas 20 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(52, 1, 'Sinduk', 'Plastik', 1, 12000, 1, 'Kepemilikan SPW', 1, 1),
(53, 1, 'Gas LPG', '3 Kg', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(54, 1, 'Blender', 'Philips', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(55, 1, 'Galon', '19 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(56, 1, 'Rak Plastik', 'Plastik', 1, 12000, 1, 'Kepemilikan SPW', 1, 1),
(57, 1, 'Galon dengan Kran ', 'Kapasitas 5 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1),
(58, 4, 'Gitar Bass', 'Sakura', 0, 0, 1, 'Punya Anas', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tool_categories`
--

CREATE TABLE `tbl_tool_categories` (
  `id_tool_category` int(11) NOT NULL,
  `tool_category` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tool_categories`
--

INSERT INTO `tbl_tool_categories` (`id_tool_category`, `tool_category`) VALUES
(1, 'Peralatan'),
(2, 'Interior'),
(3, 'Gedung'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tool_condition`
--

CREATE TABLE `tbl_tool_condition` (
  `id_tool_condition` int(11) NOT NULL,
  `condition` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `tbl_tool_purchase`
--

CREATE TABLE `tbl_tool_purchase` (
  `id_purchase` int(11) NOT NULL,
  `date_purchasing` date NOT NULL,
  `shop` varchar(255) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_lab` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tool_purchase`
--

INSERT INTO `tbl_tool_purchase` (`id_purchase`, `date_purchasing`, `shop`, `id_user`, `id_lab`) VALUES
(1, '2023-02-13', 'Toko Yul', 2, 1),
(2, '2023-02-14', 'Toko Yul', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tool_purchase_detail`
--

CREATE TABLE `tbl_tool_purchase_detail` (
  `id_purchase_detail` int(11) NOT NULL,
  `id_purchase` int(10) NOT NULL,
  `id_tool` int(10) NOT NULL,
  `qty_purchase` int(10) NOT NULL,
  `price_purchase` int(10) NOT NULL,
  `total_price_purchase` int(10) NOT NULL,
  `condition_purchase` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tool_purchase_detail`
--

INSERT INTO `tbl_tool_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_tool`, `qty_purchase`, `price_purchase`, `total_price_purchase`, `condition_purchase`) VALUES
(2, 2, 45, 12, 1000, 12000, 1),
(8, 2, 19, 5, 2000, 10000, 1),
(14, 2, 1, 2, 900000, 1800000, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(14, 'Siswa SPW APL', 'siswaspwapl@gmail.com', '', '$2y$10$CFFDjjNIPDeIFlXhVUTg0ucFNkfqrFaOliEt72k1RzZJIzQsHsHHq', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(15, 'Siswa SPW TKJ', 'siswaspwtkj@gmail.com', 'siswaspwtkj', '$2y$10$bIzSLHRZRZ8cBUnpCCcv0OjjeiCVzvFTn2g07Ny54qCRz9dokIs2q', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(16, 'Siswa SPW ATPH', 'siswaspwatph@gmail.com', 'siswaspwatph', '$2y$10$OVqPUxjnjF0UYk5xHbUHOu.m8MF17PjjzqplYgtTFZCMm3muNS8nu', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(17, 'Siswa SPW APHP', 'siswaspwaphp@gmail.com', 'siswaspwaphp', '$2y$10$b4q3JfyYvRVnND0sAaZBq.cLxd6ng4PBDWNgiPc21C5RgPpXJIs1O', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(18, 'Siswa SPW ATU', 'siswaspwatu@gmail.com', 'siswaspwatu', '$2y$10$9bvvL4iExOzCd8TCxD.ubOlIfeGMieXDm7rSjjK9lMBAZ/h9lA1zm', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1),
(19, 'Guru Piket', 'gurupiket@gmail.com', 'gurupiket', '$2y$10$oVtIyRr1v.pa4pJHm0xlaOD3zQxgAanA0Dtf2chFmWpWGhLx/eKTC', 5, 5, 'default.jpg', '', '', '', '', '2022-08-26', 1),
(20, 'Aboeya', 'deri@gmail.com', '', '$2y$10$4LpUv3sq5nyE/KpG6USEO.8UuHWPqlP6UqwXd.hiX4QHkXAiC1hzW', 7, 7, 'default.jpg', '', '', '', '', '2022-09-21', 1),
(21, 'Siomay Fitri', '', '', '', 7, 7, 'default.jpg', '', '', '', '', '2022-10-16', 1),
(25, 'Tenant', '', '', '', 7, 7, 'default.jpg', '', '', '', '', '2023-02-22', 1),
(27, 'Deri Saeful Rokhmat', '', '', '', 8, 8, 'default.jpg', '', '', '', '', '2023-02-22', 1),
(28, 'Lucky Ahmad Dzulkifly', '', '', '', 8, 8, 'default.jpg', '', '', '', '', '2023-02-22', 1),
(29, 'Santosa Arbi Nugraha', '', '', '', 8, 8, 'default.jpg', '', '', '', '', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access_menu`
--

CREATE TABLE `tbl_user_access_menu` (
  `id_user_access_menu` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(39, 1, 17),
(40, 1, 18),
(41, 7, 18),
(42, 7, 16),
(43, 1, 19),
(44, 1, 20),
(45, 2, 19),
(46, 2, 20),
(48, 6, 16),
(51, 1, 21),
(52, 2, 21),
(53, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu`
--

CREATE TABLE `tbl_user_menu` (
  `id_user_menu` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `order_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_menu`
--

INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES
(1, 'admin', 1),
(2, 'produk', 4),
(3, 'peralatan', 3),
(5, 'penjualan', 7),
(6, 'stok', 8),
(7, 'daftar', 9),
(16, 'pengguna', 12),
(17, 'data', 2),
(18, 'mitra', 5),
(19, 'kas', 10),
(20, 'akuntansi', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(7, 'Mitra'),
(8, 'Franchisor');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_submenu`
--

INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES
(1, 1, 'Menu Management', 'admin/menu', 'ni ni-bullet-list-67 text-primary', 1, 1),
(2, 1, 'Access Role Menu', 'admin/role', 'ni ni-ungroup text-success', 1, 2),
(3, 17, 'Data Web', 'data/data_web', 'ni ni-world-2 text-warning', 1, 1),
(4, 17, 'Lab SPW', 'data/lab', 'ni ni-atom text-info', 1, 2),
(5, 2, 'Data Kategori', 'produk/category', 'ni ni-bullet-list-67 text-info', 1, 2),
(6, 2, 'Data Gudang', 'produk', 'ni ni-box-2 text-warning', 1, 3),
(8, 3, 'Data Aset', 'peralatan', 'ni ni-settings text-success', 1, 2),
(9, 2, 'Data Pembelian', 'produk/index_purchase', 'ni ni-cart text-success', 1, 4),
(10, 5, 'Data Penjualan SPW', 'penjualan', 'ni ni-cart text-primary', 1, 1),
(11, 6, 'Stok SPW', 'stok/index_stock_spw', 'ni ni-box-2 text-success', 1, 2),
(12, 7, 'Daftar Harga', 'daftar', 'ni ni-shop text-primary', 1, 1),
(13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1, 1),
(14, 16, 'Profile', 'pengguna/profile', 'ni ni-badge text-primary', 1, 2),
(15, 2, 'Data Supplier', 'produk/supplier', 'ni ni-single-02 text-primary', 1, 1),
(16, 5, 'Data Penjualan Titipan', 'penjualan/franchise_index', 'ni ni-cart text-success', 1, 3),
(17, 17, 'Jadwal SPW', 'data/schedule', 'ni ni-calendar-grid-58 text-primary', 1, 3),
(18, 18, 'Data Mitra', 'mitra/partner', 'ni ni-paper-diploma text-primary', 1, 1),
(19, 5, 'Data Penjualan Siswa', 'penjualan/student_selling_index', 'ni ni-cart text-info', 1, 4),
(20, 18, 'Data Franchisor', 'mitra/franchisor', 'ni ni-single-02 text-success', 1, 2),
(21, 19, 'Kas Besar', 'kas/big_cash', 'ni ni-money-coins text-primary', 1, 1),
(22, 19, 'Kas Kecil', 'kas/petty_cash', 'ni ni-money-coins text-success', 1, 2),
(23, 19, 'Penyesuaian Kurs', 'kas/exchange_rate', 'ni ni-money-coins text-danger', 1, 3),
(24, 19, 'Laporan Kas', 'kas/cash_report', 'ni ni-single-copy-04 text-info', 1, 4),
(25, 20, 'Neraca Saldo', 'akuntansi/balance', 'ni ni-collection text-primary', 1, 1),
(26, 20, 'Laba & Rugi', 'akuntansi/profit_loss', 'ni ni-chart-pie-35 text-danger', 1, 2),
(27, 6, 'Penyesuaian Stok', 'stok/stock_adjustment', 'ni ni-chart-bar-32 text-danger', 1, 3),
(28, 2, 'Data Mutasi', 'produk/index_mutation', 'ni ni-app text-danger', 1, 5),
(29, 3, 'Data Pembelian Aset', 'peralatan/index_purchase', 'ni ni-cart text-danger', 1, 3),
(30, 3, 'Data Kategori Aset', 'peralatan/category', 'ni ni-bullet-list-67 text-info', 1, 1),
(31, 6, 'Stok Gudang', 'stok', 'ni ni-box-2 text-warning', 1, 1),
(33, 5, 'Data Penjualan Mitra', 'penjualan/partner_index', 'ni ni-cart text-warning', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `tbl_cash_big`
--
ALTER TABLE `tbl_cash_big`
  ADD PRIMARY KEY (`id_cash_big`);

--
-- Indexes for table `tbl_cash_petty`
--
ALTER TABLE `tbl_cash_petty`
  ADD PRIMARY KEY (`id_cash_petty`);

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
-- Indexes for table `tbl_product_mutation`
--
ALTER TABLE `tbl_product_mutation`
  ADD PRIMARY KEY (`id_mutation`);

--
-- Indexes for table `tbl_product_mutation_detail`
--
ALTER TABLE `tbl_product_mutation_detail`
  ADD PRIMARY KEY (`id_mutation_detail`);

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
-- Indexes for table `tbl_tool_categories`
--
ALTER TABLE `tbl_tool_categories`
  ADD PRIMARY KEY (`id_tool_category`);

--
-- Indexes for table `tbl_tool_condition`
--
ALTER TABLE `tbl_tool_condition`
  ADD PRIMARY KEY (`id_tool_condition`);

--
-- Indexes for table `tbl_tool_purchase`
--
ALTER TABLE `tbl_tool_purchase`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indexes for table `tbl_tool_purchase_detail`
--
ALTER TABLE `tbl_tool_purchase_detail`
  ADD PRIMARY KEY (`id_purchase_detail`);

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
-- AUTO_INCREMENT for table `tbl_cash_big`
--
ALTER TABLE `tbl_cash_big`
  MODIFY `id_cash_big` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_petty`
--
ALTER TABLE `tbl_cash_petty`
  MODIFY `id_cash_petty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_data_lab`
--
ALTER TABLE `tbl_data_lab`
  MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_data_web`
--
ALTER TABLE `tbl_data_web`
  MODIFY `id_data_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_product_mutation`
--
ALTER TABLE `tbl_product_mutation`
  MODIFY `id_mutation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_mutation_detail`
--
ALTER TABLE `tbl_product_mutation_detail`
  MODIFY `id_mutation_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product_place`
--
ALTER TABLE `tbl_product_place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_selling`
--
ALTER TABLE `tbl_selling`
  MODIFY `id_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tbl_selling_detail`
--
ALTER TABLE `tbl_selling_detail`
  MODIFY `id_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1175;

--
-- AUTO_INCREMENT for table `tbl_student_selling`
--
ALTER TABLE `tbl_student_selling`
  MODIFY `id_student_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_student_selling_detail`
--
ALTER TABLE `tbl_student_selling_detail`
  MODIFY `id_student_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  MODIFY `id_tool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_tool_categories`
--
ALTER TABLE `tbl_tool_categories`
  MODIFY `id_tool_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tool_condition`
--
ALTER TABLE `tbl_tool_condition`
  MODIFY `id_tool_condition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tool_purchase`
--
ALTER TABLE `tbl_tool_purchase`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tool_purchase_detail`
--
ALTER TABLE `tbl_tool_purchase_detail`
  MODIFY `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_user_access_menu`
--
ALTER TABLE `tbl_user_access_menu`
  MODIFY `id_user_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_user_menu`
--
ALTER TABLE `tbl_user_menu`
  MODIFY `id_user_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user_submenu`
--
ALTER TABLE `tbl_user_submenu`
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
