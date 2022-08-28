-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2022 at 12:03 PM
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
(1, 'SPW-001', 1, 4, 'Cibodas Cup', 54, 315, 500, 'default-product.jpg', 1, 1),
(2, 'SPW-002', 1, 4, 'La Vida Cup', 200, 281, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-003', 1, 4, 'Hexua Cup', 24, 281, 500, 'default-product3.jpg', 1, 1),
(4, 'SPW-004', 1, 4, 'SUI Botol 600 mL', 10, 1520, 2000, 'default-product2.jpg', 1, 1),
(6, 'SPW-006', 1, 4, 'Arvin Botol 600 mL', 6, 1500, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 4, 'Ale - Ale', 38, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 4, 'Kiko', 60, 850, 1000, 'default-product.jpg', 1, 1),
(9, 'SPW-009', 2, 4, 'Koko Jelly Drink', 0, 795, 1500, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 4, 'Okky Jelly Drink', 27, 792, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-011', 2, 4, 'Teh Gelas', 29, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-012', 2, 4, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-013', 3, 4, 'Cocorio', 4, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-014', 3, 4, 'Top Ice', 26, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-015', 3, 4, 'Frenta', 5, 0, 0, 'default-product.jpg', 1, 1),
(16, 'SPW-016', 4, 4, 'Beng-beng', 68, 1700, 2000, 'default-product.jpg', 1, 1),
(17, 'SPW-017', 4, 4, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1),
(18, 'SPW-018', 4, 4, 'Chiki Ball', 0, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-019', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-020', 4, 4, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, 'SPW-021', 4, 4, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-022', 4, 4, 'Chocolatos Roll', 31, 795, 1000, 'default-product.jpg', 1, 1),
(23, 'SPW-023', 4, 4, 'Dilan 5 in 1', 12, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-024', 4, 4, 'Garuda Pilus', 146, 425, 500, 'default-product.jpg', 1, 1),
(25, 'SPW-025', 4, 4, 'Garuda Rosta', 0, 850, 1000, 'default-product.jpg', 1, 1),
(26, 'SPW-026', 4, 4, 'Gedy Malkist', 21, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-027', 4, 4, 'Gery Wafer', 22, 1583, 2000, 'default-product.jpg', 1, 1),
(28, 'SPW-028', 4, 4, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-029', 4, 4, 'Goriorio', 17, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-030', 4, 4, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, 'SPW-031', 4, 4, 'Kalpa', 5, 1667, 2000, 'default-product.jpg', 1, 1),
(32, 'SPW-032', 4, 4, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(33, 'SPW-033', 4, 4, 'Mie Shoer Kremez', 7, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-034', 4, 4, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-035', 4, 4, 'Nabati Aah', 62, 425, 500, 'default-product.jpg', 1, 1),
(36, 'SPW-036', 4, 4, 'Nabati Siip', 10, 425, 500, 'default-product.jpg', 1, 1),
(37, 'SPW-037', 4, 4, 'Nextar', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(38, 'SPW-038', 4, 4, 'Oreo Soft Cake', 18, 1750, 2000, 'default-product.jpg', 1, 1),
(39, 'SPW-039', 4, 4, 'Roma Arden', 0, 1700, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-040', 4, 4, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-041', 4, 4, 'Roma Malkist', 30, 900, 1000, 'default-product.jpg', 1, 1),
(42, 'SPW-042', 4, 4, 'Slai O\'Lai', 1, 850, 1000, 'default-product.jpg', 1, 1),
(43, 'SPW-043', 4, 4, 'Sosis Sonice', 0, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-044', 4, 4, 'Timtam Maxi', 10, 875, 1000, 'default-product.jpg', 1, 1),
(45, 'SPW-045', 4, 4, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-046', 4, 4, 'Wafello', 13, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-047', 5, 4, 'Alpenliebe', 0, 196, 250, 'default-product.jpg', 1, 1),
(48, 'SPW-048', 5, 4, 'Kiss', 10, 0, 0, 'default-product.jpg', 1, 1),
(49, 'SPW-049', 5, 4, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-050', 5, 4, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-051', 5, 4, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1),
(52, 'SPW-052', 7, 4, 'Indomie Ayam Bawang', 66, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-053', 7, 4, 'Indomie Goreng', 26, 2675, 3000, 'default-product.jpg', 1, 1),
(54, 'SPW-054', 7, 4, 'Mie Sedap Ayam Bawang', 80, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-055', 7, 4, 'Mie Sedap Goreng', 40, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-056', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, 'SPW-057', 8, 4, 'Ballpoint Standard AE7', 75, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-058', 8, 4, 'Buku Big Boss 50 Lbr', 8000, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-059', 8, 4, 'Buku Saku Tipis', 78, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-060', 8, 4, 'Glue Stick', 0, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-061', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-062', 8, 4, 'Kertas Polio', 190, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-063', 8, 4, 'Penggaris 30 Cm', 8, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-064', 8, 4, 'Tip-Ex', 6, 2500, 3000, 'default-product.jpg', 1, 1),
(65, 'SPW-065', 9, 4, 'Mixagrip Per Butir', 37, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-066', 9, 4, 'Hansaplast', 62, 225, 500, 'default-product.jpg', 1, 1),
(67, 'SPW-067', 9, 4, 'Promaag', 17, 667, 1000, 'default-product.jpg', 1, 1),
(68, 'SPW-068', 10, 4, 'Laurier', 12, 430, 500, 'default-product.jpg', 1, 1),
(69, 'SPW-069', 10, 4, 'Hers Protex', 16, 440, 500, 'default-product.jpg', 1, 1),
(70, 'SPW-070', 10, 4, 'Charm', 11, 430, 500, 'default-product.jpg', 1, 1),
(71, 'SPW-071', 10, 4, 'Tissue Tessa', 36, 1771, 2000, 'default-product.jpg', 1, 1),
(72, 'SPW-072', 10, 4, 'Minyak Sayur Promo 1 L', 3, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-073', 10, 4, 'Mama Lemon 1000', 0, 875, 1000, 'default-product.jpg', 1, 1),
(74, 'SPW-074', 10, 4, 'Garam Jempol', 5, 1500, 2000, 'default-product.jpg', 1, 1),
(75, 'SPW-075', 10, 4, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-076', 10, 4, 'Saos Gembol', 3, 2500, 3000, 'default-product.jpg', 1, 1),
(77, 'SPW-077', 10, 4, 'Cuka 1000', 11, 1000, 1000, 'default-product.jpg', 1, 1),
(78, 'SPW-078', 2, 2, 'Pulpy Orange', 120, 3833, 4500, 'default-product.jpg', 1, 1),
(79, 'SPW-079', 2, 2, 'Sprite Pet Seru 390 mL', 80, 3958, 4500, 'default-product.jpg', 1, 1),
(80, 'SPW-080', 2, 2, 'Fanta Pet Seru 390 mL', 110, 3958, 5000, 'default-product.jpg', 1, 1),
(81, 'SPW-081', 2, 2, 'Sprite Pet Imut 250 mL', 168, 2375, 3000, 'default-product.jpg', 1, 1),
(82, 'SPW-082', 2, 2, 'Fanta Pet Imut 250 mL', 72, 2375, 3000, 'default-product.jpg', 1, 1),
(83, 'SPW-083', 2, 2, 'Coca Cola Pet Imut 250 mL', 70, 2375, 3000, 'default-product.jpg', 1, 1),
(84, 'SPW-084', 2, 2, ' Frestea 350mL', 48, 3500, 4500, 'default-product.jpg', 1, 1),
(85, 'SPW-085', 2, 2, 'Coca Cola Pet Seru 390 mL', 84, 3958, 5000, 'default-product.jpg', 1, 1),
(86, 'SPW-086', 2, 2, 'Nutriboost', 120, 5333, 7000, 'default-product.jpg', 1, 1),
(87, 'SPW-087', 4, 4, 'Choki-Choki', 160, 900, 1500, 'default-product.jpg', 1, 1),
(88, 'SPW-088', 4, 4, 'Top Delfi', 75, 804, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-089', 6, 1, 'AICE Markisa 55 mL', 70, 1550, 3000, 'default-product.jpg', 1, 1),
(90, 'SPW-090', 6, 1, 'AICE Miki-Miki 39 gr', 60, 1558, 2000, 'default-product.jpg', 1, 1),
(91, 'SPW-091', 6, 1, 'AICE Nanas Stick 65gr', 50, 1540, 2000, 'default-product.jpg', 1, 1),
(92, 'SPW-092', 6, 1, 'AICE Semangka Stick 65gr', 0, 1540, 2000, 'default-product.jpg', 1, 1),
(93, 'SPW-093', 6, 1, 'AICE Sweet Corn Stick New 52gr FIFA SS', 60, 3500, 5000, 'default-product.jpg', 1, 1),
(94, 'SPW-094', 6, 1, 'AICE Mochi Stick 30gr SP', 1, 2312, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-095', 6, 1, 'AICE Mochi Durian 45mL SP', 10, 2212, 3000, 'default-product.jpg', 1, 1),
(96, 'SPW-096', 6, 1, 'AICE 2 Colour Chocolate Stick 50 mL', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(97, 'SPW-097', 6, 1, 'AICE Milk Melon 50gr', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-098', 6, 1, 'AICE Blieberry Yogurt Stick 49 mL', 48, 2500, 3000, 'default-product.jpg', 1, 1),
(99, 'SPW-099', 6, 1, 'AICE Fruit Twister Stick 60 mL', 40, 2425, 3000, 'default-product.jpg', 1, 1),
(100, 'SPW-100', 6, 1, 'AICE Chocolate Crispy Stick 60gr', 20, 4000, 5000, 'default-product.jpg', 1, 1),
(101, 'SPW-101', 6, 1, 'AICE Strawberry Crispy Stick New', 40, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-102', 6, 1, 'AICE Sundae Chocolate Cup 100 mL', 24, 4041, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-103', 6, 1, 'AICE Freezy Choco 49 mL', 30, 1560, 2000, 'default-product.jpg', 1, 1),
(104, 'SPW-104', 6, 1, 'AICE Bingo Cookies Cone 100 mL', 24, 4062, 4000, 'default-product.jpg', 1, 1),
(105, 'SPW-105', 5, 4, 'Bontea Green Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(106, 'SPW-106', 5, 4, 'Kiss Zak Cherry', 0, 0, 0, 'default-product.jpg', 1, 1),
(107, 'SPW-107', 5, 4, 'Kopiko Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(108, 'SPW-108', 5, 4, 'Mintz Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(109, 'SPW-109', 5, 4, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-110', 5, 4, 'Yupi', 0, 0, 0, 'default-product.jpg', 1, 1),
(111, 'SPW-111', 4, 4, 'Mio Fullo', 0, 0, 0, 'default-product.jpg', 1, 1),
(112, 'SPW-112', 4, 4, 'Garuda Katom', 0, 0, 2000, 'default-product.jpg', 1, 1),
(113, 'SPW-113', 4, 4, 'Gery Salut Hazelnut', 0, 0, 0, 'default-product.jpg', 1, 1),
(114, 'SPW-114', 4, 4, 'Gery Malkist Kelapa Coklat', 0, 0, 1000, 'default-product.jpg', 1, 1),
(115, 'SPW-115', 4, 4, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-116', 4, 4, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-117', 4, 4, 'Deka Kacang', 0, 0, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-118', 4, 4, 'Kacang Polong', 0, 0, 0, 'default-product.jpg', 1, 1),
(119, 'SPW-119', 4, 4, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1),
(120, 'SPW-120', 4, 4, 'Oreo Cream', 0, 0, 2000, 'default-product.jpg', 1, 1),
(121, 'SPW-121', 4, 4, 'Roti Aoka', 0, 0, 2000, 'default-product.jpg', 1, 1),
(122, 'SPW-122', 4, 4, 'Selimut', 0, 0, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-123', 4, 4, 'Tiktak', 0, 0, 0, 'default-product.jpg', 1, 1),
(124, 'SPW-124', 4, 4, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-125', 4, 4, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, 'SPW-126', 4, 4, 'Monde Serena Gold', 0, 0, 0, 'default-product.jpg', 1, 1),
(127, 'SPW-127', 4, 4, 'Nabati Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-128', 2, 4, 'Calpico', 0, 0, 0, 'default-product.jpg', 1, 1),
(129, 'SPW-129', 2, 4, 'Kopikap', 0, 0, 0, 'default-product.jpg', 1, 1),
(130, 'SPW-130', 2, 4, 'Milku 200 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(131, 'SPW-131', 2, 4, 'Teh Gelas', 0, 0, 0, 'default-product.jpg', 1, 1),
(132, 'SPW-132', 10, 4, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-133', 10, 4, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1),
(134, 'SPW-134', 1, 4, 'Sui Cup 600 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(135, '', 1, 4, 'Arvin Botol 600ml', 0, 958, 2000, 'default-product.jpg', 2, 1),
(136, '', 1, 4, 'Sui Botol 600ml', 89, 958, 2000, 'IMG_20220824_074621.jpg', 2, 1),
(137, '', 6, 1, 'AICE Mochi Vanilla', 10, 1500, 2000, 'default-product.jpg', 2, 1),
(138, '', 2, 2, 'Fanta Pet Seru 390 ml', 32, 3958, 5000, 'default-product.jpg', 2, 1),
(139, '', 6, 1, 'AICE Colour Chocolate Stick 50ml', 0, 1912, 2500, 'default-product.jpg', 2, 1),
(140, '', 6, 1, 'AICE Bingo Cookies Cone 100ml', 0, 4062, 5000, 'default-product.jpg', 2, 1),
(141, '', 6, 1, 'AICE Blueberry Yoghurt Stick 49ml', 0, 1900, 2500, 'default-product.jpg', 2, 1),
(142, '', 6, 1, 'AICE Chocolate Crispy Stick 60g', 0, 4000, 5000, 'default-product.jpg', 2, 1),
(143, '', 6, 1, 'AICE Freezy Choco 49ml', 0, 1560, 2000, 'default-product.jpg', 2, 1),
(144, '', 6, 1, 'AICE Fruit Twister Stick 60ml', 0, 2425, 3000, 'default-product.jpg', 2, 1),
(145, '', 6, 1, 'AICE Milk 55ml', 35, 1940, 2500, 'default-product.jpg', 2, 1),
(146, '', 6, 1, 'AICE Miki-Miki 39g', 10, 1558, 2000, 'IMG_20220827_130747.jpg', 2, 1),
(147, '', 6, 1, 'AICE Milk Melon Stick 50g', 0, 1912, 2500, 'default-product.jpg', 2, 1),
(148, '', 6, 1, 'AICE Mochi Chocolate / Vanilla 45ml-SP', 0, 2312, 3000, 'default-product.jpg', 2, 1),
(149, '', 6, 1, 'AICE Manggo Slush 30g', 0, 3017, 4000, 'IMG_20220827_131146.jpg', 2, 1),
(150, '', 6, 1, 'AICE Nanas Stick 65g', 0, 1540, 2000, 'default-product.jpg', 2, 1),
(151, '', 6, 1, 'AICE Semangka Stick 65g', 0, 1540, 2000, 'default-product.jpg', 2, 1),
(152, '', 6, 1, 'AICE Strawberry Crispy Stick New', 0, 2750, 3500, 'default-product.jpg', 2, 1),
(153, '', 6, 1, 'AICE Sundae Strawberry Cup 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1),
(154, '', 6, 1, 'AICE Sweet Corn Stick New 52g Fifa SS', 21, 2362, 3000, 'default-product.jpg', 2, 1),
(155, '', 6, 1, 'AICE Mochi Chocolate 100ml', 0, 2313, 3000, 'default-product.jpg', 2, 1),
(156, '', 6, 1, 'AICE Milk Melon Cone 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1),
(157, '', 6, 1, 'AICE Taro Crispy', 0, 2412, 3000, 'IMG_20220827_130709.jpg', 2, 1),
(158, '', 6, 1, 'AICE Choco Boost', 0, 4000, 5000, 'default-product.jpg', 2, 1),
(159, '', 6, 1, 'AICE Max Cone', 0, 4062, 5000, 'IMG_20220827_130927.jpg', 2, 1),
(160, '', 6, 1, 'AICE Berry Max Cone', 25, 4062, 5000, 'default-product.jpg', 2, 1),
(161, '', 6, 1, 'AICE Choco Cookies', 0, 3600, 4500, 'default-product.jpg', 2, 1),
(162, '', 6, 1, 'AICE Coffee Crispy', 0, 2750, 3500, 'default-product.jpg', 2, 1),
(163, '', 2, 2, 'Fanta Pet Imut 250ml', 47, 2375, 3000, 'default-product.jpg', 2, 1),
(164, '', 2, 2, 'Coca-Cola Pet Seru 390ml', 22, 3958, 5000, 'default-product.jpg', 2, 1),
(165, '', 2, 2, 'Coca-Cola Pet Imut 250ml', 40, 2375, 3000, 'default-product.jpg', 2, 1),
(166, '', 2, 2, 'Frestea 350ml', 5, 3500, 4500, 'default-product.jpg', 2, 1),
(167, '', 2, 2, 'Nutriboost', 68, 5333, 7000, 'default-product.jpg', 2, 1),
(168, '', 2, 2, 'Pulpy Orange', 22, 3833, 4500, 'default-product.jpg', 2, 1),
(169, '', 2, 2, 'Sprite Pet Imut 250ml', 42, 2375, 3000, 'default-product.jpg', 2, 1),
(170, '', 2, 2, 'Sprite Pet Seru 390ml', 0, 3958, 4500, 'default-product.jpg', 2, 1),
(171, '', 1, 4, 'Cibodas Cup', 0, 315, 500, 'default-product.jpg', 2, 1),
(172, '', 1, 4, 'La Vida Cup / SUI Cup', 170, 281, 500, 'default-product.jpg', 2, 1),
(173, '', 2, 4, 'Ale-Ale', 0, 792, 1000, 'default-product.jpg', 2, 1),
(174, '', 3, 4, 'Kiko', 0, 850, 1000, 'default-product.jpg', 2, 1),
(176, '', 2, 4, 'Okky Jelly Drink', 53, 792, 1000, 'default-product.jpg', 2, 1),
(177, '', 2, 4, 'Teh Gelas', 39, 813, 1000, 'default-product.jpg', 2, 1),
(178, '', 2, 4, 'Calpico 85ml / Calpis', 49, 2050, 3000, 'default-product.jpg', 2, 1),
(179, '', 2, 4, 'Milku 200ml', 0, 2583, 3000, 'default-product.jpg', 2, 1),
(180, '', 2, 4, 'Ultra 200ml', 0, 4104, 5000, 'default-product.jpg', 2, 1),
(181, '', 5, 4, 'Alpenliebe', 0, 200, 250, 'default-product.jpg', 2, 1),
(182, '', 5, 4, 'Bontea Green', 0, 104, 250, 'default-product.jpg', 2, 1),
(183, '', 5, 4, 'Kiss', 0, 196, 250, 'default-product.jpg', 2, 1),
(184, '', 5, 4, 'Kopiko', 130, 120, 250, 'default-product.jpg', 2, 1),
(185, '', 5, 4, 'Mint', 9, 196, 250, 'default-product.jpg', 2, 1),
(186, '', 5, 4, 'Relaxa', 0, 100, 250, 'default-product.jpg', 2, 1),
(187, '', 5, 0, 'Yupi', 0, 138, 250, 'default-product.jpg', 2, 1),
(188, '', 4, 4, 'Aoka / Roti Coy', 0, 1800, 2000, 'default-product.jpg', 2, 1),
(189, '', 4, 4, 'Bengbeng', 0, 1700, 2000, 'default-product.jpg', 2, 1),
(190, '', 4, 4, 'Better', 28, 890, 1000, 'default-product.jpg', 2, 1),
(191, '', 4, 4, 'Chiki Ball', 0, 900, 1000, 'default-product.jpg', 2, 1),
(192, '', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(193, '', 4, 4, 'Chitato Beef / Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(195, '', 4, 4, 'Chocolatos Roll 1000', 0, 795, 1000, 'default-product.jpg', 2, 1),
(196, '', 4, 4, 'Chocolatos Roll 500', 0, 450, 500, 'default-product.jpg', 2, 1),
(197, '', 4, 4, 'Chocolatos Wafer Cream', 7, 900, 1500, 'default-product.jpg', 2, 1),
(198, '', 4, 4, 'Choki Choki', 0, 870, 1000, 'default-product.jpg', 2, 1),
(199, '', 4, 4, 'Dilan 5 in 1', 24, 1567, 2000, 'default-product.jpg', 2, 1),
(200, '', 4, 4, 'Garuda Kacang Kulit Besar', 0, 1850, 2000, 'default-product.jpg', 2, 1),
(201, '', 4, 4, 'Garuda Kacang Kulit Kecil', 5, 850, 1000, 'default-product.jpg', 2, 1),
(202, '', 4, 4, 'Garuda Pilus', 72, 425, 500, 'default-product.jpg', 2, 1),
(203, '', 4, 4, 'Garuda Kacang Atom', 0, 1800, 2000, 'default-product.jpg', 2, 1),
(204, '', 4, 4, 'Gery Malkist', 0, 440, 500, 'default-product.jpg', 2, 1),
(205, '', 4, 4, 'Gery Salut', 11, 446, 500, 'default-product.jpg', 2, 1),
(206, '', 4, 4, 'Gery Odonut', 46, 438, 500, 'default-product.jpg', 2, 1),
(207, '', 4, 4, 'Gery Wafer', 0, 1583, 2000, 'default-product.jpg', 2, 1),
(208, '', 4, 4, 'Good Time', 41, 875, 1000, 'default-product.jpg', 2, 1),
(209, '', 4, 4, 'Goriorio', 8, 450, 500, 'default-product.jpg', 2, 1),
(210, '', 4, 4, 'Jetz Stick', 0, 900, 1000, 'default-product.jpg', 2, 1),
(211, '', 4, 4, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 2, 1),
(212, '', 4, 4, 'Kacang Polong', 0, 870, 1000, 'default-product.jpg', 2, 1),
(213, '', 4, 4, 'Kalpa', 4, 1667, 2000, 'default-product.jpg', 2, 1),
(214, '', 4, 4, 'Keju Cake', 10, 1725, 2000, 'default-product.jpg', 2, 1),
(215, '', 4, 4, 'Mie Shor Kremez', 0, 450, 500, 'default-product.jpg', 2, 1),
(216, '', 4, 4, 'Mio Fullo', 0, 446, 500, 'default-product.jpg', 2, 1),
(217, '', 4, 4, 'Monde Serena', 5, 2000, 2500, 'default-product.jpg', 2, 1),
(218, '', 4, 4, 'Mayasi Ala Kacang Jepang', 0, 850, 1000, 'default-product.jpg', 2, 1),
(219, '', 4, 4, 'Nabati Aah', 65, 425, 500, 'default-product.jpg', 2, 1),
(220, '', 4, 4, 'Nabati Richoco', 48, 500, 1000, 'default-product.jpg', 2, 1),
(221, '', 4, 4, 'Nabati Siip', 63, 425, 500, 'default-product.jpg', 2, 1),
(222, '', 4, 4, 'Nextar', 8, 1750, 2000, 'default-product.jpg', 2, 1),
(223, '', 4, 4, 'Oreo Cream', 0, 1725, 2000, 'default-product.jpg', 2, 1),
(224, '', 4, 4, 'Oreo Soft Cake', 0, 1750, 2000, 'default-product.jpg', 2, 1),
(225, '', 4, 4, 'Regal', 27, 930, 1000, 'default-product.jpg', 2, 1),
(226, '', 4, 4, 'Roma Gandum Sandwich', 0, 1792, 2000, 'default-product.jpg', 2, 1),
(227, '', 4, 4, 'Roma Malkist / Abon', 0, 900, 1000, 'default-product.jpg', 2, 1),
(228, '', 4, 4, 'Selimut', 0, 425, 500, 'default-product.jpg', 2, 1),
(229, '', 4, 4, 'Slai O\'Lai', 0, 850, 1000, 'default-product.jpg', 2, 1),
(230, '', 4, 4, 'Sosis Sonice', 0, 813, 1000, 'default-product.jpg', 2, 1),
(231, '', 4, 4, 'Tango 1000', 0, 900, 1000, 'default-product.jpg', 2, 1),
(232, '', 4, 4, 'Tiktak / Tictac', 2, 870, 1000, 'default-product.jpg', 2, 1),
(233, '', 10, 4, 'Royco Ayam', 30, 400, 500, 'default-product.jpg', 2, 1),
(234, '', 4, 4, 'Timtam Maxi', 1, 875, 1000, 'default-product.jpg', 2, 1),
(235, '', 4, 4, 'Neapolitan', 0, 812, 1000, 'default-product.jpg', 2, 1),
(236, '', 4, 4, 'Delfi Top Chocolate', 2, 804, 1000, 'default-product.jpg', 2, 1),
(237, '', 4, 4, 'Wafello', 0, 900, 1000, 'default-product.jpg', 2, 1),
(238, '', 7, 4, 'Indomie Ayam Bawang', 31, 2525, 3000, 'default-product.jpg', 2, 1),
(239, '', 7, 4, 'Indomie Goreng', 0, 2675, 3000, 'default-product.jpg', 2, 1),
(240, '', 7, 4, 'Mie Sedap Ayam Bawang', 30, 2363, 3000, 'default-product.jpg', 2, 1),
(241, '', 7, 0, 'Mie Sedap Goreng', 0, 2525, 3000, 'default-product.jpg', 2, 1),
(242, '', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 2, 1),
(243, '', 10, 4, 'Tissue Paseo 1000', 0, 800, 1000, 'default-product.jpg', 2, 1),
(244, '', 10, 4, 'Tissue Paseo 2500', 0, 2200, 2500, 'default-product.jpg', 2, 1),
(245, '', 10, 4, 'Polytex Spon Busa', 3, 2400, 3000, 'default-product.jpg', 2, 1),
(246, '', 4, 4, 'Iyes Kacang Oven Rasa Pedas', 0, 430, 500, 'default-product.jpg', 2, 1),
(247, '', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 2, 1),
(248, '', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 2, 1),
(249, '', 8, 4, 'Tipe-Ex', 0, 2500, 3000, 'default-product.jpg', 2, 1),
(250, '', 3, 4, 'Luwak White Coffe', 0, 560, 1500, 'default-product.jpg', 2, 1),
(251, '', 10, 4, 'Softex Daun Sirih', 1, 225, 500, 'default-product.jpg', 2, 1),
(252, '', 9, 4, 'Promaag / Butir', 0, 667, 1000, 'default-product.jpg', 2, 1),
(253, '', 10, 4, 'Charm', 43, 430, 1000, 'default-product.jpg', 2, 1),
(254, '', 10, 4, 'Cuka 1500', 6, 1000, 1500, 'default-product.jpg', 2, 1),
(255, '', 10, 4, 'Garam Jempol', 2, 1500, 2000, 'default-product.jpg', 2, 1),
(256, '', 10, 4, 'Hers Protex', 0, 440, 500, 'default-product.jpg', 2, 1),
(257, '', 10, 4, 'Laurier', 0, 430, 1000, 'default-product.jpg', 2, 1),
(258, '', 10, 4, 'Mama Lemon 55ml', 3, 812, 1000, 'default-product.jpg', 2, 1),
(259, '', 10, 4, 'Mama Lemon 450ml', 5, 8200, 10000, 'default-product.jpg', 2, 1),
(260, '', 10, 4, 'Mama Lemon 115 ml', 8, 1500, 2000, 'default-product.jpg', 2, 1),
(261, '', 10, 4, 'Minyak Sayur Sedaap 1L', 0, 16700, 18000, 'default-product.jpg', 2, 1),
(262, '', 10, 4, 'Saos Gembol', 6, 2500, 3000, 'default-product.jpg', 2, 1),
(263, '', 10, 4, 'Terigu Segitiga Curah 1kg', 2, 10800, 12000, 'default-product.jpg', 2, 1),
(264, '', 10, 4, 'Tissue Tessa', 0, 1771, 2000, 'default-product.jpg', 2, 1),
(265, '', 4, 4, 'Biskuat Bolu', 0, 1690, 2000, 'default-product.jpg', 2, 1),
(266, '', 3, 4, 'Neo Coffe Mochacino', 0, 985, 1500, 'default-product.jpg', 2, 1),
(267, '', 12, 4, 'Kapal Api Special Mix', 7, 1180, 2000, 'default-product.jpg', 2, 1),
(268, '', 12, 4, 'Good Day Mochacino', 10, 1130, 2000, 'default-product.jpg', 2, 1),
(269, '', 4, 4, 'Tango Walut', 8, 1140, 2000, 'default-product.jpg', 2, 1),
(270, '', 4, 4, 'Yorilos', 17, 1140, 2000, 'default-product.jpg', 2, 1),
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
(281, '', 4, 4, 'Roma Sari Gandum', 18, 1791, 2000, 'default-product.jpg', 2, 1),
(282, '', 4, 4, 'Gery Salut Chocolate Coconut', 9, 1583, 2000, 'default-product.jpg', 2, 1),
(283, '', 4, 4, 'Dua Kelinci Kacang Garing', 0, 850, 1000, 'default-product.jpg', 2, 1),
(284, '', 4, 4, 'Tango Wafer 1000 Vanilla Delight ', 8, 840, 1000, 'default-product.jpg', 2, 1),
(285, '', 7, 4, 'Mie Sedap Goreng', 1, 2525, 3000, 'default-product.jpg', 2, 1),
(286, '', 10, 4, 'Tisu Paseo 1000', 24, 800, 1000, 'default-product.jpg', 2, 1),
(287, '', 10, 4, 'Tisu Paseo 3000', 5, 2200, 3000, 'default-product.jpg', 2, 1),
(288, '', 4, 4, 'Iyes kacang oven rasa pedas', 22, 430, 1000, 'default-product.jpg', 2, 1),
(289, '', 12, 4, 'Luwak White Coffee ', 8, 560, 1500, 'default-product.jpg', 2, 1),
(290, '', 4, 4, 'Taro Seaweed 1000', 11, 900, 1000, 'default-product.jpg', 2, 1);

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
(4, 'Sosro', 'Cianjur', '085156334607');

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
(36, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu`
--

CREATE TABLE `tbl_user_menu` (
  `id_user_menu` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_menu`
--

INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`) VALUES
(1, 'admin'),
(2, 'produk'),
(3, 'peralatan'),
(4, 'pembelian'),
(5, 'penjualan'),
(6, 'stok'),
(7, 'daftar'),
(16, 'pengguna');

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
(4, 1, 'Data Lab SPW', 'admin/lab', 'ni ni-atom text-info', 1),
(5, 2, 'Data Kategori', 'produk/category', 'ni ni-bullet-list-67 text-info', 1),
(6, 2, 'Data Produk', 'produk', 'ni ni-app text-warning', 1),
(7, 3, 'Data Kategori', 'peralatan/catagory', 'ni ni-bullet-list-67 text-info', 0),
(8, 3, 'Data Peralatan', 'peralatan', 'ni ni-settings text-success', 1),
(9, 4, 'Data Pembelian', 'pembelian', 'ni ni-cart text-warning', 1),
(10, 5, 'Data Penjualan SPW', 'penjualan', 'ni ni-cart text-primary', 1),
(11, 6, 'Stok Produk', 'stok', 'ni ni-box-2 text-success', 1),
(12, 7, 'Daftar Harga', 'daftar', 'ni ni-shop text-primary', 1),
(13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1),
(14, 16, 'Profile', 'pengguna/profile', 'ni ni-credit-card text-primary', 1),
(15, 4, 'Data Supplier', 'pembelian/supplier', 'ni ni-single-02 text-primary', 1),
(16, 5, 'Data Penjualan Titipan', 'penjualan/index_franchise', 'ni ni-cart text-success', 1);

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
  MODIFY `id_franchise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_franchise_detail`
--
ALTER TABLE `tbl_franchise_detail`
  MODIFY `id_franchise_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_franchisor`
--
ALTER TABLE `tbl_franchisor`
  MODIFY `id_franchisor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

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
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_selling`
--
ALTER TABLE `tbl_selling`
  MODIFY `id_selling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_selling_detail`
--
ALTER TABLE `tbl_selling_detail`
  MODIFY `id_selling_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id_user_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user_menu`
--
ALTER TABLE `tbl_user_menu`
  MODIFY `id_user_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_submenu`
--
ALTER TABLE `tbl_user_submenu`
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
