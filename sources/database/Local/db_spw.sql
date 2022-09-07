-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 08:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spw`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_franchise`
--

INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`, `id_lab`) VALUES
(5, '2022-08-10', 19, 1),
(6, '2022-08-11', 19, 1),
(7, '2022-08-10', 19, 2),
(8, '2022-08-11', 19, 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_franchise_detail`
--

INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES
(2, 5, 1, 'Basruk', 4500, 5000, 15, 5, 10, 45000, 50000),
(3, 5, 1, 'Nasi Uduk', 2500, 3000, 50, 11, 39, 97500, 117000),
(4, 5, 2, 'Cilok', 1800, 2000, 50, 5, 45, 81000, 90000),
(5, 5, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(6, 5, 5, 'Cibay', 800, 1000, 10, 0, 10, 8000, 10000),
(7, 5, 6, 'Buras', 1000, 1500, 20, 0, 20, 20000, 30000),
(9, 5, 4, 'Snack Kriuk', 4500, 5000, 15, 0, 15, 67500, 75000),
(10, 7, 1, 'Nasi Uduk', 2500, 3000, 20, 0, 20, 50000, 60000),
(11, 7, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000),
(12, 5, 2, 'Cilok', 800, 2000, 20, 0, 0, 0, 0),
(13, 5, 1, 'Nutrisari', 2500, 3000, 60, 0, 0, 0, 0),
(14, 5, 5, 'Rujak', 2000, 3000, 20, 0, 0, 0, 0),
(15, 5, 5, 'Cibay', 800, 1000, 20, 20, 0, 0, 0),
(16, 5, 4, 'Astor', 800, 1000, 20, 0, 20, 16000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchisor`
--

CREATE TABLE `tbl_franchisor` (
  `id_franchisor` int(11) NOT NULL,
  `franchisor` varchar(125) NOT NULL,
  `whatsapp` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_franchisor`
--

INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES
(1, 'Pak Deri', '81319789000'),
(2, 'Bu Dyah', '81286544533'),
(3, 'Bu Siti Julaeha', ''),
(4, 'Bu Tuti', ''),
(5, 'Pak Anas', '85156334607'),
(6, 'Pak Luky', ''),
(8, 'Ratna XI DG', '');

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
(1, 'SPW-001', 1, 3, 'Cibodas Cup', 50, 315, 500, 'default-product.jpg', 1, 1),
(2, 'SPW-002', 1, 3, 'La Vida Cup', 200, 281, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-003', 1, 3, 'Hexua Cup', 24, 281, 500, 'default-product3.jpg', 1, 1),
(4, 'SPW-004', 1, 3, 'SUI Botol 600 mL', 10, 1520, 2000, 'default-product2.jpg', 1, 1),
(6, 'SPW-006', 1, 3, 'Arvin Botol 600 mL', 10, 1500, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 3, 'Ale - Ale', 38, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 3, 'Kiko', 60, 850, 1000, 'default-product.jpg', 1, 1),
(9, 'SPW-009', 2, 3, 'Koko Jelly Drink', 0, 795, 1500, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 3, 'Okky Jelly Drink', 20, 792, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-011', 2, 3, 'Teh Gelas', 29, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-012', 2, 3, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-013', 3, 3, 'Cocorio', 4, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-014', 3, 3, 'Top Ice', 26, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-015', 3, 3, 'Frenta', 5, 0, 0, 'default-product.jpg', 1, 1),
(16, 'SPW-016', 4, 3, 'Beng-beng', 68, 1700, 2000, 'default-product.jpg', 1, 1),
(17, 'SPW-017', 4, 3, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1),
(18, 'SPW-018', 4, 3, 'Chiki Ball', 0, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-019', 4, 3, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-020', 4, 3, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, 'SPW-021', 4, 3, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-022', 4, 3, 'Chocolatos Roll', 31, 795, 1000, 'default-product.jpg', 1, 1),
(23, 'SPW-023', 4, 3, 'Dilan 5 in 1', 12, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-024', 4, 3, 'Garuda Pilus', 146, 425, 500, 'default-product.jpg', 1, 1),
(25, 'SPW-025', 4, 3, 'Garuda Rosta', 0, 850, 1000, 'default-product.jpg', 1, 1),
(26, 'SPW-026', 4, 3, 'Gedy Malkist', 21, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-027', 4, 3, 'Gery Wafer', 22, 1583, 2000, 'default-product.jpg', 1, 1),
(28, 'SPW-028', 4, 3, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-029', 4, 3, 'Goriorio', 17, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-030', 4, 3, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, 'SPW-031', 4, 3, 'Kalpa', 5, 1667, 2000, 'default-product.jpg', 1, 1),
(32, 'SPW-032', 4, 3, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(33, 'SPW-033', 4, 3, 'Mie Shoer Kremez', 7, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-034', 4, 3, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-035', 4, 3, 'Nabati Aah', 62, 425, 500, 'default-product.jpg', 1, 1),
(36, 'SPW-036', 4, 3, 'Nabati Siip', 20, 425, 500, 'default-product.jpg', 1, 1),
(37, 'SPW-037', 4, 3, 'Nextar', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(38, 'SPW-038', 4, 3, 'Oreo Soft Cake', 18, 1750, 2000, 'default-product.jpg', 1, 1),
(39, 'SPW-039', 4, 3, 'Roma Arden', 0, 1700, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-040', 4, 3, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-041', 4, 3, 'Roma Malkist', 30, 900, 1000, 'default-product.jpg', 1, 1),
(42, 'SPW-042', 4, 3, 'Slai O\'Lai', 0, 850, 1000, 'default-product.jpg', 1, 1),
(43, 'SPW-043', 4, 3, 'Sosis Sonice', 0, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-044', 4, 3, 'Timtam Maxi', 5, 875, 1000, 'default-product.jpg', 1, 1),
(45, 'SPW-045', 4, 3, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-046', 4, 3, 'Wafello', 13, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-047', 5, 3, 'Alpenliebe', 0, 196, 250, 'default-product.jpg', 1, 1),
(48, 'SPW-048', 5, 3, 'Kiss', 14, 0, 0, 'default-product.jpg', 1, 1),
(49, 'SPW-049', 5, 3, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-050', 5, 3, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-051', 5, 3, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1),
(52, 'SPW-052', 7, 3, 'Indomie Ayam Bawang', 66, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-053', 7, 3, 'Indomie Goreng', 26, 2675, 3000, 'default-product.jpg', 1, 1),
(54, 'SPW-054', 7, 3, 'Mie Sedap Ayam Bawang', 80, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-055', 7, 3, 'Mie Sedap Goreng', 80, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-056', 7, 3, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, 'SPW-057', 8, 3, 'Ballpoint Standard AE7', 60, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-058', 8, 3, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-059', 8, 3, 'Buku Saku Tipis', 70, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-060', 8, 3, 'Glue Stick', 0, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-061', 8, 3, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-062', 8, 3, 'Kertas Polio', 190, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-063', 8, 3, 'Penggaris 30 Cm', 5, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-064', 8, 3, 'Tip-Ex', 6, 2500, 3000, 'default-product.jpg', 1, 1),
(65, 'SPW-065', 9, 3, 'Mixagrip Per Butir', 37, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-066', 9, 3, 'Hansaplast', 62, 225, 500, 'default-product.jpg', 1, 1),
(67, 'SPW-067', 9, 3, 'Promaag', 17, 667, 1000, 'default-product.jpg', 1, 1),
(68, 'SPW-068', 10, 3, 'Laurier', 12, 430, 500, 'default-product.jpg', 1, 1),
(69, 'SPW-069', 10, 3, 'Hers Protex', 16, 440, 500, 'default-product.jpg', 1, 1),
(70, 'SPW-070', 10, 3, 'Charm', 11, 430, 500, 'default-product.jpg', 1, 1),
(71, 'SPW-071', 10, 3, 'Tissue Tessa', 36, 1771, 2000, 'default-product.jpg', 1, 1),
(72, 'SPW-072', 10, 3, 'Minyak Sayur Promo 1 L', 3, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-073', 10, 3, 'Mama Lemon 1000', 0, 875, 1000, 'default-product.jpg', 1, 1),
(74, 'SPW-074', 10, 3, 'Garam Jempol', 5, 1500, 2000, 'default-product.jpg', 1, 1),
(75, 'SPW-075', 10, 3, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-076', 10, 3, 'Saos Gembol', 3, 2500, 2750, 'default-product.jpg', 1, 1),
(77, 'SPW-077', 10, 3, 'Cuka 1000', 11, 1000, 1000, 'default-product.jpg', 1, 1),
(78, 'SPW-078', 2, 2, 'Pulpy Orange', 120, 3833, 4500, 'default-product.jpg', 1, 1),
(79, 'SPW-079', 2, 2, 'Sprite Pet Seru 390 mL', 100, 3958, 4500, 'default-product.jpg', 1, 1),
(80, 'SPW-080', 2, 2, 'Fanta Pet Seru 390 mL', 120, 3958, 5000, 'default-product.jpg', 1, 1),
(81, 'SPW-081', 2, 2, 'Sprite Pet Imut 250 mL', 168, 2375, 3000, 'default-product.jpg', 1, 1),
(82, 'SPW-082', 2, 2, 'Fanta Pet Imut 250 mL', 72, 2375, 3000, 'default-product.jpg', 1, 1),
(83, 'SPW-083', 2, 2, 'Coca Cola Pet Imut 250 mL', 120, 2375, 3000, 'default-product.jpg', 1, 1),
(84, 'SPW-084', 2, 2, ' Frestea 350mL', 48, 3500, 4500, 'default-product.jpg', 1, 1),
(85, 'SPW-085', 2, 2, 'Coca Cola Pet Seru 390 mL', 80, 3958, 5000, 'default-product.jpg', 1, 1),
(86, 'SPW-086', 2, 2, 'Nutriboost', 100, 5333, 7000, 'default-product.jpg', 1, 1),
(87, 'SPW-087', 4, 3, 'Choki-Choki', 160, 900, 1500, 'default-product.jpg', 1, 1),
(88, 'SPW-088', 4, 3, 'Top Delfi', 75, 804, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-089', 6, 1, 'AICE Markisa 55 mL', 75, 1550, 3000, 'default-product.jpg', 1, 1),
(90, 'SPW-090', 6, 1, 'AICE Miki-Miki 39 gr', 30, 1558, 2000, 'default-product.jpg', 1, 1),
(91, 'SPW-091', 6, 1, 'AICE Nanas Stick 65gr', 50, 1540, 2000, 'default-product.jpg', 1, 1),
(92, 'SPW-092', 6, 1, 'AICE Semangka Stick 65gr', 25, 1540, 2000, 'default-product.jpg', 1, 1),
(93, 'SPW-093', 6, 1, 'AICE Sweet Corn Stick New 52gr FIFA SS', 80, 3500, 5000, 'default-product.jpg', 1, 1),
(94, 'SPW-094', 6, 1, 'AICE Mochi Stick 30gr SP', 40, 2312, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-095', 6, 1, 'AICE Mochi Durian 45mL SP', 20, 3212, 3000, 'default-product.jpg', 1, 1),
(96, 'SPW-096', 6, 1, 'AICE 2 Colour Chocolate Stick 50 mL', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(97, 'SPW-097', 6, 1, 'AICE Milk Melon 50gr', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-098', 6, 1, 'AICE Blieberry Yogurt Stick 49 mL', 48, 2500, 3000, 'default-product.jpg', 1, 1),
(99, 'SPW-099', 6, 1, 'AICE Fruit Twister Stick 60 mL', 40, 2425, 3000, 'default-product.jpg', 1, 1),
(100, 'SPW-100', 6, 1, 'AICE Chocolate Crispy Stick 60gr', 20, 4000, 5000, 'default-product.jpg', 1, 1),
(101, 'SPW-101', 6, 1, 'AICE Strawberry Crispy Stick New', 40, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-102', 6, 1, 'AICE Sundae Chocolate Cup 100 mL', 24, 4041, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-103', 6, 1, 'AICE Freezy Choco 49 mL', 50, 1560, 2000, 'default-product.jpg', 1, 1),
(104, 'SPW-104', 6, 1, 'AICE Bingo Cookies Cone 100 mL', 24, 4062, 4000, 'default-product.jpg', 1, 1),
(105, 'SPW-105', 5, 3, 'Bontea Green Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(106, 'SPW-106', 5, 3, 'Kiss Zak Cherry', 0, 0, 0, 'default-product.jpg', 1, 1),
(107, 'SPW-107', 5, 3, 'Kopiko Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(108, 'SPW-108', 5, 3, 'Mintz Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(109, 'SPW-109', 5, 3, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-110', 5, 3, 'Yupi', 0, 0, 0, 'default-product.jpg', 1, 1),
(111, 'SPW-111', 4, 3, 'Mio Fullo', 0, 0, 0, 'default-product.jpg', 1, 1),
(112, 'SPW-112', 4, 3, 'Garuda Katom', 0, 0, 2000, 'default-product.jpg', 1, 1),
(113, 'SPW-113', 4, 3, 'Gery Salut Hazelnut', 0, 0, 0, 'default-product.jpg', 1, 1),
(114, 'SPW-114', 4, 3, 'Gery Malkist Kelapa Coklat', 0, 0, 1000, 'default-product.jpg', 1, 1),
(115, 'SPW-115', 4, 3, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-116', 4, 3, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-117', 4, 3, 'Deka Kacang', 0, 0, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-118', 4, 3, 'Kacang Polong', 0, 0, 0, 'default-product.jpg', 1, 1),
(119, 'SPW-119', 4, 3, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1),
(120, 'SPW-120', 4, 3, 'Oreo Cream', 0, 0, 2000, 'default-product.jpg', 1, 1),
(121, 'SPW-121', 4, 3, 'Roti Aoka', 0, 0, 2000, 'default-product.jpg', 1, 1),
(122, 'SPW-122', 4, 3, 'Selimut', 0, 0, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-123', 4, 3, 'Tiktak', 0, 0, 0, 'default-product.jpg', 1, 1),
(124, 'SPW-124', 4, 3, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-125', 4, 3, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, 'SPW-126', 4, 3, 'Monde Serena Gold', 0, 0, 0, 'default-product.jpg', 1, 1),
(127, 'SPW-127', 4, 3, 'Nabati Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-128', 2, 3, 'Calpico', 0, 0, 0, 'default-product.jpg', 1, 1),
(129, 'SPW-129', 2, 3, 'Kopikap', 0, 0, 0, 'default-product.jpg', 1, 1),
(130, 'SPW-130', 2, 3, 'Milku 200 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(131, 'SPW-131', 2, 3, 'Teh Gelas', 0, 0, 0, 'default-product.jpg', 1, 1),
(132, 'SPW-132', 10, 3, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-133', 10, 3, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1),
(134, 'SPW-134', 1, 3, 'Sui Cup 600 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(136, '', 1, 3, 'Arvin Botol 600 mL', 0, 1500, 2000, 'default-product.jpg', 2, 1);

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
(14, 'tes');

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
(5, '2022-08-10', 3, 1, 1),
(6, '2022-08-11', 3, 1, 1),
(7, '2022-08-13', 3, 1, 1),
(8, '2022-09-06', 1, 1, 1);

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
(17, 5, 89, 89, 1550, 137950),
(18, 6, 89, 1, 1550, 1550),
(19, 7, 89, 15, 1550, 23250);

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
(18, '2022-08-30', 1, 1);

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
(20, 18, 1, 4, 1260, 2000),
(21, 18, 6, 2, 3000, 4000),
(22, 18, 57, 3, 4374, 6000),
(23, 18, 59, 8, 7200, 12000),
(24, 18, 63, 3, 6000, 7500);

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
(1, '2022-09-06', 1, 1, 1),
(2, '2022-09-07', 1, 1, 14);

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
(1, 2, 14, 'Bala - Bala', 800, 1000, 100, 50, 50, 40000, 50000),
(2, 2, 14, 'Gehu', 800, 1000, 50, 0, 50, 40000, 50000),
(3, 2, 14, 'Cireng Merah', 800, 2000, 20, 5, 15, 12000, 30000),
(5, 1, 1, 'Bala - Bala', 800, 1000, 100, 9, 91, 72800, 91000);

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
(3, 'AICE Cianjur', 'Cianjur', '08000000000');

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
(19, 'Guru Piket', 'gurupiket@gmail.com', 'gurupiket', '$2y$10$r.dcXc.T5O0z4BG.wpBkauR7yGPBUJEZSSVHk.nM.6kHcE8FBaGYO', 5, 5, 'default.jpg', '', '', '', '', '2022-08-26', 1);

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
  MODIFY `id_franchise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_franchise_detail`
--
ALTER TABLE `tbl_franchise_detail`
  MODIFY `id_franchise_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_franchisor`
--
ALTER TABLE `tbl_franchisor`
  MODIFY `id_franchisor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_product_place`
--
ALTER TABLE `tbl_product_place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_selling`
--
ALTER TABLE `tbl_selling`
  MODIFY `id_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_selling_detail`
--
ALTER TABLE `tbl_selling_detail`
  MODIFY `id_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_student_selling`
--
ALTER TABLE `tbl_student_selling`
  MODIFY `id_student_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student_selling_detail`
--
ALTER TABLE `tbl_student_selling_detail`
  MODIFY `id_student_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
