-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2022 at 07:51 PM
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
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `id_category` int(11) NOT NULL,
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

INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES
(1, 'SPW-001', 1, 'Cibodas Cup', 0, 315, 500, 'default-product.jpg', 1, 1),
(2, 'SPW-002', 1, 'La Vida Cup', 184, 281, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-003', 1, 'Hexua Cup', 24, 281, 500, 'default-product3.jpg', 1, 1),
(4, 'SPW-004', 1, 'SUI Botol 600 mL', 0, 958, 2000, 'default-product2.jpg', 1, 1),
(6, 'SPW-006', 1, 'Arvin Botol 600 mL', 0, 958, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 'Ale - Ale', 38, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 'Kiko', 60, 850, 1000, 'default-product.jpg', 1, 1),
(9, 'SPW-009', 2, 'Koko Jelly Drink', 0, 792, 1000, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 'Okky Jelly Drink', 27, 792, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-011', 2, 'Teh Gelas', 29, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-012', 2, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-013', 3, 'Cocorio', 4, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-014', 3, 'Top Ice', 26, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-015', 3, 'Frenta', 5, 0, 0, 'default-product.jpg', 1, 1),
(16, 'SPW-016', 4, 'Beng-beng', 68, 1700, 2000, 'default-product.jpg', 1, 1),
(17, 'SPW-017', 4, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1),
(18, 'SPW-018', 4, 'Chiki Ball', 0, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-019', 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-020', 4, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, 'SPW-021', 4, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-022', 4, 'Chocolatos Roll', 31, 795, 1000, 'default-product.jpg', 1, 1),
(23, 'SPW-023', 4, 'Dilan 5 in 1', 12, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-024', 4, 'Garuda Pilus', 146, 425, 500, 'default-product.jpg', 1, 1),
(25, 'SPW-025', 4, 'Garuda Rosta', 0, 850, 1000, 'default-product.jpg', 1, 1),
(26, 'SPW-026', 4, 'Gedy Malkist', 21, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-027', 4, 'Gery Wafer', 22, 1583, 2000, 'default-product.jpg', 1, 1),
(28, 'SPW-028', 4, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-029', 4, 'Goriorio', 17, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-030', 4, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, 'SPW-031', 4, 'Kalpa', 5, 1667, 2000, 'default-product.jpg', 1, 1),
(32, 'SPW-032', 4, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(33, 'SPW-033', 4, 'Mie Shoer Kremez', 7, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-034', 4, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-035', 4, 'Nabati Aah', 62, 425, 500, 'default-product.jpg', 1, 1),
(36, 'SPW-036', 4, 'Nabati Siip', 26, 425, 500, 'default-product.jpg', 1, 1),
(37, 'SPW-037', 4, 'Nextar', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(38, 'SPW-038', 4, 'Oreo Soft Cake', 18, 1750, 2000, 'default-product.jpg', 1, 1),
(39, 'SPW-039', 4, 'Roma Arden', 0, 1700, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-040', 4, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-041', 4, 'Roma Malkist', 30, 900, 1000, 'default-product.jpg', 1, 1),
(42, 'SPW-042', 4, 'Slai O\'Lai', 1, 850, 1000, 'default-product.jpg', 1, 1),
(43, 'SPW-043', 4, 'Sosis Sonice', 0, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-044', 4, 'Timtam Maxi', 10, 875, 1000, 'default-product.jpg', 1, 1),
(45, 'SPW-045', 4, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-046', 4, 'Wafello', 13, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-047', 5, 'Alpenliebe', 0, 196, 250, 'default-product.jpg', 1, 1),
(48, 'SPW-048', 5, 'Kiss', 14, 0, 0, 'default-product.jpg', 1, 1),
(49, 'SPW-049', 5, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-050', 5, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-051', 5, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1),
(52, 'SPW-052', 7, 'Indomie Ayam Bawang', 66, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-053', 7, 'Indomie Goreng', 26, 2675, 3000, 'default-product.jpg', 1, 1),
(54, 'SPW-054', 7, 'Mie Sedap Ayam Bawang', 80, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-055', 7, 'Mie Sedap Goreng', 80, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-056', 7, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, 'SPW-057', 8, 'Ballpoint Standard AE7', 63, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-058', 8, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-059', 8, 'Buku Saku Tipis', 78, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-060', 8, 'Glue Stick', 12, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-061', 8, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-062', 8, 'Kertas Polio', 190, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-063', 8, 'Penggaris 30 Cm', 8, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-064', 8, 'Tip-Ex', 6, 2500, 3000, 'default-product.jpg', 1, 1),
(65, 'SPW-065', 9, 'Mixagrip Per Butir', 37, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-066', 9, 'Hansaplast', 62, 225, 500, 'default-product.jpg', 1, 1),
(67, 'SPW-067', 9, 'Promaag', 17, 667, 1000, 'default-product.jpg', 1, 1),
(68, 'SPW-068', 10, 'Laurier', 12, 430, 500, 'default-product.jpg', 1, 1),
(69, 'SPW-069', 10, 'Hers Protex', 16, 440, 500, 'default-product.jpg', 1, 1),
(70, 'SPW-070', 10, 'Charm', 11, 430, 500, 'default-product.jpg', 1, 1),
(71, 'SPW-071', 10, 'Tissue Tessa', 36, 1771, 2000, 'default-product.jpg', 1, 1),
(72, 'SPW-072', 10, 'Minyak Sayur Promo 1 L', 3, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-073', 10, 'Mama Lemon 1000', 0, 875, 1000, 'default-product.jpg', 1, 1),
(74, 'SPW-074', 10, 'Garam Jempol', 5, 1500, 2000, 'default-product.jpg', 1, 1),
(75, 'SPW-075', 10, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-076', 10, 'Saos Gembol', 3, 2500, 2750, 'default-product.jpg', 1, 1),
(77, 'SPW-077', 10, 'Cuka 1000', 11, 1000, 1000, 'default-product.jpg', 1, 1),
(78, 'SPW-078', 2, 'Pulpy Orange', 120, 3833, 4500, 'default-product.jpg', 1, 1),
(79, 'SPW-079', 2, 'Sprite Pet Seru 390 mL', 120, 3958, 4500, 'default-product.jpg', 1, 1),
(80, 'SPW-080', 2, 'Fanta Pet Seru 390 mL', 120, 3958, 5000, 'default-product.jpg', 1, 1),
(81, 'SPW-081', 2, 'Sprite Pet Imut 250 mL', 168, 2375, 3000, 'default-product.jpg', 1, 1),
(82, 'SPW-082', 2, 'Fanta Pet Imut 250 mL', 72, 2375, 3000, 'default-product.jpg', 1, 1),
(83, 'SPW-083', 2, 'Coca Cola Pet Imut 250 mL', 120, 2375, 3000, 'default-product.jpg', 1, 1),
(84, 'SPW-084', 2, ' Frestea 350mL', 48, 3500, 4500, 'default-product.jpg', 1, 1),
(85, 'SPW-085', 2, 'Coca Cola Pet Seru 390 mL', 84, 3958, 5000, 'default-product.jpg', 1, 1),
(86, 'SPW-086', 2, 'Nutriboost', 120, 5333, 7000, 'default-product.jpg', 1, 1),
(87, 'SPW-087', 4, 'Choki-Choki', 160, 900, 1500, 'default-product.jpg', 1, 1),
(88, 'SPW-088', 4, 'Top Delfi', 96, 804, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-089', 6, 'AICE Markisa 55 mL', 50, 1550, 2000, 'default-product.jpg', 1, 1),
(90, 'SPW-090', 6, 'AICE Miki-Miki 39 gr', 60, 1558, 2000, 'default-product.jpg', 1, 1),
(91, 'SPW-091', 6, 'AICE Nanas Stick 65gr', 50, 1540, 2000, 'default-product.jpg', 1, 1),
(92, 'SPW-092', 6, 'AICE Semangka Stick 65gr', 50, 1540, 2000, 'default-product.jpg', 1, 1),
(93, 'SPW-093', 6, 'AICE Sweet Corn Stick New 52gr FIFA SS', 40, 2362, 3000, 'default-product.jpg', 1, 1),
(94, 'SPW-094', 6, 'AICE Mochi Stick 30gr SP', 40, 2312, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-095', 6, 'AICE Mochi Durian 45mL SP', 40, 3212, 3000, 'default-product.jpg', 1, 1),
(96, 'SPW-096', 6, 'AICE 2 Colour Chocolate Stick 50 mL', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(97, 'SPW-097', 6, 'AICE Milk Melon 50gr', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-098', 6, 'AICE Blieberry Yogurt Stick 49 mL', 50, 1900, 2500, 'default-product.jpg', 1, 1),
(99, 'SPW-099', 6, 'AICE Fruit Twister Stick 60 mL', 40, 2425, 3000, 'default-product.jpg', 1, 1),
(100, 'SPW-100', 6, 'AICE Chocolate Crispy Stick 60gr', 40, 4000, 5000, 'default-product.jpg', 1, 1),
(101, 'SPW-101', 6, 'AICE Strawberry Crispy Stick New', 40, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-102', 6, 'AICE Sundae Chocolate Cup 100 mL', 24, 4041, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-103', 6, 'AICE Freezy Choco 49 mL', 50, 1560, 2000, 'default-product.jpg', 1, 1),
(104, 'SPW-104', 6, 'AICE Bingo Cookies Cone 100 mL', 24, 4062, 4000, 'default-product.jpg', 1, 1),
(105, 'SPW-105', 5, 'Bontea Green Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(106, 'SPW-106', 5, 'Kiss Zak Cherry', 0, 0, 0, 'default-product.jpg', 1, 1),
(107, 'SPW-107', 5, 'Kopiko Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(108, 'SPW-108', 5, 'Mintz Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(109, 'SPW-109', 5, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-110', 5, 'Yupi', 0, 0, 0, 'default-product.jpg', 1, 1),
(111, 'SPW-111', 4, 'Mio Fullo', 0, 0, 0, 'default-product.jpg', 1, 1),
(112, 'SPW-112', 4, 'Garuda Katom', 0, 0, 2000, 'default-product.jpg', 1, 1),
(113, 'SPW-113', 4, 'Gery Salut Hazelnut', 0, 0, 0, 'default-product.jpg', 1, 1),
(114, 'SPW-114', 4, 'Gery Malkist Kelapa Coklat', 0, 0, 1000, 'default-product.jpg', 1, 1),
(115, 'SPW-115', 4, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-116', 4, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-117', 4, 'Deka Kacang', 0, 0, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-118', 4, 'Kacang Polong', 0, 0, 0, 'default-product.jpg', 1, 1),
(119, 'SPW-119', 4, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1),
(120, 'SPW-120', 4, 'Oreo Cream', 0, 0, 2000, 'default-product.jpg', 1, 1),
(121, 'SPW-121', 4, 'Roti Aoka', 0, 0, 2000, 'default-product.jpg', 1, 1),
(122, 'SPW-122', 4, 'Selimut', 0, 0, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-123', 4, 'Tiktak', 0, 0, 0, 'default-product.jpg', 1, 1),
(124, 'SPW-124', 4, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-125', 4, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, 'SPW-126', 4, 'Monde Serena Gold', 0, 0, 0, 'default-product.jpg', 1, 1),
(127, 'SPW-127', 4, 'Nabati Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-128', 2, 'Calpico', 0, 0, 0, 'default-product.jpg', 1, 1),
(129, 'SPW-129', 2, 'Kopikap', 0, 0, 0, 'default-product.jpg', 1, 1),
(130, 'SPW-130', 2, 'Milku 200 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(131, 'SPW-131', 2, 'Teh Gelas', 0, 0, 0, 'default-product.jpg', 1, 1),
(132, 'SPW-132', 10, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-133', 10, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1),
(134, 'SPW-134', 1, 'Sui Cup 600 mL', 0, 0, 0, 'default-product.jpg', 1, 1);

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
(10, 'Lainnya');

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
-- Table structure for table `tbl_purchase_cart`
--

CREATE TABLE `tbl_purchase_cart` (
  `id_cart` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_purchasing` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase_cart`
--

INSERT INTO `tbl_purchase_cart` (`id_cart`, `id_supplier`, `id_product`, `qty_product`, `price`, `total_price`, `date_purchasing`) VALUES
(1, 3, 98, 50, 2500, 125000, '2022-07-29'),
(2, 3, 100, 60, 230, 13800, '2022-07-29'),
(3, 3, 102, 70, 2300, 161000, '2022-07-29'),
(4, 3, 89, 40, 3000, 120000, '2022-07-29'),
(5, 3, 103, 50, 2500, 125000, '2022-07-29'),
(6, 3, 96, 10, 3500, 35000, '2022-07-29'),
(7, 3, 89, 50, 2400, 120000, '2022-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_detail`
--

CREATE TABLE `tbl_purchase_detail` (
  `id_purchase` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_purchase` int(11) NOT NULL,
  `price` int(11) NOT NULL
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
(1, 'Showcase', '', 1, 0, 1, '', 1, 1),
(2, 'Freezer', '', 1, 0, 1, '', 1, 1),
(3, 'Rak Piring', '', 1, 0, 1, '', 1, 1),
(5, 'Kompor', 'Rinnai', 1, 300000, 1, '', 1, 1);

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
(18, 'Siswa SPW ATU', 'siswaspwatu@gmail.com', 'siswaspwatu', '$2y$10$9bvvL4iExOzCd8TCxD.ubOlIfeGMieXDm7rSjjK9lMBAZ/h9lA1zm', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);

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
(35, 5, 6);

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
(10, 5, 'Data Penjualan', 'penjualan', 'ni ni-cart text-primary', 1),
(11, 6, 'Stok Produk', 'stok', 'ni ni-box-2 text-success', 1),
(12, 7, 'Daftar Harga', 'daftar', 'ni ni-shop text-primary', 1),
(13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1),
(14, 16, 'Profile', 'pengguna/profile', 'ni ni-credit-card text-primary', 1),
(15, 4, 'Data Supplier', 'pembelian/supplier', 'ni ni-single-02 text-primary', 1);

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
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indexes for table `tbl_purchase_cart`
--
ALTER TABLE `tbl_purchase_cart`
  ADD PRIMARY KEY (`id_cart`);

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
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase_cart`
--
ALTER TABLE `tbl_purchase_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  MODIFY `id_tool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_tool_condition`
--
ALTER TABLE `tbl_tool_condition`
  MODIFY `id_tool_condition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user_access_menu`
--
ALTER TABLE `tbl_user_access_menu`
  MODIFY `id_user_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
