-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2022 at 08:02 PM
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
(1, 'SPW-1', 1, 'La Vida Cup', 100, 300, 500, 'default-product.jpg', 1, 1),
(2, 'SPW-2', 1, 'Aqua Cup', 10, 300, 500, 'default-product1.jpg', 1, 1),
(3, 'SPW-3', 1, 'Aqua Botol', 24, 1900, 3000, 'default-product3.jpg', 1, 1),
(4, 'SPW-4', 1, 'Arvin Botol', 5, 1900, 2500, 'default-product2.jpg', 1, 1),
(5, 'SPW-5', 1, 'La Vida Cup', 100, 300, 500, 'default-product.jpg', 2, 1),
(6, 'SPW-6', 2, 'Ale-Ale', 38, 792, 1000, 'default-product.jpg', 1, 1),
(7, 'SPW-7', 2, 'Kiko', 60, 850, 1000, 'default-product.jpg', 1, 1),
(8, 'SPW-8', 2, 'Koko Jelly Drink', 0, 792, 1000, 'default-product.jpg', 1, 1),
(9, 'SPW-9', 2, 'Okky Jelly Drink', 27, 792, 1000, 'default-product.jpg', 1, 1),
(10, 'SPW-10', 2, 'Teh Gelas', 29, 813, 1000, 'default-product.jpg', 1, 1),
(11, 'SPW-11', 2, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1),
(12, 'SPW-12', 3, 'Cocorio', 4, 0, 0, 'default-product.jpg', 1, 1);

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
(3, 'Rak Piring', '', 1, 600000, 1, '', 1, 1),
(5, 'Kompor', 'Rinnai', 1, 300000, 1, '', 1, 1),
(6, 'Kompor Rinnai', '', 1, 0, 1, '', 2, 1),
(7, 'Gas', 'Elpiji 3KG', 1, 180, 1, '', 1, 1);

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
(1, 'Anas Berkata', 'anasberkata@gmail.com', 'anasberkata', '$2y$10$VtW8kK.auFys07t4yVj3ie2ACxAtcQXtOXi6adhmIq8hdyy6LWmGy', 1, 1, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', 'ni ni-camera-compact text-dark', '2022-07-17', 1),
(2, 'Eka Anas Jatnika', 'ideanasdesain@gmail.com', 'ideanasdesain', '$2y$10$3SzLELmexfDlK43bMqtVteHhIbxPwPaDsFAf6zmlfo.d/iWkmcFLi', 2, 2, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', 'ni ni-camera-compact text-dark', '2022-07-17', 1),
(3, 'Ira Akhira Dewi', 'iraakhiradewi@gmail.com', 'pjproduk', '$2y$10$byh2agzIllFTgx06gAbUEeTrBUCrDnEYaSA8Ww.LtJS8S0/T.Wmz6', 2, 2, 'default.jpg', 'pjproduk', 'pjproduk', '8510000000', 'ni ni-camera-compact text-dark', '2022-07-18', 1),
(4, 'Elinda Rosi, S.Si', 'elindarosi@gmail.com', 'elindarosi', '$2y$10$WNEn.dLnU3UmbfOoamtaweAJjkgVgWCZjswUDPTseHVwrBuOzgFWe', 3, 2, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(5, 'Nara Yumita, S.ST', 'narayumita@gmail.com', 'narayumita', '$2y$10$Jt/53u5DzteZxwdOm5zKSOElzG9TS3QjDjmv90REflhO2EeMARn.S', 3, 3, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(6, 'Moch Angga Kusumah, S.Pd', 'manggakusumah@gmail.com', 'manggakusumah', '$2y$10$BzsgrctAdJUZmZ56o6b0UuPceiwAFxeySMrigJnBNCOQAiFnb4Xy.', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(7, 'Rony Noor Sa\'roni, ST', 'ronynoorsaroni@gmail.com', 'ronynoorsaroni', '$2y$10$11Q8plQmPsj/3cXRP0jhuetx2NnITyjqh.vwYkWbCqBhznuu2coo.', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1),
(8, 'Member 01', 'member01@gmail.com', 'member01', '$2y$10$.HT16WrBOTpkfpnnxB7mNOEOrPKlDaxxnFIsY6wvgnI4igYu9/uCi', 7, 7, 'default.jpg', 'member01', 'member01', '87651651452', '', '2022-07-22', 1);

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
(13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1);

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
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_tool`
--
ALTER TABLE `tbl_tool`
  MODIFY `id_tool` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tool_condition`
--
ALTER TABLE `tbl_tool_condition`
  MODIFY `id_tool_condition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
