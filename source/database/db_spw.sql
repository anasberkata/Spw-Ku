-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2022 at 08:35 PM
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
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `is_active`) VALUES
(1, 'SPW-001', 1, 'La Vida Cup', 184, 281, 500, 'default-product.jpg', 1),
(2, 'SPW-002', 1, 'Aqua Cup', 10, 1900, 3000, 'default-product1.jpg', 1),
(3, 'SPW-003', 1, 'Aqua Botol', 24, 1900, 3000, 'Aqua_Botol-01.jpg', 1);

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
(3, 'PJ Produk', 'pjproduk@gmail.com', 'pjproduk', '$2y$10$byh2agzIllFTgx06gAbUEeTrBUCrDnEYaSA8Ww.LtJS8S0/T.Wmz6', 3, 3, 'default.jpg', 'pjproduk', 'pjproduk', '8510000000', '<i class=\"ni ni-camera-compact text-dark opacity-10\"></i>', '2022-07-18', 1);

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
(7, 'list'),
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
(4, 'PJ Peralatan'),
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
(7, 3, 'Data Kategori', 'peralatan/catagory', 'ni ni-bullet-list-67 text-info', 1),
(8, 3, 'Data Peralatan', 'peralatan', 'ni ni-settings text-success', 1),
(9, 4, 'Data Pembelian', 'pembelian', 'ni ni-cart text-warning', 1),
(10, 5, 'Data Penjualan', 'penjualan', 'ni ni-cart text-primary', 1),
(11, 6, 'Stok Produk', 'stok', 'ni ni-box-2 text-success', 1),
(12, 7, 'List Produk', 'list', 'ni ni-shop text-primary', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data_lab`
--
ALTER TABLE `tbl_data_lab`
  ADD PRIMARY KEY (`id_lab`);

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
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
