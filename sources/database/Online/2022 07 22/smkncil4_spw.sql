-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2022 at 06:29 PM
-- Server version: 5.7.38
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
(5, 'SPW-005', 1, 'La Vida Cup', 100, 300, 500, 'default-product.jpg', 2, 1),
(6, 'SPW-006', 1, 'Arvin Botol 600 mL', 0, 958, 2000, 'default-product.jpg', 1, 1),
(7, 'SPW-007', 2, 'Ale - Ale', 38, 792, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-008', 2, 'Kiko', 60, 850, 1000, 'default-product.jpg', 1, 1),
(9, 'SPW-009', 2, 'Koko Jelly Drink', 0, 792, 1000, 'default-product.jpg', 1, 1),
(10, 'SPW-010', 2, 'Okky Jelly Drink', 27, 792, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-001', 2, 'Teh Gelas', 29, 813, 1000, 'default-product.jpg', 1, 1),
(12, 'SPW-001', 2, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(13, 'SPW-001', 3, 'Cocorio', 4, 0, 0, 'default-product.jpg', 1, 1),
(14, 'SPW-001', 3, 'Top Ice', 26, 0, 0, 'default-product.jpg', 1, 1),
(15, 'SPW-001', 3, 'Frenta', 5, 0, 0, 'default-product.jpg', 1, 1),
(16, 'SPW-001', 4, 'Beng-beng', 68, 1700, 2000, 'default-product.jpg', 1, 1),
(17, 'SPW-001', 4, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1),
(18, 'SPW-001', 4, 'Chiki Ball', 0, 900, 1000, 'default-product.jpg', 1, 1),
(19, 'SPW-001', 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(20, 'SPW-001', 4, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(21, 'SPW-001', 4, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1),
(22, 'SPW-001', 4, 'Chocolatos Roll', 31, 795, 1000, 'default-product.jpg', 1, 1),
(23, 'SPW-001', 4, 'Dilan 5 in 1', 12, 1567, 2000, 'default-product.jpg', 1, 1),
(24, 'SPW-001', 4, 'Garuda Pilus', 146, 425, 500, 'default-product.jpg', 1, 1),
(25, 'SPW-001', 4, 'Garuda Rosta', 0, 850, 1000, 'default-product.jpg', 1, 1),
(26, 'SPW-001', 4, 'Gedy Malkist', 21, 440, 500, 'default-product.jpg', 1, 1),
(27, 'SPW-001', 4, 'Gery Wafer', 22, 1583, 2000, 'default-product.jpg', 1, 1),
(28, 'SPW-001', 4, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1),
(29, 'SPW-001', 4, 'Goriorio', 17, 450, 500, 'default-product.jpg', 1, 1),
(30, 'SPW-001', 4, 'Kacang Koro', 0, 850, 1000, 'default-product.jpg', 1, 1),
(31, 'SPW-001', 4, 'Kalpa', 5, 1667, 2000, 'default-product.jpg', 1, 1),
(32, 'SPW-001', 4, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(33, 'SPW-001', 4, 'Mie Shoer Kremez', 7, 450, 500, 'default-product.jpg', 1, 1),
(34, 'SPW-001', 4, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1),
(35, 'SPW-001', 4, 'Nabati Aah', 62, 425, 500, 'default-product.jpg', 1, 1),
(36, 'SPW-001', 4, 'Nabati Siip', 26, 425, 500, 'default-product.jpg', 1, 1),
(37, 'SPW-001', 4, 'Nextar', 0, 1750, 2000, 'default-product.jpg', 1, 1),
(38, 'SPW-001', 4, 'Oreo Soft Cake', 18, 1750, 2000, 'default-product.jpg', 1, 1),
(39, 'SPW-001', 4, 'Roma Arden', 0, 1700, 2000, 'default-product.jpg', 1, 1),
(40, 'SPW-001', 4, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1),
(41, 'SPW-001', 4, 'Roma Malkist', 30, 900, 1000, 'default-product.jpg', 1, 1),
(42, 'SPW-001', 4, 'Slai O\'Lai', 1, 850, 1000, 'default-product.jpg', 1, 1),
(43, 'SPW-001', 4, 'Sosis Sonice', 0, 813, 1000, 'default-product.jpg', 1, 1),
(44, 'SPW-001', 4, 'Timtam Maxi', 10, 875, 1000, 'default-product.jpg', 1, 1),
(45, 'SPW-001', 4, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1),
(46, 'SPW-001', 4, 'Wafello', 13, 900, 1000, 'default-product.jpg', 1, 1),
(47, 'SPW-001', 5, 'Alpenliebe', 0, 196, 250, 'default-product.jpg', 1, 1),
(48, 'SPW-001', 5, 'Kiss', 14, 0, 0, 'default-product.jpg', 1, 1),
(49, 'SPW-001', 5, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1),
(50, 'SPW-001', 5, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1),
(51, 'SPW-001', 5, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1),
(52, 'SPW-001', 7, 'Indomie Ayam Bawang', 66, 2525, 3000, 'default-product.jpg', 1, 1),
(53, 'SPW-001', 7, 'Indomie Goreng', 26, 2675, 3000, 'default-product.jpg', 1, 1),
(54, 'SPW-001', 7, 'Mie Sedap Ayam Bawang', 80, 2363, 3000, 'default-product.jpg', 1, 1),
(55, 'SPW-001', 7, 'Mie Sedap Goreng', 80, 2525, 3000, 'default-product.jpg', 1, 1),
(56, 'SPW-001', 7, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1),
(57, 'SPW-001', 8, 'Ballpoint Standard AE7', 63, 1458, 2000, 'default-product.jpg', 1, 1),
(58, 'SPW-001', 8, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 1, 1),
(59, 'SPW-001', 8, 'Buku Saku Tipis', 78, 900, 1500, 'default-product.jpg', 1, 1),
(60, 'SPW-001', 8, 'Glue Stick', 12, 2000, 2500, 'default-product.jpg', 1, 1),
(61, 'SPW-001', 8, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1),
(62, 'SPW-001', 8, 'Kertas Polio', 190, 250, 500, 'default-product.jpg', 1, 1),
(63, 'SPW-001', 8, 'Penggaris 30 Cm', 8, 2000, 2500, 'default-product.jpg', 1, 1),
(64, 'SPW-001', 8, 'Tip-Ex', 6, 2500, 3000, 'default-product.jpg', 1, 1),
(65, 'SPW-001', 9, 'Mixagrip Per Butir', 37, 220, 500, 'default-product.jpg', 1, 1),
(66, 'SPW-001', 9, 'Hansaplast', 62, 225, 500, 'default-product.jpg', 1, 1),
(67, 'SPW-001', 9, 'Promaag', 17, 667, 1000, 'default-product.jpg', 1, 1),
(68, 'SPW-001', 10, 'Laurier', 12, 430, 500, 'default-product.jpg', 1, 1),
(69, 'SPW-001', 10, 'Hers Protex', 16, 440, 500, 'default-product.jpg', 1, 1),
(70, 'SPW-001', 10, 'Charm', 11, 430, 500, 'default-product.jpg', 1, 1),
(71, 'SPW-001', 10, 'Tissue Tessa', 36, 1771, 2000, 'default-product.jpg', 1, 1),
(72, 'SPW-001', 10, 'Minyak Sayur Promo 1 L', 3, 23750, 24000, 'default-product.jpg', 1, 1),
(73, 'SPW-001', 10, 'Mama Lemon 1000', 0, 875, 1000, 'default-product.jpg', 1, 1),
(74, 'SPW-001', 10, 'Garam Jempol', 5, 1500, 2000, 'default-product.jpg', 1, 1),
(75, 'SPW-001', 10, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1),
(76, 'SPW-001', 10, 'Saos Gembol', 3, 2500, 2750, 'default-product.jpg', 1, 1),
(77, 'SPW-001', 10, 'Cuka 1000', 11, 1000, 1000, 'default-product.jpg', 1, 1),
(78, 'SPW-001', 2, 'Pulpy Orange', 120, 3833, 4500, 'default-product.jpg', 1, 1),
(79, 'SPW-001', 2, 'Sprite Pet Seru 390 mL', 120, 3958, 4500, 'default-product.jpg', 1, 1),
(80, 'SPW-001', 2, 'Fanta Pet Seru 390 mL', 120, 3958, 5000, 'default-product.jpg', 1, 1),
(81, 'SPW-001', 2, 'Sprite Pet Imut 250 mL', 168, 2375, 3000, 'default-product.jpg', 1, 1),
(82, 'SPW-001', 2, 'Fanta Pet Imut 250 mL', 72, 2375, 3000, 'default-product.jpg', 1, 1),
(83, 'SPW-001', 2, 'Coca Cola Pet Imut 250 mL', 120, 2375, 3000, 'default-product.jpg', 1, 1),
(84, 'SPW-001', 2, ' Frestea 350mL', 48, 3500, 4500, 'default-product.jpg', 1, 1),
(85, 'SPW-001', 2, 'Coca Cola Pet Seru 390 mL', 84, 3958, 5000, 'default-product.jpg', 1, 1),
(86, 'SPW-001', 2, 'Nutriboost', 120, 5333, 7000, 'default-product.jpg', 1, 1),
(87, 'SPW-001', 4, 'Choki-Choki', 160, 900, 1500, 'default-product.jpg', 1, 1),
(88, 'SPW-001', 4, 'Top Delfi', 96, 804, 1000, 'default-product.jpg', 1, 1),
(89, 'SPW-001', 6, 'AICE Markisa 55 mL', 50, 1550, 2000, 'default-product.jpg', 1, 1),
(90, 'SPW-001', 6, 'AICE Miki-Miki 39 gr', 60, 1558, 2000, 'default-product.jpg', 1, 1),
(91, 'SPW-001', 6, 'AICE Nanas Stick 65gr', 50, 1540, 2000, 'default-product.jpg', 1, 1),
(92, 'SPW-001', 6, 'AICE Semangka Stick 65gr', 50, 1540, 2000, 'default-product.jpg', 1, 1),
(93, 'SPW-001', 6, 'AICE Sweet Corn Stick New 52gr FIFA SS', 40, 2362, 3000, 'default-product.jpg', 1, 1),
(94, 'SPW-001', 6, 'AICE Mochi Stick 30gr SP', 40, 2312, 3000, 'default-product.jpg', 1, 1),
(95, 'SPW-001', 6, 'AICE Mochi Durian 45mL SP', 40, 3212, 3000, 'default-product.jpg', 1, 1),
(96, 'SPW-001', 6, 'AICE 2 Colour Chocolate Stick 50 mL', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(97, 'SPW-001', 6, 'AICE Milk Melon 50gr', 40, 1912, 2500, 'default-product.jpg', 1, 1),
(98, 'SPW-001', 6, 'AICE Blieberry Yogurt Stick 49 mL', 50, 1900, 2500, 'default-product.jpg', 1, 1),
(99, 'SPW-001', 6, 'AICE Fruit Twister Stick 60 mL', 40, 2425, 3000, 'default-product.jpg', 1, 1),
(100, 'SPW-001', 6, 'AICE Chocolate Crispy Stick 60gr', 40, 4000, 5000, 'default-product.jpg', 1, 1),
(101, 'SPW-001', 6, 'AICE Strawberry Crispy Stick New', 40, 2750, 3500, 'default-product.jpg', 1, 1),
(102, 'SPW-001', 6, 'AICE Sundae Chocolate Cup 100 mL', 24, 4041, 5000, 'default-product.jpg', 1, 1),
(103, 'SPW-001', 6, 'AICE Freezy Choco 49 mL', 50, 1560, 2000, 'default-product.jpg', 1, 1),
(104, 'SPW-001', 6, 'AICE Bingo Cookies Cone 100 mL', 24, 4062, 4000, 'default-product.jpg', 1, 1),
(105, 'SPW-001', 13, 'Bontea Green Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(106, 'SPW-001', 13, 'Kiss Zak Cherry', 0, 0, 0, 'default-product.jpg', 1, 1),
(107, 'SPW-001', 13, 'Kopiko Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(108, 'SPW-001', 13, 'Mintz Zak', 0, 0, 0, 'default-product.jpg', 1, 1),
(109, 'SPW-001', 13, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1),
(110, 'SPW-001', 5, 'Yupi', 0, 0, 0, 'default-product.jpg', 1, 1),
(111, 'SPW-001', 4, 'Mio Fullo', 0, 0, 0, 'default-product.jpg', 1, 1),
(112, 'SPW-001', 4, 'Garuda Katom', 0, 0, 2000, 'default-product.jpg', 1, 1),
(113, 'SPW-001', 4, 'Gery Salut Hazelnut', 0, 0, 0, 'default-product.jpg', 1, 1),
(114, 'SPW-001', 4, 'Gery Malkist Kelapa Coklat', 0, 0, 1000, 'default-product.jpg', 1, 1),
(115, 'SPW-001', 4, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(116, 'SPW-001', 4, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1),
(117, 'SPW-001', 4, 'Deka Kacang', 0, 0, 1000, 'default-product.jpg', 1, 1),
(118, 'SPW-001', 4, 'Kacang Polong', 0, 0, 0, 'default-product.jpg', 1, 1),
(119, 'SPW-001', 4, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1),
(120, 'SPW-001', 4, 'Oreo Cream', 0, 0, 2000, 'default-product.jpg', 1, 1),
(121, 'SPW-001', 4, 'Roti Aoka', 0, 0, 2000, 'default-product.jpg', 1, 1),
(122, 'SPW-001', 4, 'Selimut', 0, 0, 500, 'default-product.jpg', 1, 1),
(123, 'SPW-001', 4, 'Tiktak', 0, 0, 0, 'default-product.jpg', 1, 1),
(124, 'SPW-001', 4, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1),
(125, 'SPW-001', 4, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1),
(126, 'SPW-001', 4, 'Monde Serena Gold', 0, 0, 0, 'default-product.jpg', 1, 1),
(127, 'SPW-001', 4, 'Nabati Roll', 0, 0, 500, 'default-product.jpg', 1, 1),
(128, 'SPW-001', 2, 'Calpico', 0, 0, 0, 'default-product.jpg', 1, 1),
(129, 'SPW-001', 2, 'Kopikap', 0, 0, 0, 'default-product.jpg', 1, 1),
(130, 'SPW-001', 2, 'Milku 200 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(131, 'SPW-001', 2, 'Teh Gelas', 0, 0, 0, 'default-product.jpg', 1, 1),
(132, 'SPW-001', 10, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1),
(133, 'SPW-001', 10, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1),
(134, 'SPW-001', 1, 'Sui Cup 600 mL', 0, 0, 0, 'default-product.jpg', 1, 1);

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
-- Table structure for table `tbl_tool`
--

CREATE TABLE `tbl_tool` (
  `id_tool` int(11) NOT NULL,
  `tool` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `tool_condition` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tool`
--

INSERT INTO `tbl_tool` (`id_tool`, `tool`, `qty`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES
(1, 'Showcase', 1, 1, '', 1, 1),
(2, 'Freezer', 1, 1, '', 1, 1),
(3, 'Rak Piring', 1, 1, '', 1, 1),
(5, 'Kompor', 1, 1, '', 1, 1),
(6, 'Kompor Rinnai', 1, 1, '', 2, 1);

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
(1, 'Anas Berkata', 'anasberkata@gmail.com', 'anasberkata', '$2y$10$VtW8kK.auFys07t4yVj3ie2ACxAtcQXtOXi6adhmIq8hdyy6LWmGy', 1, 1, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', '<i class=\"ni ni-camera-compact text-dark opacity-10\"></i>', '2022-07-17', 1),
(2, 'Eka Anas Jatnika', 'ideanasdesain@gmail.com', 'ideanasdesain', '$2y$10$3SzLELmexfDlK43bMqtVteHhIbxPwPaDsFAf6zmlfo.d/iWkmcFLi', 2, 2, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', '<i class=\"ni ni-camera-compact text-dark opacity-10\"></i>', '2022-07-17', 1),
(3, 'Ira Akhira Dewi', 'iraakhiradewi@gmail.com', 'pjproduk', '$2y$10$byh2agzIllFTgx06gAbUEeTrBUCrDnEYaSA8Ww.LtJS8S0/T.Wmz6', 2, 2, 'default.jpg', 'pjproduk', 'pjproduk', '8510000000', '<i class=\"ni ni-camera-compact text-dark opacity-10\"></i>', '2022-07-18', 1),
(4, 'Elinda Rosi, S.Si', 'elindarosi@gmail.com', 'elindarosi', '$2y$10$WNEn.dLnU3UmbfOoamtaweAJjkgVgWCZjswUDPTseHVwrBuOzgFWe', 3, 2, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(5, 'Nara Yumita, S.ST', 'narayumita@gmail.com', 'narayumita', '$2y$10$Jt/53u5DzteZxwdOm5zKSOElzG9TS3QjDjmv90REflhO2EeMARn.S', 3, 3, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(6, 'Moch Angga Kusumah, S.Pd', 'manggakusumah@gmail.com', 'manggakusumah', '$2y$10$BzsgrctAdJUZmZ56o6b0UuPceiwAFxeySMrigJnBNCOQAiFnb4Xy.', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(7, 'Rony Noor Sa\'roni, ST', 'ronynoorsaroni@gmail.com', 'ronynoorsaroni', '$2y$10$11Q8plQmPsj/3cXRP0jhuetx2NnITyjqh.vwYkWbCqBhznuu2coo.', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1);

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
(13, 2, 7),
(15, 3, 2),
(16, 3, 4),
(17, 3, 5),
(18, 3, 6),
(19, 3, 7),
(21, 4, 3),
(23, 5, 5),
(24, 5, 7),
(26, 6, 7);

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
(13, 16, 'Pengguna', 'users', 'ni ni-single-02 text-danger', 1);

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_access_menu`
--
ALTER TABLE `tbl_user_access_menu`
  MODIFY `id_user_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
