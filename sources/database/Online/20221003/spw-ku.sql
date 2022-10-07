#
# TABLE STRUCTURE FOR: tbl_class
#

DROP TABLE IF EXISTS `tbl_class`;

CREATE TABLE `tbl_class` (
  `id_class` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(125) NOT NULL,
  PRIMARY KEY (`id_class`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (1, 'XI DG');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (2, 'XI APL');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (3, 'XI TKJ 1');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (4, 'XI TKJ 2');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (5, 'XI TKJ 3');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (6, 'XI ATPH 1');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (7, 'XI ATPH 2');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (8, 'XI ATPH 3');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (9, 'XI APHP 1');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (10, 'XI APHP 2');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (11, 'XI APHP 3');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (12, 'XI ATU');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (13, 'XII DG');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (14, 'XII APL');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (15, 'XII TKJ 1');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (16, 'XII TKJ 2');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (17, 'XII TKJ 3');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (18, 'XII ATPH 1');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (19, 'XII ATPH 2');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (20, 'XII APHP 1');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (21, 'XII APHP 2');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (22, 'XII APHP 3');
INSERT INTO `tbl_class` (`id_class`, `class`) VALUES (23, 'XII ATU');


#
# TABLE STRUCTURE FOR: tbl_data_lab
#

DROP TABLE IF EXISTS `tbl_data_lab`;

CREATE TABLE `tbl_data_lab` (
  `id_lab` int(11) NOT NULL AUTO_INCREMENT,
  `lab` varchar(128) NOT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_data_lab` (`id_lab`, `lab`) VALUES (1, 'Lab SPW 1');
INSERT INTO `tbl_data_lab` (`id_lab`, `lab`) VALUES (2, 'Lab SPW 2');


#
# TABLE STRUCTURE FOR: tbl_data_web
#

DROP TABLE IF EXISTS `tbl_data_web`;

CREATE TABLE `tbl_data_web` (
  `id_data_web` int(11) NOT NULL AUTO_INCREMENT,
  `title_web` varchar(128) NOT NULL,
  `about_spw` varchar(1000) NOT NULL,
  `vision` varchar(1000) NOT NULL,
  `mission` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_data_web`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_data_web` (`id_data_web`, `title_web`, `about_spw`, `vision`, `mission`) VALUES (1, 'SPW SMK NEGERI 2 CILAKU', 'Program SEKOLAH PENCETAK WIRASAHA (SPW-KU), merupakan salah satu pilar yang mendukung kegiatan kewirausahaan di SMK N 2 Cilaku Cianjur. Program ini merupakan integrasi dari mata pelajaran Produk Kreatif Kewirausahaan dan mata pelajaran produktif.', '', '');


#
# TABLE STRUCTURE FOR: tbl_franchise
#

DROP TABLE IF EXISTS `tbl_franchise`;

CREATE TABLE `tbl_franchise` (
  `id_franchise` int(11) NOT NULL AUTO_INCREMENT,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_franchise`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (6, '2022-08-30', 13);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (5, '2022-08-29', 7);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (4, '2022-08-29', 7);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (7, '2022-08-30', 13);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (8, '2022-08-31', 11);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (9, '2022-08-31', 11);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (10, '2022-09-01', 6);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (11, '2022-09-01', 6);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (12, '2022-09-02', 9);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (13, '2022-09-02', 9);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (14, '2022-09-05', 4);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (15, '2022-09-05', 4);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (16, '2022-09-06', 12);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (17, '2022-09-06', 12);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (18, '2022-09-07', 3);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (19, '2022-09-07', 3);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (20, '2022-09-09', 6);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (21, '2022-09-08', 5);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (22, '2022-09-08', 5);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (23, '2022-09-12', 4);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (24, '2022-09-12', 4);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (25, '2022-09-13', 11);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (26, '2022-09-13', 11);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (27, '2022-09-14', 3);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (28, '2022-09-14', 3);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (29, '2022-09-15', 12);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (30, '2022-09-15', 12);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (31, '2022-09-16', 11);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (32, '2022-09-16', 11);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (33, '2022-09-20', 2);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (34, '2022-09-20', 2);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (35, '2022-09-21', 5);
INSERT INTO `tbl_franchise` (`id_franchise`, `date_selling`, `id_user`) VALUES (36, '2022-09-30', 6);


#
# TABLE STRUCTURE FOR: tbl_franchise_detail
#

DROP TABLE IF EXISTS `tbl_franchise_detail`;

CREATE TABLE `tbl_franchise_detail` (
  `id_franchise_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_franchise` int(11) NOT NULL,
  `id_franchisor` int(11) NOT NULL,
  `product` varchar(125) NOT NULL,
  `basic_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `qty_last` int(11) NOT NULL,
  `qty_selling` int(11) NOT NULL,
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL,
  PRIMARY KEY (`id_franchise_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=423 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (9, 4, 1, 'Cirambay', 4000, 5000, 16, 1, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (8, 4, 1, 'Pempek', 1700, 2000, 40, 17, 23, 39100, 46000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (7, 4, 1, 'Keripik Kaca', 2500, 3000, 6, 0, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (5, 4, 1, 'Nasi Uduk', 2500, 3000, 59, 3, 56, 140000, 168000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (6, 4, 1, 'Basruk', 2500, 3000, 25, 17, 8, 20000, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (10, 4, 1, 'Pentol', 1700, 2000, 185, 18, 167, 283900, 334000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (11, 4, 1, 'Basreng Cobek', 1700, 2000, 36, 1, 35, 59500, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (12, 4, 1, 'Nutrisari', 2500, 3000, 60, 43, 17, 42500, 51000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (13, 4, 1, 'Sostel', 2500, 3000, 30, 14, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (14, 4, 1, 'Pop Ice', 2500, 3000, 20, 18, 2, 5000, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (15, 4, 6, 'Buras', 800, 1000, 35, 14, 21, 16800, 21000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (16, 4, 6, 'Gehu', 800, 1000, 25, 0, 25, 20000, 25000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (17, 4, 6, 'Risol', 1000, 1500, 60, 0, 60, 60000, 90000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (18, 4, 6, 'Nasi Bakar', 3500, 4000, 3, 0, 3, 10500, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (19, 5, 1, 'Nasi Uduk', 2500, 3000, 50, 0, 50, 125000, 150000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (20, 5, 1, 'Basruk', 2500, 3000, 25, 11, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (21, 5, 1, 'Keripik Kaca', 2500, 3000, 6, 0, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (22, 5, 1, 'Pempek', 1700, 2000, 40, 22, 18, 30600, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (23, 5, 1, 'Cirambay', 4000, 5000, 16, 0, 16, 64000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (24, 5, 1, 'Pentol', 1700, 2000, 155, 0, 155, 263500, 310000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (25, 5, 1, 'Basreng Cobek', 1700, 2000, 25, 17, 8, 13600, 16000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (26, 5, 1, 'Nutrisari', 2500, 3000, 60, 16, 44, 110000, 132000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (27, 5, 1, 'Sostel', 2500, 3000, 30, 17, 13, 32500, 39000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (28, 5, 1, 'Pop Ice', 2500, 3000, 20, 6, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (29, 4, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (30, 5, 2, 'Samosa', 800, 1000, 72, 0, 72, 57600, 72000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (31, 5, 2, 'Cilok Kacang', 1800, 2000, 60, 23, 37, 66600, 74000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (32, 6, 1, 'Nasi Uduk', 2500, 3000, 52, 17, 35, 87500, 105000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (33, 6, 1, 'Basruk', 2500, 3000, 25, 5, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (34, 6, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (35, 6, 1, 'Cirambay', 4000, 5000, 15, 1, 14, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (36, 6, 1, 'Pentol', 1700, 2000, 175, 33, 142, 241400, 284000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (37, 6, 1, 'Sostel', 2500, 3000, 25, 8, 17, 42500, 51000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (38, 6, 1, 'Basreng Cobek', 1700, 2000, 40, 0, 40, 68000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (39, 6, 1, 'Nutrisari', 2500, 3000, 60, 34, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (40, 6, 1, 'Pop Ice', 2500, 3000, 20, 10, 10, 25000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (41, 6, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (42, 6, 6, 'Risol', 1000, 1500, 48, 0, 48, 48000, 72000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (43, 6, 6, 'Gehu', 800, 1000, 45, 0, 45, 36000, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (44, 6, 6, 'Buras', 800, 1000, 32, 18, 14, 11200, 14000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (45, 6, 6, 'Nasi Bakar', 3500, 4000, 6, 0, 6, 21000, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (46, 7, 2, 'Samosa', 800, 1000, 75, 4, 71, 56800, 71000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (47, 7, 1, 'Nasi Uduk', 2500, 3000, 50, 5, 45, 112500, 135000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (48, 7, 1, 'Basruk', 2500, 3000, 25, 4, 21, 52500, 63000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (49, 7, 1, 'Pempek', 1700, 2000, 40, 38, 2, 3400, 4000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (50, 7, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (51, 7, 1, 'Pentol', 1700, 2000, 145, 0, 145, 246500, 290000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (52, 7, 1, 'Sostel', 2500, 3000, 25, 17, 8, 20000, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (53, 7, 1, 'Basreng Cobek', 1700, 2000, 24, 0, 24, 40800, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (54, 7, 1, 'Nutrisari', 2500, 3000, 60, 33, 27, 67500, 81000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (55, 7, 1, 'Pop Ice', 2500, 3000, 20, 14, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (56, 8, 1, 'Nasi Uduk', 2500, 3000, 50, 29, 21, 52500, 63000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (57, 8, 1, 'Basruk', 2500, 3000, 26, 0, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (58, 8, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (59, 8, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (60, 8, 1, 'Pentol', 1700, 2000, 175, 0, 175, 297500, 350000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (61, 8, 1, 'Sostel', 2500, 3000, 25, 6, 19, 47500, 57000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (62, 8, 1, 'Basreng Cobek', 1700, 2000, 32, 2, 30, 51000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (63, 8, 1, 'Nutrisari', 2500, 3000, 60, 34, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (64, 8, 1, 'Pop Ice', 2500, 3000, 20, 7, 13, 32500, 39000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (65, 8, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (66, 9, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (67, 9, 1, 'Nasi Uduk', 2500, 3000, 45, 0, 45, 112500, 135000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (68, 9, 1, 'Basruk', 2500, 3000, 25, 0, 25, 62500, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (69, 9, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (70, 9, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (71, 9, 1, 'Pentol', 1700, 2000, 150, 0, 150, 255000, 300000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (72, 9, 1, 'Sostel', 2500, 3000, 25, 7, 18, 45000, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (73, 9, 1, 'Basreng Cobek', 1700, 2000, 24, 0, 24, 40800, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (74, 9, 1, 'Nutrisari', 2500, 3000, 60, 34, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (75, 9, 1, 'Pop Ice', 2500, 3000, 20, 17, 3, 7500, 9000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (76, 10, 1, 'Nasi Uduk', 2500, 3000, 42, 2, 40, 100000, 120000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (77, 10, 1, 'Basruk', 2500, 3000, 25, 1, 24, 60000, 72000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (78, 10, 1, 'Pempek', 1700, 2000, 50, 11, 39, 66300, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (79, 10, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (80, 10, 1, 'Pentol', 1700, 2000, 187, 45, 142, 241400, 284000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (81, 10, 1, 'Sostel', 2500, 3000, 25, 21, 4, 10000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (82, 10, 1, 'Basreng Cobek', 1700, 2000, 32, 4, 28, 47600, 56000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (83, 10, 1, 'Nutrisari', 2500, 3000, 50, 36, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (84, 10, 1, 'Pop Ice', 2500, 3000, 20, 19, 1, 2500, 3000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (85, 10, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (86, 10, 6, 'Risol', 1000, 1500, 105, 10, 95, 95000, 142500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (87, 10, 6, 'Nasi Bakar', 3500, 4000, 8, 3, 5, 17500, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (88, 10, 6, 'Gehu', 800, 1000, 125, 1, 124, 99200, 124000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (89, 11, 1, 'Nasi Uduk', 2500, 3000, 42, 6, 36, 90000, 108000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (90, 11, 1, 'Basruk', 2500, 3000, 25, 0, 25, 62500, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (91, 11, 1, 'Pempek', 1700, 2000, 50, 17, 33, 56100, 66000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (92, 11, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (93, 11, 1, 'Pentol', 1700, 2000, 150, 36, 114, 193800, 228000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (94, 11, 1, 'Sostel', 2500, 3000, 25, 9, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (95, 11, 1, 'Basreng Cobek', 1700, 2000, 32, 15, 17, 28900, 34000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (96, 11, 1, 'Nutrisari', 2500, 3000, 50, 20, 30, 75000, 90000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (97, 11, 1, 'Pop Ice', 2500, 3000, 20, 3, 17, 42500, 51000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (98, 11, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (99, 16, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (100, 17, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (101, 16, 6, 'Gehu', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (102, 16, 6, 'Risol', 1000, 1500, 43, 11, 32, 32000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (103, 16, 6, 'Nasi Bakar', 3500, 4000, 4, 1, 3, 10500, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (104, 16, 1, 'Nasi Uduk', 2500, 3000, 46, 34, 12, 30000, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (105, 16, 1, 'Pempek', 1700, 2000, 40, 31, 9, 15300, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (106, 16, 1, 'Cirambay', 4000, 5000, 13, 1, 12, 48000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (107, 16, 1, 'Pentol', 1700, 2000, 125, 3, 122, 207400, 244000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (108, 16, 1, 'Cipeng', 800, 1000, 65, 37, 28, 22400, 28000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (109, 16, 1, 'Siomay Baso Tahu', 800, 1000, 150, 17, 133, 106400, 133000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (110, 16, 1, 'Kerupuk Kaca', 2500, 3000, 15, 0, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (111, 16, 1, 'Cemilan 3000', 2500, 3000, 25, 12, 13, 32500, 39000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (112, 16, 1, 'Nutrisari', 2500, 3000, 50, 23, 27, 67500, 81000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (113, 16, 1, 'Pop Ice', 2500, 3000, 20, 14, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (114, 16, 1, 'Petis', 2500, 3000, 10, 1, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (115, 17, 1, 'Nasi Uduk', 2500, 3000, 45, 0, 45, 112500, 135000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (116, 17, 1, 'Pempek', 1700, 2000, 40, 33, 7, 11900, 14000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (117, 17, 1, 'Cirambay', 4000, 5000, 13, 0, 13, 52000, 65000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (118, 17, 1, 'Pentol', 1700, 2000, 125, 0, 125, 212500, 250000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (119, 17, 1, 'Cipeng', 800, 1000, 65, 0, 65, 52000, 65000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (120, 17, 1, 'Siomay Baso Tahu', 800, 1000, 150, 0, 150, 120000, 150000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (121, 17, 1, 'Keripik Kaca', 2500, 3000, 15, 0, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (122, 17, 1, 'Cemilan 3000', 2500, 3000, 25, 0, 25, 62500, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (123, 17, 1, 'Nutrisari', 2500, 3000, 50, 0, 50, 125000, 150000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (124, 17, 1, 'Pop Ice', 2500, 3000, 20, 0, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (125, 17, 1, 'Petis', 2500, 3000, 10, 0, 10, 25000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (126, 15, 1, 'Nasi Uduk', 2500, 3000, 45, 22, 23, 57500, 69000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (127, 15, 1, 'Cirambay', 4000, 5000, 17, 6, 11, 44000, 55000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (128, 15, 1, 'Pentol', 1700, 2000, 180, 76, 104, 176800, 208000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (129, 15, 1, 'Cipeng', 800, 1000, 60, 14, 46, 36800, 46000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (130, 15, 1, 'Siomay', 800, 1000, 150, 19, 131, 104800, 131000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (131, 15, 1, 'Basruk', 2500, 3000, 11, 2, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (132, 15, 1, 'Keripik kaca', 2500, 3000, 15, 1, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (133, 15, 1, 'Keripik Seblak', 2500, 3000, 10, 4, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (134, 15, 1, 'Gurilem', 2500, 3000, 10, 7, 3, 7500, 9000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (135, 15, 1, 'Keong', 2500, 3000, 10, 8, 2, 5000, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (136, 15, 1, 'Nutrisari ', 2500, 3000, 50, 22, 28, 70000, 84000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (137, 15, 1, 'Pop Ice', 2500, 3000, 20, 0, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (138, 15, 0, 'Makaroni Bantet', 2500, 3000, 5, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (139, 15, 0, 'Lumpia', 2500, 3000, 16, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (140, 15, 2, 'Samosa', 800, 1000, 75, 49, 26, 20800, 26000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (141, 15, 6, 'Risol', 1000, 1500, 70, 19, 51, 51000, 76500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (142, 15, 6, 'Gehu', 800, 1000, 140, 58, 82, 65600, 82000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (143, 14, 1, 'Nasi Uduk', 2500, 3000, 40, 6, 34, 85000, 102000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (144, 14, 1, 'Cirambay', 4000, 5000, 17, 0, 17, 68000, 85000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (145, 14, 1, 'Pentol', 1700, 2000, 150, 31, 119, 202300, 238000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (146, 14, 1, 'Cipeng', 800, 1000, 60, 0, 60, 48000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (147, 14, 1, 'Siomay', 800, 1000, 150, 26, 124, 99200, 124000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (148, 14, 1, 'Keripik kaca', 2500, 3000, 15, 2, 13, 32500, 39000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (149, 14, 1, 'Kerupuk Seblak', 2500, 3000, 10, 8, 2, 5000, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (150, 14, 1, 'Gurilem', 2500, 3000, 10, 0, 10, 25000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (151, 14, 1, 'Keong', 2500, 3000, 10, 6, 4, 10000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (152, 14, 1, 'Nutrisari ', 2500, 3000, 50, 16, 34, 85000, 102000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (153, 14, 1, 'Pop Ice', 2500, 3000, 20, 0, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (154, 14, 1, 'Basruk', 2500, 3000, 10, 3, 7, 17500, 21000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (155, 14, 2, 'Samosa', 800, 1000, 75, 5, 70, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (156, 18, 1, 'Nasi Uduk', 2500, 3000, 35, 17, 18, 45000, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (157, 18, 1, 'Pempek', 1700, 2000, 40, 22, 18, 30600, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (158, 18, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (159, 18, 1, 'Cipeng (Cireng Gepeng)', 800, 1000, 100, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (160, 18, 1, 'Siomay', 800, 1000, 150, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (161, 18, 1, 'Keripik Kaca', 2500, 3000, 20, 5, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (162, 18, 1, 'Kerupuk', 2500, 3000, 25, 5, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (163, 18, 1, 'Petis', 2500, 3000, 16, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (164, 18, 1, 'Nutrisari', 2500, 3000, 50, 15, 35, 87500, 105000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (165, 18, 1, 'Pop Ice', 2500, 3000, 20, 14, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (166, 18, 2, 'Samosa', 800, 1000, 50, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (167, 18, 0, 'Sosis Solo', 1000, 1500, 15, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (169, 18, 6, 'Gehu', 800, 1000, 35, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (170, 18, 6, 'Buras', 800, 1000, 20, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (171, 19, 1, 'Nasi Uduk', 2500, 3000, 34, 8, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (172, 19, 1, 'Pempek', 1700, 2000, 40, 21, 19, 32300, 38000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (173, 19, 1, 'Cirambay', 4000, 5000, 15, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (174, 19, 1, 'Cipeng (Cireng Gepeng)', 800, 1000, 60, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (175, 19, 1, 'Siomay', 800, 1000, 150, 3, 147, 117600, 147000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (176, 19, 1, 'Keripik Kaca', 2500, 3000, 20, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (177, 19, 1, 'Kerupuk', 2500, 3000, 25, 6, 19, 47500, 57000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (178, 19, 1, 'Petis', 2500, 3000, 16, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (179, 19, 1, 'Nutrisari', 2500, 3000, 50, 15, 35, 87500, 105000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (180, 19, 1, 'Pop Ice', 2500, 3000, 20, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (181, 19, 2, 'Samosa', 800, 1000, 50, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (182, 20, 6, 'Risol', 1000, 1500, 25, 0, 25, 25000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (183, 20, 6, 'Sosis Solo', 1200, 1500, 15, 0, 15, 18000, 22500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (184, 20, 6, 'Gehu', 800, 1000, 40, 0, 40, 32000, 40000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (185, 20, 6, 'Nasi Bakar', 3500, 4000, 3, 0, 3, 10500, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (186, 25, 1, 'Nasi Uduk', 2500, 3000, 35, 7, 28, 70000, 84000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (187, 25, 1, 'Pempek', 1700, 2000, 40, 14, 26, 44200, 52000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (188, 25, 1, 'Cirambay', 4000, 5000, 17, 3, 14, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (189, 25, 1, 'Pentol', 1700, 2000, 100, 0, 100, 170000, 200000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (190, 25, 1, 'Cipeng', 800, 1000, 100, 0, 100, 80000, 100000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (191, 25, 1, 'Siomay Baso Tahu', 800, 1000, 150, 61, 89, 71200, 89000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (192, 25, 1, 'Petis', 2500, 3000, 14, 4, 10, 25000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (193, 25, 1, 'Basruk', 2500, 3000, 40, 12, 28, 70000, 84000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (194, 25, 1, 'Nutrisari', 2500, 3000, 50, 34, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (195, 25, 1, 'Pop Ice', 2500, 3000, 20, 16, 4, 10000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (196, 26, 1, 'Nasi Uduk', 2500, 3000, 35, 14, 21, 52500, 63000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (197, 26, 1, 'Pempek', 1700, 2000, 40, 32, 8, 13600, 16000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (198, 26, 1, 'Cirambay', 4000, 5000, 17, 12, 5, 20000, 25000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (199, 26, 1, 'Pentol', 1700, 2000, 100, 0, 100, 170000, 200000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (200, 26, 1, 'Cipeng', 800, 1000, 70, 0, 70, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (201, 26, 1, 'Siomay Baso Tahu', 800, 1000, 150, 5, 145, 116000, 145000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (202, 26, 1, 'Petis', 2500, 3000, 12, 0, 12, 30000, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (203, 26, 1, 'Basruk', 2500, 3000, 40, 14, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (204, 26, 1, 'Nutrisari', 2500, 3000, 50, 20, 30, 75000, 90000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (205, 26, 1, 'Pop Ice', 2500, 3000, 20, 5, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (206, 25, 12, 'Makaroni', 2500, 3000, 20, 0, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (207, 25, 13, 'Seblak Cilok', 4000, 5000, 30, 22, 8, 32000, 40000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (208, 25, 13, 'Martabak', 5000, 6000, 5, 4, 1, 5000, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (209, 25, 9, 'Kebab Telor', 2800, 3000, 15, 0, 15, 42000, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (210, 25, 11, 'Pie Susu & Kue Sus', 1200, 1500, 50, 0, 50, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (211, 26, 11, 'Pie Buah & Sus Buah', 1600, 2000, 50, 0, 50, 80000, 100000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (212, 25, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (213, 26, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (214, 25, 6, 'Risol', 1000, 1500, 55, 0, 55, 55000, 82500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (215, 25, 6, 'Buras', 800, 1000, 19, 1, 18, 14400, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (216, 22, 12, 'Makaroni', 2500, 3000, 15, 6, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (217, 22, 7, 'Aneka Keripik', 800, 1000, 30, 0, 30, 24000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (218, 21, 6, 'Risol', 1000, 1500, 18, 0, 18, 18000, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (219, 21, 6, 'Sosis', 1200, 1500, 30, 14, 16, 19200, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (220, 21, 6, 'Gehu', 800, 1000, 31, 0, 31, 24800, 31000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (221, 21, 6, 'Buras', 800, 1000, 15, 6, 9, 7200, 9000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (222, 21, 6, 'Nasi Bakar', 3500, 4000, 2, 0, 2, 7000, 8000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (223, 21, 2, 'Samosa', 800, 1000, 75, 0, 75, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (224, 22, 2, 'Samosa', 800, 1000, 75, 9, 66, 52800, 66000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (225, 22, 1, 'Nasi Uduk', 2500, 3000, 30, 0, 30, 75000, 90000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (226, 22, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (227, 22, 1, 'Cirambay', 4000, 5000, 16, 0, 16, 64000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (228, 22, 1, 'Pentol', 1700, 2000, 83, 0, 83, 141100, 166000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (229, 22, 1, 'Cipeng', 800, 1000, 70, 0, 70, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (230, 22, 1, 'Siomay Baso Tahu', 800, 1000, 115, 4, 111, 88800, 111000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (231, 22, 1, 'Kripik Kaca', 2500, 3000, 20, 0, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (232, 22, 1, 'Krupuk', 2500, 3000, 25, 4, 21, 52500, 63000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (233, 22, 1, 'Petis', 2500, 3000, 16, 0, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (234, 22, 1, 'Nutrisari', 2500, 3000, 50, 25, 25, 62500, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (235, 22, 1, 'Pop Ice', 2500, 3000, 20, 11, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (236, 21, 1, 'Nasi Uduk', 2500, 3000, 35, 4, 31, 77500, 93000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (237, 21, 1, 'Pempek', 1700, 2000, 40, 0, 40, 68000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (238, 21, 1, 'Cirambay', 4000, 5000, 16, 0, 16, 64000, 80000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (239, 21, 1, 'Pentol', 1700, 2000, 83, 0, 83, 141100, 166000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (240, 21, 1, 'Cipeng', 800, 1000, 110, 0, 110, 88000, 110000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (241, 21, 1, 'Siomay Baso Tahu', 800, 1000, 120, 0, 120, 96000, 120000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (242, 21, 1, 'Keripik Kaca', 2500, 3000, 20, 0, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (243, 21, 1, 'Kerupuk', 2500, 3000, 25, 10, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (244, 21, 1, 'Petis', 2500, 3000, 16, 6, 10, 25000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (245, 21, 1, 'Nutrisari', 2500, 3000, 50, 32, 18, 45000, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (246, 21, 1, 'Pop Ice', 2500, 3000, 20, 18, 2, 5000, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (247, 21, 11, 'Pie Susu', 1200, 2000, 25, 0, 25, 30000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (248, 21, 11, 'Pie Buah', 1600, 2000, 25, 0, 25, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (249, 22, 11, 'Pie Susu & Kue Sus', 1200, 1500, 25, 0, 25, 30000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (250, 22, 11, 'Pie buah & Sus Buah', 1600, 2000, 25, 0, 25, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (251, 21, 8, 'Cilok', 2500, 3000, 32, 18, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (252, 27, 1, 'Nasi Uduk', 2500, 3000, 39, 21, 18, 45000, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (253, 27, 1, 'Empek-empek', 1700, 2000, 40, 24, 16, 27200, 32000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (254, 27, 1, 'Cirambay', 4000, 5000, 13, 7, 6, 24000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (255, 27, 1, 'Pentol', 1700, 2000, 125, 31, 94, 159800, 188000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (256, 27, 1, 'Cipeng', 800, 1000, 106, 0, 106, 84800, 106000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (257, 27, 1, 'Siomay Baso Tahu', 800, 1000, 150, 71, 79, 63200, 79000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (258, 27, 1, 'Petis', 2500, 3000, 14, 0, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (259, 27, 1, 'Basruk', 2500, 3000, 25, 14, 11, 27500, 33000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (260, 27, 1, 'Keripik Kaca', 2500, 3000, 25, 16, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (261, 27, 1, 'Nutrisari', 2500, 3000, 30, 21, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (262, 27, 1, 'Pop Ice', 2500, 3000, 30, 24, 6, 15000, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (263, 24, 9, 'Kebab', 2700, 3000, 18, 0, 18, 48600, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (264, 28, 1, 'Nasi Uduk', 2500, 3000, 36, 17, 19, 47500, 57000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (265, 28, 1, 'Empek-empek', 1700, 2000, 40, 37, 3, 5100, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (266, 28, 1, 'Cirambay', 4000, 5000, 13, 3, 10, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (267, 28, 1, 'Pentol', 1700, 2000, 125, 54, 71, 120700, 142000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (268, 24, 2, 'Samosa', 800, 1000, 75, 10, 65, 52000, 65000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (269, 28, 1, 'Cipeng', 800, 1000, 80, 15, 65, 52000, 65000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (270, 28, 1, 'Siomay Baso Tahu', 800, 1000, 150, 93, 57, 45600, 57000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (271, 24, 12, 'Makaroni', 2500, 3000, 15, 0, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (272, 28, 1, 'Petis', 2500, 3000, 12, 1, 11, 27500, 33000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (273, 24, 4, 'Krupuk dan makaroni seblak', 2500, 3000, 6, 2, 4, 10000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (274, 28, 1, 'Basruk', 2500, 3000, 25, 20, 5, 12500, 15000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (275, 28, 1, 'Keripik Kaca', 2500, 3000, 25, 14, 11, 27500, 33000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (276, 28, 1, 'Nutrisari', 2500, 3000, 30, 9, 21, 52500, 63000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (277, 28, 1, 'Pop Ice', 2500, 3000, 30, 14, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (278, 24, 14, 'Pentol', 900, 1000, 200, 51, 149, 134100, 149000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (279, 27, 2, 'Samosa', 800, 1000, 75, 30, 45, 36000, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (280, 28, 2, 'Samosa', 800, 1000, 75, 45, 30, 24000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (281, 27, 13, 'Seblak cilok', 4500, 5000, 15, 8, 7, 31500, 35000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (282, 28, 13, 'Seblak cilok', 4500, 5000, 15, 11, 4, 18000, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (283, 28, 13, 'Martabak', 5500, 6000, 3, 2, 1, 5500, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (284, 27, 11, 'Pai Susu + Kue', 1200, 1500, 25, 0, 25, 30000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (285, 27, 11, 'Pai Buah + Soes Buah', 1600, 2000, 25, 0, 25, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (286, 28, 11, 'Pai Susu + Kue Soes', 1200, 1500, 25, 1, 24, 28800, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (287, 28, 11, 'Pai Buah + Soes Buah', 1600, 2000, 25, 7, 18, 28800, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (288, 27, 6, 'Buras', 800, 1000, 13, 1, 12, 9600, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (289, 24, 13, 'Seblak Cilok', 4500, 5000, 10, 1, 9, 40500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (290, 27, 6, 'Risol', 1000, 1500, 55, 14, 41, 41000, 61500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (291, 24, 13, 'Martabak', 5000, 6000, 2, 0, 2, 10000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (292, 27, 9, 'Kebab Telor', 2700, 3000, 15, 0, 15, 40500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (293, 27, 12, 'Makaroni', 2500, 3000, 26, 3, 23, 57500, 69000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (294, 28, 14, 'Baso', 900, 1000, 100, 0, 100, 90000, 100000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (295, 28, 7, 'Cimol Bulat', 800, 1000, 15, 8, 7, 5600, 7000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (296, 28, 7, 'Cimol kering', 800, 1000, 25, 4, 21, 16800, 21000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (297, 29, 15, 'Martabak Telor', 1800, 2000, 20, 0, 20, 36000, 40000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (298, 29, 15, 'Kue Sus', 1800, 2000, 10, 3, 7, 12600, 14000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (299, 29, 13, 'Seblak Cilok', 4800, 5000, 10, 1, 9, 43200, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (300, 29, 13, 'Martabak', 5500, 6000, 1, 0, 1, 5500, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (301, 29, 12, 'Makaroni', 2500, 3000, 35, 0, 35, 87500, 105000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (302, 29, 1, 'Nasi Uduk', 2500, 3000, 33, 8, 25, 62500, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (303, 29, 1, 'Pempek', 1700, 2000, 40, 9, 31, 52700, 62000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (304, 29, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (305, 29, 1, 'Pentol', 1700, 2000, 125, 36, 89, 151300, 178000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (306, 29, 1, 'Cipeng', 800, 1000, 130, 0, 130, 104000, 130000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (307, 29, 1, 'Siomay Baso Tahu', 800, 1000, 150, 16, 134, 107200, 134000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (308, 29, 1, 'Petis', 2500, 3000, 14, 7, 7, 17500, 21000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (309, 29, 1, 'Basruk', 2500, 3000, 17, 1, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (310, 29, 1, 'Keripik Kaca', 2500, 3000, 17, 12, 5, 12500, 15000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (311, 29, 1, 'Nutrisari', 2500, 3000, 50, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (312, 29, 1, 'Pop Ice', 2500, 3000, 20, 0, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (313, 29, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (314, 29, 6, 'Risol', 1200, 1500, 38, 0, 38, 45600, 57000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (315, 29, 6, 'Buras', 800, 1000, 6, 1, 5, 4000, 5000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (316, 29, 7, 'Moring', 800, 1000, 15, 0, 15, 12000, 15000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (317, 29, 7, 'Sebring Ikan', 800, 1000, 15, 4, 11, 8800, 11000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (318, 29, 11, 'Pie Susu & Kue Sus', 1200, 1500, 25, 1, 24, 28800, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (319, 29, 11, 'Pie Buah & Sus Buah', 1600, 2000, 25, 0, 25, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (320, 30, 2, 'Samosa', 800, 1000, 50, 0, 50, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (321, 30, 11, 'Pie Susu & Kue Sus', 1200, 1500, 25, 0, 25, 30000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (322, 30, 11, 'Pie Buah & Sus Buah', 1600, 2000, 25, 0, 25, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (323, 30, 15, 'Martabak Telor', 1800, 2000, 10, 0, 10, 18000, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (324, 30, 15, 'Kue Sus', 1800, 2000, 10, 0, 10, 18000, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (325, 30, 13, 'Martabak', 5500, 6000, 2, 0, 2, 11000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (326, 30, 13, 'Seblak Cilok', 4800, 5000, 10, 0, 10, 48000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (327, 30, 1, 'Nasi Uduk', 2500, 3000, 32, 3, 29, 72500, 87000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (328, 30, 1, 'Pempek', 1700, 2000, 38, 2, 36, 61200, 72000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (329, 30, 1, 'Cirambay', 4000, 5000, 15, 0, 15, 60000, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (330, 30, 1, 'Pentol', 1700, 2000, 125, 19, 106, 180200, 212000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (331, 30, 1, 'Cipeng', 800, 1000, 80, 18, 62, 49600, 62000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (332, 30, 1, 'Siomay Baso Tahu', 800, 1000, 150, 0, 150, 120000, 150000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (333, 30, 1, 'Petis', 2500, 3000, 12, 0, 12, 30000, 36000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (334, 30, 1, 'Basruk', 2500, 3000, 17, 0, 17, 42500, 51000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (335, 30, 1, 'Keripik Kaca', 2500, 3000, 17, 0, 17, 42500, 51000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (336, 30, 1, 'Nutrisari', 2500, 3000, 50, 31, 19, 47500, 57000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (337, 30, 1, 'Pop Ice', 2500, 3000, 20, 5, 15, 37500, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (338, 23, 2, 'Samosa', 800, 1000, 75, 40, 35, 28000, 35000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (339, 23, 4, 'Krupuk dan makaroni seblak', 2500, 3000, 25, 18, 7, 17500, 21000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (340, 23, 11, 'Kue Sus', 1200, 1500, 25, 0, 25, 30000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (341, 23, 11, 'Sus Buah', 1600, 2000, 25, 11, 14, 22400, 28000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (342, 23, 13, 'Seblak Cilok', 4500, 5000, 10, 2, 8, 36000, 40000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (343, 23, 13, 'Martabak', 5000, 6000, 2, 1, 1, 5000, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (344, 23, 12, 'Makaroni', 2500, 3000, 15, 12, 3, 7500, 9000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (345, 24, 11, 'Kue Sus', 1200, 1500, 25, 0, 25, 30000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (346, 24, 11, 'Sus Buah', 1600, 2000, 25, 11, 14, 22400, 28000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (347, 24, 1, 'Nasi Uduk', 2500, 3000, 34, 12, 22, 55000, 66000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (348, 24, 1, 'Pempek', 1700, 2000, 40, 35, 5, 8500, 10000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (349, 24, 1, 'Cirambay', 4000, 5000, 14, 8, 6, 24000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (350, 24, 1, 'Pentol', 1400, 2000, 155, 89, 66, 92400, 132000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (351, 24, 1, 'Siomay', 800, 1000, 160, 107, 53, 42400, 53000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (352, 24, 1, 'Basruk', 2500, 3000, 40, 30, 10, 25000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (353, 24, 1, 'Nutrisari ', 2500, 3000, 50, 24, 26, 65000, 78000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (354, 24, 1, 'Pop Ice', 2500, 3000, 20, 6, 14, 35000, 42000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (355, 24, 1, 'Cipeng', 800, 1000, 70, 0, 70, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (356, 24, 1, 'Petis', 2500, 3000, 11, 0, 11, 27500, 33000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (357, 23, 1, 'Nasi Uduk', 2500, 3000, 34, 9, 25, 62500, 75000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (358, 23, 1, 'Pempek', 1700, 2000, 40, 37, 3, 5100, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (359, 23, 1, 'Cirambay', 4000, 5000, 14, 0, 14, 56000, 70000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (360, 23, 1, 'Pentol', 1400, 2000, 155, 53, 102, 142800, 204000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (361, 23, 1, 'Cipeng', 800, 1000, 120, 34, 86, 68800, 86000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (362, 23, 1, 'Siomay', 800, 1000, 160, 59, 101, 80800, 101000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (363, 23, 1, 'Petis', 2500, 3000, 11, 0, 11, 27500, 33000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (364, 23, 1, 'Basruk', 2500, 3000, 42, 26, 16, 40000, 48000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (365, 23, 1, 'Nutrisari ', 2500, 3000, 50, 28, 22, 55000, 66000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (366, 23, 1, 'Pop Ice', 2500, 3000, 20, 11, 9, 22500, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (367, 23, 6, 'Risol', 1000, 1500, 60, 6, 54, 54000, 81000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (368, 23, 6, 'Sosis Solo', 1200, 1500, 12, 4, 8, 9600, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (369, 23, 6, 'Nasi Bakar', 3500, 4000, 6, 0, 6, 21000, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (370, 33, 1, 'Pentol', 1700, 2000, 100, 26, 74, 125800, 148000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (371, 33, 1, 'Pempek', 1700, 2000, 35, 16, 19, 32300, 38000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (372, 33, 1, 'Cirambay', 4300, 5000, 15, 6, 9, 38700, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (373, 33, 1, 'Basreng Cobek', 1700, 2000, 12, 6, 6, 10200, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (374, 33, 1, 'Cipeng', 800, 1000, 100, 7, 93, 74400, 93000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (375, 33, 1, 'Seblok', 4300, 5000, 12, 8, 4, 17200, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (376, 33, 1, 'Siomay Baso Tahu', 800, 1000, 110, 51, 59, 47200, 59000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (377, 33, 1, 'Nasi Box', 4400, 5000, 25, 1, 24, 105600, 120000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (378, 33, 1, 'Basruk / Keripik Kaca', 2500, 3000, 50, 30, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (379, 33, 1, 'Nutrisari / Pop Ice', 2500, 3000, 60, 39, 21, 52500, 63000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (380, 33, 2, 'Samosa', 800, 1000, 50, 38, 12, 9600, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (381, 33, 6, 'Risol', 1200, 1500, 40, 10, 30, 36000, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (382, 33, 6, 'Buras', 800, 1000, 25, 22, 3, 2400, 3000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (383, 33, 12, 'Pisang Nugget', 2500, 3000, 15, 11, 4, 10000, 12000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (384, 33, 12, 'Makaroni', 2500, 3000, 20, 13, 7, 17500, 21000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (385, 33, 17, 'Mie Lidi', 800, 1000, 40, 17, 23, 18400, 23000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (386, 33, 10, 'Basreng', 4700, 5000, 22, 1, 21, 98700, 105000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (387, 33, 15, 'Puding', 1800, 2000, 16, 13, 3, 5400, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (388, 33, 15, 'Sosis Mie', 2200, 2500, 20, 9, 11, 24200, 27500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (389, 33, 15, 'Martabak Telor', 1800, 2000, 12, 3, 9, 16200, 18000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (390, 33, 15, 'Kue Sus', 1800, 2000, 10, 7, 3, 5400, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (391, 33, 9, 'Kebab Telur', 2700, 3000, 20, 12, 8, 21600, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (392, 33, 9, 'Kebab Ayam', 4500, 5000, 4, 4, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (393, 33, 18, 'Basreng', 3000, 5000, 28, 19, 9, 27000, 45000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (394, 33, 11, 'Pie Susu & Kue Sus', 1200, 1500, 25, 7, 18, 21600, 27000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (395, 33, 11, 'Pie Buah & Sus Buah', 1600, 2000, 25, 0, 25, 40000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (396, 34, 1, 'Pentol', 1700, 2000, 100, 58, 42, 71400, 84000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (397, 34, 1, 'Pempek', 1700, 2000, 35, 19, 16, 27200, 32000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (398, 34, 1, 'Cirambay', 4300, 5000, 15, 5, 10, 43000, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (399, 34, 1, 'Basreng Cobek', 1700, 2000, 12, 10, 2, 3400, 4000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (400, 34, 1, 'Cipeng', 800, 1000, 70, 4, 66, 52800, 66000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (401, 34, 1, 'Seblok', 4300, 5000, 8, 8, 0, 0, 0);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (402, 34, 2, 'Samosa', 800, 1000, 50, 22, 28, 22400, 28000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (403, 34, 1, 'Nasi Box', 4400, 5000, 22, 2, 20, 88000, 100000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (404, 34, 1, 'Basruk / Keripik Kaca', 2500, 3000, 50, 32, 18, 45000, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (405, 34, 1, 'Nutrisari', 2500, 3000, 50, 10, 40, 100000, 120000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (406, 34, 15, 'Puding', 1800, 2000, 16, 12, 4, 7200, 8000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (407, 34, 15, 'Sosis Mie', 2200, 2500, 20, 12, 8, 17600, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (408, 34, 15, 'Martabak Telor', 1800, 2000, 12, 0, 12, 21600, 24000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (409, 34, 15, 'Kue Sus', 1800, 2000, 10, 0, 10, 18000, 20000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (410, 33, 13, 'Seblak Cilok', 4800, 5000, 10, 3, 7, 33600, 35000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (411, 34, 13, 'Seblak Cilok', 4800, 5000, 10, 7, 3, 14400, 15000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (412, 34, 7, 'Keripik & Moring', 800, 1000, 30, 2, 28, 22400, 28000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (413, 34, 14, 'Pentol', 900, 1000, 200, 11, 189, 170100, 189000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (414, 34, 1, 'Siomay Baso Tahu', 800, 1000, 110, 64, 46, 36800, 46000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (415, 35, 12, 'Makaroni', 2500, 3000, 22, 2, 20, 50000, 60000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (416, 35, 11, 'Pie Susu', 1200, 2000, 50, 45, 5, 6000, 10000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (417, 35, 11, 'Pie Buah', 1600, 2000, 50, 47, 3, 4800, 6000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (418, 36, 6, 'Gehu', 1700, 2000, 25, 0, 25, 42500, 50000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (419, 36, 6, 'Nasi Uduk', 4500, 5000, 7, 1, 6, 27000, 30000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (420, 36, 6, 'Risol', 1200, 1500, 25, 0, 25, 30000, 37500);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (421, 36, 11, 'Kue Soes Buah', 1600, 2000, 34, 7, 27, 43200, 54000);
INSERT INTO `tbl_franchise_detail` (`id_franchise_detail`, `id_franchise`, `id_franchisor`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (422, 36, 11, 'Kue Soes Susu', 1200, 1500, 40, 16, 24, 28800, 36000);


#
# TABLE STRUCTURE FOR: tbl_franchisor
#

DROP TABLE IF EXISTS `tbl_franchisor`;

CREATE TABLE `tbl_franchisor` (
  `id_franchisor` int(11) NOT NULL AUTO_INCREMENT,
  `franchisor` varchar(125) NOT NULL,
  `whatsapp` varchar(128) NOT NULL,
  PRIMARY KEY (`id_franchisor`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (1, 'Pak Deri', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (2, 'Bu Dyah', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (3, 'Bu Siti Julaeha', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (4, 'Bu Tuti', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (5, 'Pak Anas', '85156334607');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (6, 'Pak Luky', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (7, 'Pak Arby', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (8, 'Reja TKJ 1', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (9, 'Fakih XI ATU', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (10, 'Ratna XI DG', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (11, 'Silvia', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (12, 'Vera XII ATPH 1', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (13, 'Naufal XII ATPH 2', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (14, 'APHP', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (15, 'Nira XII APL', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (16, 'Ani XI DG', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (17, 'Alya XII ATPH 1', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (18, 'Siti Rahma XI TKJ 3', '');
INSERT INTO `tbl_franchisor` (`id_franchisor`, `franchisor`, `whatsapp`) VALUES (19, 'Alika XI DG', '');


#
# TABLE STRUCTURE FOR: tbl_product
#

DROP TABLE IF EXISTS `tbl_product`;

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `product` varchar(128) NOT NULL,
  `qty` int(11) NOT NULL,
  `basic_price` int(100) NOT NULL,
  `selling_price` int(100) NOT NULL,
  `image` varchar(258) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (1, '', 1, 4, 'Cibodas Cup', 3, 315, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (2, 'SPW-002', 1, 4, 'La Vida Cup', 836, 292, 500, 'default-product1.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (3, 'SPW-003', 1, 4, 'Hexua Cup', 24, 281, 500, 'default-product3.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (4, 'SPW-004', 1, 4, 'SUI Botol 600 mL', 754, 1520, 2000, 'default-product2.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (6, '', 1, 4, 'Arvin Botol 600 mL', 0, 1500, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (7, 'SPW-007', 2, 4, 'Ale - Ale', 41, 792, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (8, 'SPW-008', 2, 4, 'Kiko', 118, 850, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (9, '', 2, 4, 'Koko Jelly Drink', 60, 1042, 1500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (10, 'SPW-010', 2, 4, 'Okky Jelly Drink', 58, 1042, 1500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (11, 'SPW-011', 2, 4, 'Teh Gelas', 45, 813, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (12, 'SPW-012', 2, 4, 'Teh Pucuk Harum', 0, 2271, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (13, 'SPW-013', 3, 4, 'Cocorio', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (14, 'SPW-014', 3, 4, 'Top Ice', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (15, 'SPW-015', 3, 4, 'Frenta', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (16, 'SPW-016', 4, 4, 'Beng-beng', 85, 1700, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (17, 'SPW-017', 4, 4, 'Better', 0, 890, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (18, 'SPW-018', 4, 4, 'Chiki Ball', 46, 900, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (19, 'SPW-019', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (20, 'SPW-020', 4, 4, 'Chitato Lite', 0, 1750, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (21, 'SPW-021', 4, 4, 'Choco Pie', 0, 1708, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (22, 'SPW-022', 4, 4, 'Chocolatos Roll', 33, 795, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (23, 'SPW-023', 4, 4, 'Dilan 5 in 1', 60, 1567, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (24, 'SPW-024', 4, 4, 'Garuda Pilus', 279, 425, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (25, 'SPW-025', 4, 4, 'Garuda Rosta', 58, 850, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (26, 'SPW-026', 4, 4, 'Gedy Malkist', 44, 440, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (27, 'SPW-027', 4, 4, 'Gery Wafer', 21, 1583, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (28, 'SPW-028', 4, 4, 'Good Time', 0, 875, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (29, 'SPW-029', 4, 4, 'Goriorio', 116, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (30, 'SPW-030', 4, 4, 'Kacang Koro', 40, 850, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (31, '', 4, 4, 'Kalpa', 84, 1867, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (32, 'SPW-032', 4, 4, 'Kenji colak colek', 0, 1750, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (33, '', 4, 4, 'Mie Shoer Kremez', 87, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (34, 'SPW-034', 4, 4, 'Moring', 0, 430, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (35, 'SPW-035', 4, 4, 'Nabati Aah', 194, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (36, 'SPW-036', 4, 4, 'Nabati Siip', 170, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (37, 'SPW-037', 4, 4, 'Nextar', 1, 1750, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (38, '', 4, 4, 'Oreo Soft Cake', 93, 1792, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (39, '', 4, 4, 'Roma Arden', 44, 1780, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (40, 'SPW-040', 4, 4, 'Roma Gandum', 0, 1734, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (41, 'SPW-041', 4, 4, 'Roma Malkist', 154, 900, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (42, 'SPW-042', 4, 4, 'Slai O\'Lai', 111, 1334, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (43, 'SPW-043', 4, 4, 'Sosis Sonice Sapi / Ayam', 34, 813, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (44, 'SPW-044', 4, 4, 'Timtam Maxi', 10, 875, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (45, 'SPW-045', 4, 4, 'Top Chocolate', 52, 812, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (46, 'SPW-046', 4, 4, 'Wafello', 6, 900, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (47, 'SPW-047', 5, 4, 'Alpenliebe', 40, 196, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (48, '', 5, 4, 'Kiss', 174, 120, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (49, 'SPW-049', 5, 4, 'Kopiko', 14, 120, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (50, 'SPW-050', 5, 4, 'Mint', 118, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (51, 'SPW-051', 5, 4, 'Relaxa', 140, 100, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (52, 'SPW-052', 7, 4, 'Indomie Ayam Bawang', 70, 2525, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (53, 'SPW-053', 7, 4, 'Indomie Goreng', 34, 2675, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (54, 'SPW-054', 7, 4, 'Mie Sedap Ayam Bawang', 87, 2363, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (55, 'SPW-055', 7, 4, 'Mie Sedap Goreng', 47, 2525, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (56, 'SPW-056', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (57, '', 8, 4, 'Ballpoint Standard AE7', 15, 1458, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (58, 'SPW-058', 8, 4, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (59, 'SPW-059', 8, 4, 'Buku Saku Tipis', 71, 900, 1500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (60, 'SPW-060', 8, 4, 'Glue Stick', 10, 2000, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (61, 'SPW-061', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (62, 'SPW-062', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (63, 'SPW-063', 8, 4, 'Penggaris 30 Cm', 8, 2000, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (64, 'SPW-064', 8, 4, 'Tip-Ex', 0, 2500, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (65, 'SPW-065', 9, 4, 'Mixagrip Per Butir', 23, 220, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (66, 'SPW-066', 9, 4, 'Hansaplast', 36, 225, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (67, 'SPW-067', 9, 4, 'Promaag', 14, 667, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (68, 'SPW-068', 10, 4, 'Laurier', 7, 430, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (69, 'SPW-069', 10, 4, 'Hers Protex', 17, 440, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (70, 'SPW-070', 10, 4, 'Charm', 26, 430, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (71, 'SPW-071', 10, 4, 'Tissue Tessa', 5, 2200, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (72, 'SPW-072', 10, 4, 'Minyak Sayur Promo 1 L', 0, 23750, 24000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (73, 'SPW-073', 10, 4, 'Mama Lemon 1000', 79, 875, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (74, 'SPW-074', 10, 4, 'Garam Jempol', 3, 1500, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (75, 'SPW-075', 10, 4, 'Kecap Bango', 1, 24300, 25000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (76, 'SPW-076', 10, 4, 'Saos Gembol', 5, 2500, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (77, 'SPW-077', 10, 4, 'Cuka 1000', 5, 1000, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (78, 'SPW-078', 2, 2, 'Pulpy Orange', 1, 3833, 4500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (79, 'SPW-079', 2, 2, 'Sprite Pet Seru 390 mL', 162, 3958, 4500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (80, 'SPW-080', 2, 2, 'Fanta Pet Seru 390 mL', 137, 3958, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (81, '', 2, 2, 'Sprite Pet Imut 250 mL', 81, 2375, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (82, '', 2, 2, 'Fanta Pet Imut 250 mL', 1, 2375, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (83, 'SPW-083', 2, 2, 'Coca Cola Pet Imut 250 mL', 71, 2375, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (85, 'SPW-085', 2, 2, 'Coca Cola Pet Seru 390 mL', 101, 3958, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (86, 'SPW-086', 2, 2, 'Nutriboost', 114, 5334, 7000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (87, 'SPW-087', 4, 4, 'Choki-Choki', 170, 900, 1500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (88, 'SPW-088', 4, 4, 'Top Delfi', 159, 813, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (89, 'SPW-089', 6, 1, 'AICE Markisa 55 mL', 50, 1550, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (90, 'SPW-090', 6, 1, 'AICE Miki-Miki 39 gr', 360, 1558, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (91, 'SPW-091', 6, 1, 'AICE Nanas Stick 65gr', 184, 1550, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (92, 'SPW-092', 6, 1, 'AICE Semangka Stick 65gr', 55, 1550, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (93, 'SPW-093', 6, 1, 'AICE Sweet Corn Stick New 52gr FIFA SS', 467, 2362, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (94, 'SPW-094', 6, 1, 'AICE Mochi Stick 30gr SP', 5, 2313, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (95, 'SPW-095', 6, 1, 'AICE Mochi Durian 45mL SP', 0, 2212, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (96, 'SPW-096', 6, 1, 'AICE 2 Colour Chocolate Stick 50 mL', 0, 1912, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (97, '', 6, 1, 'AICE Milk Melon 50gr', 203, 1913, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (98, 'SPW-098', 6, 1, 'AICE Blueberry Yogurt Stick 49 mL', 0, 2500, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (99, 'SPW-099', 6, 1, 'AICE Fruit Twister Stick 60 mL', 162, 2425, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (100, '', 6, 1, 'AICE Chocolate Crispy Stick 60gr', 141, 4000, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (101, 'SPW-101', 6, 1, 'AICE Strawberry Crispy Stick New', 310, 2750, 3500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (102, 'SPW-102', 6, 1, 'AICE Sundae Chocolate Cup 100 mL', 24, 4042, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (103, 'SPW-103', 6, 1, 'AICE Freezy Choco 49 mL', 0, 1560, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (104, '', 6, 1, 'AICE Bingo Cookies Cone 100 mL', 100, 4062, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (105, 'SPW-105', 5, 4, 'Bontea Green Lemon / Original', 103, 106, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (109, 'SPW-109', 5, 4, 'Relaxa', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (110, 'SPW-110', 5, 4, 'Yupi', 180, 138, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (111, 'SPW-111', 4, 4, 'Mio Fullo', 50, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (112, '', 4, 4, 'Garuda Katom', 54, 1254, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (113, '', 4, 4, 'Gery Salut Hazelnut / chocolate', 159, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (114, 'SPW-114', 4, 4, 'Gery Malkist Kelapa Coklat', 40, 850, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (115, 'SPW-115', 4, 4, 'Gery Salut Roll', 0, 0, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (116, 'SPW-116', 4, 4, 'Japota', 0, 0, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (117, 'SPW-117', 4, 4, 'Deka Kacang', 6, 880, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (118, 'SPW-118', 4, 4, 'Kacang Polong', 40, 840, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (119, 'SPW-119', 4, 4, 'Oishi Rinbee', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (120, 'SPW-120', 4, 4, 'Oreo Cream', 113, 1792, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (121, '', 4, 4, 'Roti Aoka', 16, 1800, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (122, 'SPW-122', 4, 4, 'Selimut', 16, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (123, 'SPW-123', 4, 4, 'Tiktak', 20, 840, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (124, 'SPW-124', 4, 4, 'Tiktuk Lingga Sari', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (125, 'SPW-125', 4, 4, 'Tanggo', 0, 0, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (126, '', 4, 4, 'Monde Serena Gold 25 gram', 14, 2200, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (127, 'SPW-127', 4, 4, 'Nabati Roll', 27, 375, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (128, 'SPW-128', 2, 4, 'Calpico', 112, 2050, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (129, 'SPW-129', 2, 4, 'Kopikap', 116, 821, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (130, 'SPW-130', 2, 4, 'Milku 200 mL', 16, 2700, 3500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (132, 'SPW-132', 10, 4, 'Mama Lemon 450 mL', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (133, 'SPW-133', 10, 4, 'Lavida', 0, 0, 0, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (134, '', 1, 4, 'Sui Cup 60 mL', 28, 281, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (135, '', 1, 4, 'Arvin Botol 600ml', 123, 958, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (136, '', 1, 4, 'Sui/Arvin Botol 600ml', 802, 958, 2000, 'IMG_20220824_074621.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (137, '', 6, 1, 'AICE Mochi Vanilla 30 gr', 111, 2313, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (138, '', 2, 2, 'Fanta Pet Seru 390 ml', 61, 3958, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (139, '', 6, 1, 'AICE 2 Colors Chocolate Stick 50ml', 164, 1912, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (140, '', 6, 1, 'AICE Bingo Cookies Cone 100ml', 51, 4062, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (141, '', 6, 1, 'AICE Blueberry Yoghurt Stick 49ml', 68, 1900, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (142, '', 6, 1, 'AICE Chocolate Crispy Stick 60g', 100, 4000, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (143, '', 6, 1, 'AICE Freezy Choco 49ml', 0, 1560, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (144, '', 6, 1, 'AICE Fruit Twister Stick 60ml', 228, 2425, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (145, '', 6, 1, 'AICE Milk 55ml', 5, 1940, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (146, '', 6, 1, 'AICE Miki-Miki 39g', 264, 1558, 2000, 'IMG_20220827_130747.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (147, '', 6, 1, 'AICE Milk Melon Stick 50g', 122, 1912, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (148, '', 6, 1, 'AICE Mochi Chocolate 45ml-SP', 52, 2313, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (149, '', 6, 1, 'AICE Mango Slush 30g', 0, 3017, 4000, 'IMG_20220827_131146.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (150, '', 6, 1, 'AICE Nanas Stick 65g', 108, 1550, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (151, '', 6, 1, 'AICE Semangka Stick 65g', 190, 1550, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (152, '', 6, 1, 'AICE Strawberry Crispy Stick New', 226, 2750, 3500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (153, '', 6, 1, 'AICE Sundae Strawberry Cup 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (154, '', 6, 1, 'AICE Sweet Corn Stick New 52g Fifa SS', 547, 2362, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (156, '', 6, 1, 'AICE Milk Melon Cone 100ml', 0, 4041, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (157, '', 6, 1, 'AICE Taro Crispy', 140, 2412, 3000, 'IMG_20220827_130709.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (158, '', 6, 1, 'AICE Choco Boost', 56, 4000, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (159, '', 6, 1, 'AICE Chocolate Max Cone', 52, 4062, 5000, 'IMG_20220827_130927.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (160, '', 6, 1, 'AICE Berry Max Cone', 7, 4062, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (161, '', 6, 1, 'AICE Choco Cookies', 0, 3600, 4500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (162, '', 6, 1, 'AICE Coffee Crispy', 0, 2750, 3500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (163, '', 2, 2, 'Fanta Pet Imut 250ml', 133, 2375, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (164, '', 2, 2, 'Coca-Cola Pet Seru 390ml', 95, 3958, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (165, '', 2, 2, 'Coca-Cola Pet Imut 250ml', 104, 2375, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (166, '', 2, 2, 'Frestea 350ml', 175, 3500, 4500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (167, '', 2, 2, 'Nutriboost', 134, 5333, 7000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (168, '', 2, 2, 'Pulpy Orange', 63, 3833, 4500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (169, '', 2, 2, 'Sprite Pet Imut 250ml', 100, 2375, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (170, '', 2, 2, 'Sprite Pet Seru 390ml', 86, 3958, 4500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (171, '', 1, 4, 'Cibodas Cup', 333, 315, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (172, '', 4, 4, 'LaVida Cup / SUI Cup', 570, 292, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (173, '', 2, 4, 'Ale-Ale', 48, 825, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (174, '', 3, 4, 'Kiko', 0, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (176, '', 2, 4, 'Okky Jelly Drink', 19, 792, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (177, '', 2, 4, 'Teh Gelas', 35, 813, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (178, '', 2, 4, 'Calpico 85ml / Calpis', 48, 2050, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (179, '', 2, 4, 'Milku 200ml', 0, 2583, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (180, '', 2, 4, 'Ultra 200ml', 55, 4300, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (181, '', 5, 4, 'Alpenliebe', 0, 200, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (182, '', 5, 4, 'Bontea Green', 339, 110, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (183, '', 5, 4, 'Kiss Mint Cherry 125 g', 50, 120, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (184, '', 5, 4, 'Kopiko Coffee Candy', 406, 170, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (185, '', 5, 4, 'Mintz', 86, 120, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (186, '', 5, 4, 'Relaxa', 50, 100, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (187, '', 5, 0, 'Yupi', 50, 138, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (188, '', 4, 4, 'Roti Aoka / Roti Coy', 85, 1800, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (189, '', 4, 4, 'Bengbeng', 199, 1706, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (190, '', 4, 4, 'Better', 41, 854, 1500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (191, '', 4, 4, 'Chiki Ball', 15, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (192, '', 4, 4, 'Chiki Twist', 0, 1750, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (193, '', 4, 4, 'Chitato Beef / Chitato Lite', 10, 1750, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (195, '', 4, 4, 'Chocolatos Roll 1000', 0, 795, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (196, '', 4, 4, 'Chocolatos Roll 500', 239, 450, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (197, '', 4, 4, 'Chocolatos Wafer Cream', 7, 900, 1500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (198, '', 4, 4, 'Choki Choki', 123, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (199, '', 4, 4, 'Dilan 5 in 1', 36, 1667, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (200, '', 4, 4, 'Garuda Kacang Kulit Besar', 0, 1850, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (201, '', 4, 4, 'Garuda Kacang Kulit Kecil', 0, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (202, '', 4, 4, 'Garuda Pilus', 196, 440, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (203, '', 4, 4, 'Garuda Kacang Atom', 3, 1850, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (204, '', 4, 4, 'Gery Malkist', 43, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (205, '', 4, 4, 'Gery Salut', 11, 446, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (206, '', 4, 4, 'Gery Odonut', 39, 438, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (207, '', 4, 4, 'Gery Wafer', 2, 1583, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (208, '', 4, 4, 'Good Time Rainbow Chocochip', 86, 875, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (209, '', 4, 4, 'Goriorio', 150, 450, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (210, '', 4, 4, 'Jetz Stick', 3, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (211, '', 4, 4, 'Kacang Koro', 20, 880, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (212, '', 4, 4, 'Kacang Polong', 0, 870, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (213, '', 4, 4, 'Kalpa', 87, 1792, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (214, '', 4, 4, 'Keju Cake', 82, 1792, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (215, '', 4, 4, 'Mie Shor Kremez', 122, 450, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (216, '', 4, 4, 'Fullo Pack Of Vanila Milk /Mio Fullo', 59, 730, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (217, '', 4, 4, 'Monde Serena 25 gram', 13, 2200, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (218, '', 4, 4, 'Mayasi Ala Kacang Jepang', 38, 875, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (219, '', 4, 4, 'Nabati Aah', 105, 450, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (220, '', 4, 4, 'Nabati Richoco', 24, 500, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (221, '', 4, 4, 'Nabati Siip', 136, 450, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (222, '', 4, 4, 'Nextar', 156, 1750, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (223, '', 4, 4, 'Oreo Cream', 107, 1792, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (224, '', 4, 4, 'Oreo Soft Cake', 35, 1792, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (225, '', 4, 4, 'Regal', 20, 930, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (226, '', 4, 4, 'Roma Sari Gandum Sandwich', 131, 1792, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (227, '', 4, 4, 'Roma Malkist / Abon', 33, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (228, '', 4, 4, 'Richeese Bisvit Selimut', 101, 450, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (229, '', 4, 4, 'Slai O\'Lai', 61, 1335, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (230, '', 4, 4, 'Sosis Sonice', 250, 813, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (231, '', 4, 4, 'Tango 1000', 30, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (232, '', 4, 4, 'Tiktak / Tictac', 0, 870, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (233, '', 10, 4, 'Royco Ayam', 26, 400, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (234, '', 4, 4, 'Timtam Maxi', 31, 875, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (236, '', 4, 4, 'Delfi Top Chocolate', 135, 813, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (237, '', 4, 4, 'Wafello', 7, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (238, '', 7, 4, 'Indomie Ayam Bawang', 31, 2525, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (239, '', 7, 4, 'Indomie Goreng', 0, 2675, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (240, '', 7, 4, 'Mie Sedap Ayam Bawang', 30, 2363, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (241, '', 7, 0, 'Mie Sedap Goreng', 0, 2525, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (242, '', 7, 4, 'Mie Sedap Soto', 0, 2525, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (243, '', 10, 4, 'Tissue Paseo 1000', 5, 800, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (244, '', 10, 4, 'Tissue Paseo 2500', 0, 2200, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (245, '', 10, 4, 'Polytex Spon Busa', 2, 2400, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (246, '', 4, 4, 'Iyes Kacang Oven Rasa Pedas', 10, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (247, '', 8, 4, 'Kertas HVS', 0, 85, 100, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (248, '', 8, 4, 'Kertas Polio', 0, 250, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (249, '', 8, 4, 'Tipe-Ex', 0, 2500, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (251, '', 10, 4, 'Softex Daun Sirih', 1, 225, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (252, '', 9, 4, 'Promaag / Butir', 0, 667, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (253, '', 10, 4, 'Charm', 69, 430, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (254, '', 10, 4, 'Cuka 1500', 6, 1000, 1500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (255, '', 10, 4, 'Garam Jempol', 0, 1500, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (256, '', 10, 4, 'Hers Protex', 39, 440, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (257, '', 10, 4, 'Laurier', 0, 430, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (258, '', 10, 4, 'Mama Lemon 55ml', 22, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (259, '', 10, 4, 'Mama Lemon 450ml', 4, 8200, 10000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (260, '', 10, 4, 'Mama Lemon 115 ml', 14, 1750, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (261, '', 10, 4, 'Minyak Sayur Sedaap 1L', 0, 16700, 18000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (262, '', 10, 4, 'Saos Gembol', 6, 2500, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (263, '', 10, 4, 'Terigu Segitiga Curah 1kg', 10, 11000, 13000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (264, '', 10, 4, 'Tissue Tessa', 18, 1771, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (265, '', 4, 4, 'Biskuat Bolu', 24, 1792, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (267, '', 12, 4, 'Kapal Api Special Mix', 13, 1180, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (268, '', 12, 4, 'Good Day Mochacino', 27, 1130, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (269, '', 4, 4, 'Tango Walut', 47, 1140, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (270, '', 4, 4, 'Yoritos', 16, 1140, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (271, '', 4, 4, 'Taro Net Potato', 6, 1771, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (272, '', 4, 4, 'Pulpen Standard AE7', 11, 1625, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (273, '', 8, 4, 'Buku Big Boss 50 Lbr', 0, 4750, 6000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (274, '', 8, 4, 'Buku Saku Tipis', 0, 900, 1500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (275, '', 8, 4, 'Glue Stick', 0, 2000, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (276, '', 8, 4, 'Penggaris 30cm', 0, 2000, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (278, '', 9, 4, 'Hansaplast', 100, 285, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (279, '', 10, 4, 'Kecap Bango', 0, 24300, 25000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (280, '', 10, 4, 'Minyak Sayur Promo 1L', 0, 23750, 24000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (282, '', 4, 4, 'Gery Salut Chocolate Coconut', 7, 1583, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (283, '', 4, 4, 'Dua Kelinci Kacang Garing', 0, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (284, '', 4, 4, 'Tango Wafer 1000 Vanilla Delight ', 8, 840, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (285, '', 7, 4, 'Mie Sedap Goreng', 1, 2525, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (286, '', 10, 4, 'Tisu Paseo 1000', 41, 833, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (287, '', 10, 4, 'Tisu Paseo 3000', 15, 2200, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (289, '', 12, 4, 'Luwak White Coffee ', 48, 560, 1500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (290, '', 4, 4, 'Taro Seaweed 1000', 11, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (291, '', 6, 1, 'AICE Mochi Chocolate 45 ml', 185, 2313, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (292, '', 6, 1, 'AICE Melon Cone 100 ml', 0, 4041, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (293, '', 6, 1, 'AICE Choco Vanila Cup', 0, 3208, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (294, '', 6, 1, 'AICE Mochi Vanila 45 ml', 62, 2313, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (295, '', 2, 3, 'S-Tee Kotak 200 ml', 57, 1500, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (296, '', 2, 3, 'S-Tee Pet 390 ml', 18, 2083, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (297, '', 2, 3, 'Sosro Kotak 200 ml', 143, 2146, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (298, '', 2, 3, 'Sosro Kotak 330 ml', 33, 2625, 3500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (299, '', 2, 3, 'Fruitea Pet Apple 350 ml', 104, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (300, '', 2, 3, 'Fruitea Strawberry 350 ml', 71, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (301, '', 2, 3, 'Country Choice 250ml', 27, 4167, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (302, '', 2, 3, 'Tebs Lemon 300 ml', 29, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (303, '', 2, 3, 'Tebs MF 300 ml', 30, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (304, '', 1, 3, 'Prima 600 ml', 63, 1354, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (305, '', 1, 3, 'Prima 330 ml', 48, 1188, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (306, '', 1, 3, 'Prima Gelas', 48, 469, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (307, '', 2, 3, 'Tebs Kaleng 300 ml', 0, 3583, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (308, '', 2, 3, 'Teh Botol Kaleng 318 ml', 29, 3375, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (309, '', 2, 3, 'Fruitea Kaleng 300 ml', 0, 3375, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (310, '', 2, 3, 'Teh Botol Pet 350 ml', 50, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (311, '', 2, 3, 'Fruitea 500 ml', 15, 4750, 6000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (313, '', 5, 4, 'Blaster Choco Chocolate', 176, 130, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (314, '', 5, 4, 'Blaster Neopolitan', 168, 130, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (315, '', 4, 4, 'Nissin Lemonia Lemon Biskuit ', 4, 6200, 7000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (316, '', 1, 4, 'Larutan Cap Kaki 3', 22, 3300, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (317, '', 4, 4, 'Suki -Suki', 40, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (318, '', 6, 1, 'AICE Berry Choco Max Cone 100 ml', 62, 4063, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (319, '', 4, 4, 'Roma Slai Olai 2000 (32 gr)', 20, 1600, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (320, '', 5, 4, 'Blaster Chocolate', 207, 130, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (321, '', 5, 4, 'Blaster Neopolitan', 0, 130, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (322, '', 4, 4, 'Chocolatos Wafer Roll isi 24 pcs', 92, 450, 500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (323, '', 4, 4, 'Keju Cake Bolu Keju ', 195, 1750, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (324, '', 4, 4, 'Kacang Iyes', 36, 850, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (325, '', 12, 4, 'Max Tea Tarik', 13, 1690, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (326, '', 12, 4, 'Kapal Api Special Mix', 16, 1180, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (327, '', 12, 4, 'Good Day Mochacino', 12, 1130, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (328, '', 4, 4, 'Nissin Lemonia Lemon Biscuit', 0, 6200, 7000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (329, '', 4, 4, 'Richese Bisvit Selimut ', 0, 900, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (330, '', 2, 3, 'Fruitea Kotak 250ml', 2, 2920, 3500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (331, '', 2, 3, 'Teh Botol Sosro 450ml', 13, 5120, 6000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (332, '', 10, 4, 'Larutan Cap Kaki 3 Botol  200 ml', 0, 3300, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (333, '', 2, 3, 'Fruit Tea 230ml', 20, 1771, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (335, '', 6, 1, 'AICE Sundae Chocolate Cup 100 ml', 20, 4042, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (336, '', 10, 4, 'Minyak Minyakita', 2, 14000, 15000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (337, '', 6, 1, 'AICE Vanilla Chocolate Cup 90 ml', 12, 3208, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (338, '', 6, 1, 'AICE Mochi Chocolate 100ml', 0, 2313, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (339, '', 2, 2, 'Frestea 350ml', 50, 3500, 4500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (340, '', 2, 3, 'Fruitea Kotak Apel 250ml', 0, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (341, '', 2, 3, 'Fruitea Apel 230 ml', 65, 1771, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (342, '', 2, 4, 'Teh Pucuk Harum', 6, 2271, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (343, '', 2, 3, 'Fruit tea Pet Blackcurrant 350 ml', 20, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (344, '', 2, 3, 'Fruit tea Pet Lemon 350 ml', 12, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (345, '', 2, 3, 'Fruit tea Pet Freeze 350 ml', 12, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (346, '', 2, 3, 'Fruitea Blackcurrent 200ml', 22, 2146, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (347, '', 2, 3, 'Fruitea Lemon 250ml', 37, 2355, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (348, '', 2, 3, 'Fruit tea Apple 250 ml', 15, 2355, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (349, '', 2, 3, 'Fruitea Blackcurrent 250ml', 22, 2355, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (350, '', 2, 3, 'Fruitea Blackcurrent 318ml', 22, 3375, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (351, '', 4, 4, 'Wafello 2000 coklat/keju', 10, 1800, 2000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (352, '', 10, 4, 'Terigu Curah Segitiga 1kg', 9, 11000, 13000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (353, '', 10, 4, 'Tisu Paseo', 29, 2200, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (354, '', 4, 4, 'Garuda kacang kulit', 14, 880, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (355, '', 6, 1, 'AICE Chocolate Stick 40g', 4, 1940, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (356, '', 4, 4, 'Monde Serena 50 gram', 6, 4000, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (357, '', 5, 4, 'Tamarin', 83, 108, 250, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (358, 'SPW', 4, 4, 'Choki Choki Stick 2000', 24, 1733, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (359, 'SPW', 4, 4, 'Gery Malkist Keju ', 0, 6000, 8000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (360, 'SPW', 6, 1, 'AICE Manggo Slush 30g', 0, 3208, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (361, 'SPW', 6, 1, 'AICE Mango Slush Hi-C Stick 65g', 111, 3017, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (362, 'SPW', 4, 4, 'Taro 1000', 20, 900, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (363, 'SPW', 4, 4, 'Nabati Wafer Coklat/Keju', 11, 1800, 2500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (364, '', 10, 4, 'Minyak Resto 1 Liter', 12, 14167, 16500, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (365, 'SPW', 5, 4, 'Mentos', 50, 115, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (366, 'SPW', 5, 4, 'Lazery', 40, 150, 250, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (367, '', 4, 4, 'Monde Serena 50 gram', 20, 4000, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (368, 'SPW', 0, 3, 'Fruit Tea Strawberry 350 ml', 0, 3333, 4000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (369, 'SPW', 6, 1, 'AICE Mochi Klepon 45ml-SP', 40, 2363, 3000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (370, 'SPW', 6, 1, 'AICE Chocolate Max Cone 100ml', 48, 4063, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (371, 'SPW', 6, 1, 'AICE Sundae Strawberry Cup 100ml', 24, 4042, 5000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (372, 'SPW', 0, 0, 'Mama lemon 55 ml', 0, 812, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (373, 'SPW', 10, 4, 'Mama lemon 55 ml', 0, 812, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (374, '', 1, 4, 'AirCup 600 mL', 0, 958, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (375, 'SPW', 4, 4, 'Garuda Rosta', 30, 880, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (376, '', 4, 4, 'Koko Drink', 24, 1063, 1500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (377, 'SPW', 4, 4, 'Superstar Triple Chocolate ', 36, 900, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (378, 'SPW', 6, 1, 'AICE Markisa 55 ml', 300, 1550, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (379, 'SPW', 6, 1, 'AICE Es Jeruk 60 g', 150, 1560, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (380, '', 1, 4, 'Hexua/Bening gelas', 0, 292, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (381, '', 6, 1, 'AICE Mochi Durian 45 ml (FIFA EP) ', 40, 2313, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (382, 'SPW', 4, 4, 'Cloud 1000', 24, 900, 1000, 'default-product.jpg', 1, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (383, 'SPW', 4, 4, 'Garuda Kacang Atom Rasa Original 20 g', 20, 880, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (385, '', 9, 4, 'Mixagrip Flu per tablet', 4, 575, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (386, '', 9, 4, 'Mixagrip Flu dan Batuk Per tablet', 4, 613, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (387, 'SPW', 4, 4, 'Moring Bandung 1000', 60, 850, 1000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (388, 'SPW', 2, 3, 'Country Choice Kotak 250 ml', 24, 4167, 5000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (389, '', 2, 3, 'Fruitea Pet (botol) Apple 350 ml', 12, 3333, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (390, '', 2, 3, 'Fruitea Pet (botol)  Blackcurrant 500 ml', 12, 4790, 6000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (391, '', 2, 3, 'Fruitea Pet (botol)  Blackcurrant 350 ml', 12, 3333, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (392, '', 2, 3, 'Fruitea Botol Frezze 350 ml', 12, 3333, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (393, 'SPW', 2, 3, 'Fruitea Genggam Freeze 200 ml', 24, 2146, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (394, 'SPW', 2, 3, 'Fruitea Genggam Strawberry 200 ml ', 24, 2146, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (395, 'SPW', 2, 3, 'Fruitea Kotak Blackcurrant 250 ml', 24, 2354, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (396, 'SPW', 2, 3, 'Fruitea Kotak Lemon 250 ml', 24, 2354, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (397, 'SPW', 2, 3, 'Prima Botol 330ml', 48, 1186, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (398, 'SPW', 2, 3, 'Prima Gelas 220ml', 96, 448, 500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (399, '', 2, 3, 'S-tee Botol 390ml', 24, 2083, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (400, 'SPW', 2, 3, 'S-tee Kotak 200ml', 48, 1500, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (401, '', 2, 3, 'Teh Botol Original 350ml', 36, 3333, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (402, '', 2, 3, 'Teh Botol Original 450ml', 12, 4792, 6000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (403, '', 2, 3, 'Teh Botol Kotak 200ml', 24, 2145, 3000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (404, '', 2, 3, 'Teh Botol Kotak 330ml', 24, 2625, 3500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (405, 'SPW', 2, 3, 'Teh Botol Kaleng 318ml', 24, 3375, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (406, 'SPW', 2, 3, 'Tebs Kaleng 330ml', 24, 3583, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (407, 'SPW', 2, 3, 'Tebs Botol Mix Fruit 300ml', 12, 3333, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (408, 'SPW', 2, 3, 'Tebs Sparkling 300ml', 24, 3333, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (409, 'SPW', 2, 3, 'Fruitea Kaleng 318 ml', 24, 3375, 4000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (410, 'SPW', 2, 3, 'Fruitea Pouch Apple 230ml', 24, 1771, 2000, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (411, 'SPW', 2, 3, 'Fruitea Pouch Blackcurrant 230ml', 24, 1771, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (412, 'SPW', 2, 3, 'Prima Botol 600 ml', 48, 1354, 2500, 'default-product.jpg', 2, 1);
INSERT INTO `tbl_product` (`id_product`, `code`, `id_category`, `id_place`, `product`, `qty`, `basic_price`, `selling_price`, `image`, `id_lab`, `is_active`) VALUES (413, '', 6, 1, 'AICE Mochi Klepon 45ml', 40, 2362, 3000, 'default-product.jpg', 2, 1);


#
# TABLE STRUCTURE FOR: tbl_product_categories
#

DROP TABLE IF EXISTS `tbl_product_categories`;

CREATE TABLE `tbl_product_categories` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(128) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (1, 'Air Mineral');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (2, 'Minuman Berperisa');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (3, 'Minuman Serbuk');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (4, 'Snack');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (5, 'Permen');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (6, 'Ice Cream');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (7, 'Mie');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (8, 'ATK');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (9, 'Obat-obatan');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (10, 'Lainnya');
INSERT INTO `tbl_product_categories` (`id_category`, `category`) VALUES (12, 'Kopi');


#
# TABLE STRUCTURE FOR: tbl_product_place
#

DROP TABLE IF EXISTS `tbl_product_place`;

CREATE TABLE `tbl_product_place` (
  `id_place` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(125) NOT NULL,
  PRIMARY KEY (`id_place`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_product_place` (`id_place`, `place`) VALUES (1, 'Es Krim (AICE)');
INSERT INTO `tbl_product_place` (`id_place`, `place`) VALUES (2, 'Showcase Coca-Cola');
INSERT INTO `tbl_product_place` (`id_place`, `place`) VALUES (3, 'Showcase Sosro');
INSERT INTO `tbl_product_place` (`id_place`, `place`) VALUES (4, 'Etalase');


#
# TABLE STRUCTURE FOR: tbl_purchase
#

DROP TABLE IF EXISTS `tbl_purchase`;

CREATE TABLE `tbl_purchase` (
  `id_purchase` int(11) NOT NULL AUTO_INCREMENT,
  `date_purchasing` date NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL,
  PRIMARY KEY (`id_purchase`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (10, '2022-08-29', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (11, '2022-08-29', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (12, '2022-08-29', 1, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (13, '2022-08-30', 1, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (14, '2022-08-31', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (15, '2022-09-01', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (16, '2022-08-31', 3, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (17, '2022-09-01', 5, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (18, '2022-09-01', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (19, '2022-09-05', 3, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (20, '2022-09-05', 5, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (21, '2022-09-05', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (22, '2022-09-05', 4, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (23, '2022-09-05', 1, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (24, '2022-09-07', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (25, '2022-09-08', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (26, '2022-09-12', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (27, '2022-09-12', 5, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (28, '2022-09-08', 3, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (29, '2022-09-14', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (30, '2022-09-14', 1, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (31, '2022-09-14', 5, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (32, '2022-09-08', 1, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (33, '2022-09-14', 4, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (34, '2022-09-14', 3, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (35, '2022-09-14', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (36, '2022-09-19', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (37, '2022-09-20', 3, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (38, '2022-09-20', 1, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (39, '2022-09-20', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (40, '2022-09-20', 5, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (41, '2022-09-21', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (42, '2022-09-21', 5, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (43, '2022-09-21', 5, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (44, '2022-09-23', 3, 5, 1);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (45, '2022-09-23', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (46, '2022-09-26', 1, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (47, '2022-09-27', 4, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (48, '2022-09-28', 5, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (49, '2022-09-29', 3, 4, 2);
INSERT INTO `tbl_purchase` (`id_purchase`, `date_purchasing`, `id_supplier`, `id_user`, `id_lab`) VALUES (50, '2022-10-03', 1, 4, 2);


#
# TABLE STRUCTURE FOR: tbl_purchase_detail
#

DROP TABLE IF EXISTS `tbl_purchase_detail`;

CREATE TABLE `tbl_purchase_detail` (
  `id_purchase_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_purchase` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `basic_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`id_purchase_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (24, 10, 141, 100, 1900, 190000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (25, 10, 157, 40, 2412, 96480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (26, 10, 139, 80, 1912, 152960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (27, 10, 154, 120, 2362, 283440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (28, 10, 149, 60, 3017, 181020);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (29, 10, 146, 60, 1558, 93480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (30, 10, 151, 50, 1540, 77000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (31, 10, 150, 50, 1540, 77000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (32, 10, 152, 40, 2750, 110000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (33, 11, 188, 15, 1800, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (34, 11, 230, 96, 813, 78048);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (35, 11, 313, 50, 130, 6500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (36, 11, 314, 50, 130, 6500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (37, 11, 182, 100, 104, 10400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (38, 11, 196, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (39, 11, 198, 40, 870, 34800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (40, 11, 189, 51, 1700, 86700);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (41, 11, 236, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (42, 11, 209, 60, 450, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (43, 11, 213, 24, 1817, 43608);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (44, 11, 214, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (45, 11, 246, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (46, 11, 215, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (47, 11, 217, 10, 2000, 20000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (48, 11, 222, 20, 1750, 35000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (49, 11, 315, 2, 6200, 12400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (50, 11, 223, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (51, 11, 224, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (52, 11, 229, 24, 1335, 32040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (53, 12, 43, 96, 813, 78048);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (54, 12, 47, 40, 196, 7840);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (55, 12, 134, 96, 281, 26976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (56, 12, 4, 240, 1520, 364800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (57, 12, 105, 100, 106, 10600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (58, 12, 88, 48, 804, 38592);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (59, 12, 16, 51, 1700, 86700);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (60, 12, 121, 15, 1800, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (62, 11, 202, 40, 425, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (63, 11, 228, 40, 425, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (65, 11, 316, 10, 3300, 33000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (66, 11, 317, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (67, 11, 172, 96, 281, 26976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (68, 11, 136, 240, 958, 229920);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (69, 13, 79, 120, 3958, 474960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (70, 13, 81, 60, 2375, 142500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (71, 13, 80, 60, 3958, 237480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (72, 13, 82, 60, 2375, 142500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (73, 13, 83, 60, 2375, 142500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (74, 13, 85, 60, 3958, 237480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (75, 12, 87, 40, 900, 36000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (76, 12, 120, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (77, 12, 38, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (78, 12, 37, 20, 1750, 35000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (79, 12, 123, 20, 840, 16800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (80, 12, 29, 60, 450, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (81, 12, 31, 24, 1667, 40008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (82, 12, 126, 10, 2000, 20000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (83, 12, 33, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (84, 12, 18, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (85, 12, 319, 20, 1600, 32000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (86, 14, 152, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (87, 14, 154, 80, 2362, 188960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (89, 14, 147, 40, 1912, 76480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (90, 14, 150, 50, 1540, 77000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (92, 14, 335, 24, 4042, 97008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (93, 16, 92, 50, 1540, 77000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (94, 16, 101, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (95, 16, 91, 50, 1540, 77000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (96, 16, 93, 120, 3500, 420000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (97, 16, 97, 80, 1912, 152960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (98, 16, 90, 60, 1558, 93480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (100, 16, 291, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (101, 16, 294, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (102, 16, 318, 72, 4063, 292536);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (103, 16, 102, 24, 4041, 96984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (104, 15, 336, 5, 14000, 70000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (105, 15, 188, 10, 1800, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (106, 15, 191, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (107, 15, 196, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (108, 15, 208, 24, 875, 21000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (109, 15, 213, 12, 1817, 21804);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (110, 15, 210, 10, 900, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (111, 15, 215, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (112, 15, 222, 20, 1750, 35000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (113, 15, 223, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (114, 15, 281, 12, 1791, 21492);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (115, 15, 229, 24, 1335, 32040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (116, 15, 230, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (117, 15, 234, 12, 875, 10500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (118, 15, 136, 48, 958, 45984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (119, 15, 216, 48, 446, 21408);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (120, 17, 166, 240, 3500, 840000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (121, 18, 144, 160, 2425, 388000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (122, 18, 148, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (123, 18, 160, 24, 4062, 97488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (124, 18, 159, 24, 4062, 97488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (125, 18, 140, 48, 4062, 194976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (126, 18, 154, 80, 2362, 188960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (127, 18, 146, 60, 1558, 93480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (128, 18, 137, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (129, 18, 337, 48, 3208, 153984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (130, 20, 168, 36, 3833, 137988);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (131, 19, 92, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (132, 20, 167, 24, 5333, 127992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (133, 19, 101, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (134, 19, 91, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (135, 19, 93, 120, 2362, 283440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (136, 20, 170, 36, 3958, 142488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (137, 19, 97, 80, 1913, 153040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (138, 19, 90, 60, 1558, 93480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (139, 19, 94, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (140, 19, 291, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (141, 20, 165, 36, 2375, 85500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (142, 20, 163, 36, 2375, 85500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (143, 19, 102, 24, 4042, 97008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (144, 19, 99, 40, 2425, 97000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (145, 21, 188, 25, 1800, 45000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (146, 21, 230, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (147, 21, 182, 150, 106, 15900);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (148, 21, 184, 150, 170, 25500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (149, 21, 189, 17, 1710, 29070);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (150, 21, 189, 34, 1700, 57800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (151, 21, 211, 20, 880, 17600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (152, 21, 213, 24, 1817, 43608);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (153, 21, 217, 5, 2000, 10000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (154, 21, 219, 60, 450, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (155, 21, 221, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (156, 21, 221, 40, 425, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (157, 21, 222, 20, 1750, 35000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (158, 21, 227, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (159, 21, 281, 24, 1791, 42984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (160, 21, 230, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (161, 21, 177, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (162, 22, 295, 48, 1500, 72000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (163, 22, 296, 24, 2083, 49992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (164, 22, 297, 48, 2146, 103008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (165, 22, 298, 48, 2625, 126000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (166, 22, 299, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (167, 22, 343, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (168, 22, 344, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (169, 22, 345, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (170, 22, 346, 24, 2146, 51504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (171, 22, 300, 24, 2146, 51504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (172, 22, 301, 24, 4167, 100008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (173, 22, 302, 24, 3333, 79992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (174, 22, 303, 24, 3333, 79992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (175, 22, 304, 48, 1354, 64992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (176, 22, 308, 24, 3375, 81000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (177, 22, 310, 48, 3333, 159984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (178, 22, 348, 24, 2355, 56520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (179, 22, 347, 24, 2355, 56520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (180, 22, 349, 24, 2355, 56520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (181, 22, 341, 24, 1771, 42504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (182, 22, 331, 12, 5120, 61440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (183, 22, 350, 24, 3375, 81000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (184, 23, 76, 5, 2500, 12500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (185, 23, 53, 10, 2675, 26750);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (186, 23, 52, 10, 2525, 25250);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (187, 23, 55, 10, 2525, 25250);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (188, 23, 54, 10, 2363, 23630);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (189, 23, 121, 5, 1800, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (190, 23, 105, 100, 106, 10600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (191, 23, 322, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (192, 23, 48, 100, 120, 12000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (193, 23, 110, 100, 138, 13800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (194, 23, 18, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (195, 23, 88, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (196, 23, 111, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (197, 23, 25, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (198, 23, 113, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (199, 23, 29, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (200, 23, 117, 20, 880, 17600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (201, 23, 324, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (202, 23, 31, 24, 1667, 40008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (203, 23, 33, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (204, 23, 126, 10, 2000, 20000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (205, 23, 35, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (206, 23, 35, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (207, 23, 36, 80, 450, 36000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (208, 23, 351, 10, 1800, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (209, 23, 120, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (210, 23, 120, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (211, 23, 120, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (212, 23, 38, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (213, 23, 24, 60, 425, 25500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (214, 23, 39, 20, 1780, 35600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (215, 23, 41, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (216, 23, 127, 40, 375, 15000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (217, 23, 130, 10, 2700, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (218, 23, 11, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (219, 23, 2, 240, 292, 70080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (220, 23, 4, 240, 1520, 364800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (221, 23, 69, 20, 440, 8800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (222, 23, 353, 10, 2200, 22000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (223, 23, 352, 10, 11000, 110000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (224, 24, 157, 80, 2412, 192960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (225, 24, 140, 24, 4062, 97488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (226, 24, 139, 80, 1912, 152960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (227, 24, 154, 120, 2362, 283440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (228, 24, 141, 100, 1900, 190000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (229, 24, 146, 120, 1558, 186960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (230, 24, 158, 40, 4000, 160000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (231, 24, 152, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (232, 24, 150, 100, 1540, 154000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (233, 24, 151, 100, 1540, 154000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (234, 24, 355, 50, 1940, 97000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (235, 21, 263, 10, 11000, 110000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (236, 21, 189, 34, 1710, 58140);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (237, 21, 281, 12, 1791, 21492);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (238, 21, 172, 240, 292, 70080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (239, 21, 136, 360, 958, 344880);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (240, 25, 188, 16, 1800, 28800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (241, 25, 313, 50, 130, 6500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (242, 25, 196, 72, 450, 32400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (243, 25, 185, 100, 120, 12000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (244, 25, 357, 50, 120, 6000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (245, 25, 209, 20, 450, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (246, 25, 222, 60, 1750, 105000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (247, 25, 223, 48, 1750, 84000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (248, 25, 228, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (249, 25, 226, 12, 1792, 21504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (250, 25, 237, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (251, 25, 253, 30, 430, 12900);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (252, 26, 188, 30, 1800, 54000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (253, 26, 230, 100, 813, 81300);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (254, 26, 189, 34, 1710, 58140);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (255, 26, 190, 30, 854, 25620);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (256, 26, 224, 36, 1792, 64512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (257, 26, 203, 10, 1850, 18500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (258, 26, 206, 48, 438, 21024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (260, 26, 208, 48, 875, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (261, 26, 209, 20, 450, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (262, 26, 213, 24, 1817, 43608);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (263, 26, 214, 12, 1792, 21504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (264, 26, 218, 40, 875, 35000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (265, 26, 356, 10, 3700, 37000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (266, 26, 222, 30, 1750, 52500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (267, 26, 229, 24, 1335, 32040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (268, 26, 226, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (269, 26, 268, 20, 1130, 22600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (270, 26, 267, 10, 1180, 11800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (271, 26, 289, 40, 560, 22400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (272, 26, 136, 96, 958, 91968);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (273, 26, 272, 12, 1625, 19500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (274, 26, 204, 40, 850, 34000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (275, 26, 358, 24, 1733, 41592);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (276, 27, 164, 36, 3958, 142488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (277, 27, 170, 36, 3958, 142488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (278, 27, 138, 36, 3958, 142488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (279, 27, 169, 24, 2375, 57000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (280, 27, 163, 24, 2375, 57000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (281, 27, 165, 24, 2375, 57000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (282, 27, 168, 24, 3833, 91992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (283, 27, 167, 24, 5333, 127992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (284, 28, 92, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (285, 28, 101, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (286, 28, 91, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (287, 28, 93, 120, 2362, 283440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (288, 28, 97, 80, 1913, 153040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (289, 28, 90, 60, 1558, 93480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (290, 28, 294, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (291, 28, 291, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (292, 28, 104, 48, 4062, 194976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (293, 28, 102, 24, 4042, 97008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (294, 28, 100, 40, 4000, 160000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (295, 28, 361, 30, 3017, 90510);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (296, 29, 188, 25, 1800, 45000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (297, 29, 214, 12, 1792, 21504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (298, 29, 199, 24, 1667, 40008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (299, 29, 208, 12, 875, 10500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (300, 29, 209, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (301, 29, 213, 24, 1817, 43608);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (302, 29, 214, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (303, 29, 222, 20, 1750, 35000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (304, 29, 226, 36, 1792, 64512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (305, 29, 180, 15, 4300, 64500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (306, 29, 136, 120, 958, 114960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (307, 32, 121, 5, 1800, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (308, 32, 320, 100, 130, 13000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (309, 32, 22, 48, 795, 38160);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (310, 32, 48, 100, 120, 12000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (311, 32, 110, 100, 138, 13800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (312, 32, 111, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (313, 32, 25, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (314, 32, 113, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (315, 32, 29, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (316, 32, 354, 20, 880, 17600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (317, 32, 112, 20, 1254, 25080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (318, 32, 324, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (319, 32, 31, 24, 1667, 40008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (320, 32, 126, 11, 2000, 22000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (321, 32, 120, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (322, 32, 38, 24, 1750, 42000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (323, 32, 24, 60, 425, 25500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (324, 32, 39, 20, 1780, 35600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (325, 32, 41, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (326, 32, 130, 10, 2700, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (327, 32, 11, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (328, 32, 2, 240, 292, 70080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (329, 32, 4, 240, 1520, 364800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (330, 31, 83, 12, 2375, 28500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (331, 31, 81, 84, 2375, 199500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (332, 31, 80, 132, 3958, 522456);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (333, 31, 79, 72, 3958, 284976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (334, 31, 85, 48, 3958, 189984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (335, 31, 339, 48, 3500, 168000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (336, 31, 78, 12, 3833, 45996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (337, 31, 86, 72, 5333, 383976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (338, 32, 363, 11, 1800, 19800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (339, 32, 362, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (340, 30, 364, 12, 14167, 170004);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (341, 30, 121, 5, 1800, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (342, 30, 322, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (343, 30, 48, 50, 120, 6000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (344, 30, 110, 50, 138, 6900);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (345, 30, 18, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (346, 30, 23, 24, 1567, 37608);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (347, 30, 25, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (348, 30, 113, 72, 450, 32400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (349, 30, 114, 40, 850, 34000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (350, 30, 29, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (351, 30, 30, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (352, 30, 118, 20, 840, 16800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (353, 30, 31, 24, 1867, 44808);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (354, 30, 33, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (355, 30, 35, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (356, 30, 36, 80, 450, 36000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (357, 30, 120, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (358, 30, 38, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (359, 30, 24, 60, 425, 25500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (360, 30, 39, 20, 1780, 35600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (361, 30, 41, 60, 900, 54000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (362, 30, 9, 48, 1042, 50016);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (363, 30, 130, 10, 2700, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (364, 30, 10, 48, 1042, 50016);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (365, 30, 73, 72, 875, 63000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (366, 30, 2, 240, 292, 70080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (367, 30, 4, 240, 1520, 364800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (368, 30, 353, 10, 2200, 22000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (369, 30, 365, 50, 115, 5750);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (370, 30, 366, 40, 150, 6000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (371, 30, 367, 10, 3700, 37000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (372, 35, 157, 80, 2412, 192960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (373, 35, 159, 48, 4062, 194976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (374, 35, 139, 40, 1912, 76480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (375, 35, 154, 160, 2362, 377920);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (376, 35, 158, 40, 4000, 160000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (377, 35, 152, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (378, 35, 137, 80, 2313, 185040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (379, 35, 148, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (380, 33, 301, 24, 4167, 100008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (381, 33, 350, 24, 3375, 81000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (382, 33, 311, 12, 4750, 57000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (383, 33, 343, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (384, 33, 345, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (385, 33, 344, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (386, 33, 346, 24, 2146, 51504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (387, 33, 349, 24, 2355, 56520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (388, 33, 347, 24, 2355, 56520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (389, 33, 341, 24, 1771, 42504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (390, 33, 333, 24, 1771, 42504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (391, 33, 305, 48, 1188, 57024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (392, 33, 304, 48, 1354, 64992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (393, 33, 306, 48, 469, 22512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (394, 33, 296, 24, 2083, 49992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (395, 33, 295, 48, 1500, 72000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (396, 33, 310, 48, 3333, 159984);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (397, 33, 331, 12, 5120, 61440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (398, 33, 297, 48, 2146, 103008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (399, 33, 298, 48, 2625, 126000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (400, 33, 308, 24, 3375, 81000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (401, 33, 303, 24, 3333, 79992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (402, 33, 302, 24, 3333, 79992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (403, 33, 300, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (404, 34, 101, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (405, 34, 93, 80, 2362, 188960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (406, 34, 91, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (407, 34, 291, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (408, 34, 97, 40, 1913, 76520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (409, 34, 90, 60, 1558, 93480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (410, 34, 89, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (411, 34, 361, 30, 3017, 90510);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (412, 34, 369, 40, 2363, 94520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (413, 34, 370, 48, 4063, 195024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (414, 34, 371, 24, 4042, 97008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (415, 36, 188, 30, 1800, 54000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (416, 36, 196, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (417, 36, 183, 50, 120, 6000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (418, 36, 184, 100, 170, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (419, 36, 187, 50, 138, 6900);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (420, 36, 189, 34, 1706, 58004);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (421, 36, 191, 10, 900, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (422, 36, 236, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (423, 36, 216, 48, 730, 35040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (424, 36, 375, 20, 880, 17600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (425, 36, 215, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (426, 36, 226, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (427, 36, 230, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (428, 36, 173, 48, 825, 39600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (429, 36, 278, 100, 285, 28500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (430, 36, 258, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (431, 36, 260, 10, 1750, 17500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (432, 36, 376, 24, 1063, 25512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (433, 29, 377, 12, 875, 10500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (434, 37, 91, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (435, 37, 101, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (436, 37, 93, 120, 2362, 283440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (437, 37, 97, 40, 1913, 76520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (438, 37, 90, 120, 1558, 186960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (439, 37, 291, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (440, 37, 99, 80, 2425, 194000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (441, 37, 361, 30, 3017, 90510);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (442, 39, 378, 150, 1550, 232500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (443, 39, 151, 150, 1550, 232500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (444, 39, 150, 100, 1550, 155000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (445, 39, 146, 120, 1558, 186960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (446, 39, 144, 40, 2425, 97000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (447, 39, 379, 150, 1560, 234000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (448, 39, 152, 40, 2750, 110000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (449, 39, 154, 80, 2362, 188960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (450, 40, 169, 48, 2375, 114000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (451, 40, 163, 48, 2375, 114000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (452, 40, 165, 60, 2375, 142500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (453, 40, 170, 12, 3958, 47496);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (454, 40, 164, 12, 3958, 47496);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (455, 40, 167, 24, 5333, 127992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (456, 40, 138, 12, 3958, 47496);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (457, 40, 168, 12, 3833, 45996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (458, 41, 188, 10, 1800, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (459, 41, 180, 10, 4300, 43000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (460, 41, 316, 12, 3300, 39600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (461, 41, 180, 10, 4300, 43000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (462, 41, 136, 240, 958, 229920);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (463, 41, 180, 5, 4300, 21500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (464, 41, 172, 240, 292, 70080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (465, 42, 168, 12, 3833, 45996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (466, 42, 170, 24, 3958, 94992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (467, 42, 166, 36, 3500, 126000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (468, 42, 138, 24, 3958, 94992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (469, 42, 167, 24, 5333, 127992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (470, 42, 164, 36, 3958, 142488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (471, 44, 101, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (472, 44, 91, 50, 1550, 77500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (473, 44, 93, 120, 2362, 283440);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (474, 44, 97, 40, 1913, 76520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (475, 44, 90, 120, 1558, 186960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (476, 44, 291, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (477, 44, 99, 80, 2425, 194000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (478, 44, 361, 30, 3017, 90510);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (479, 44, 100, 40, 4000, 160000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (480, 45, 144, 160, 2425, 388000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (481, 45, 147, 80, 1912, 152960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (482, 45, 142, 40, 4000, 160000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (483, 45, 381, 40, 2313, 92520);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (484, 43, 339, 48, 3500, 168000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (485, 43, 86, 48, 5334, 256032);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (486, 43, 83, 48, 2375, 114000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (487, 43, 85, 36, 3958, 142488);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (488, 43, 81, 36, 2375, 85500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (489, 43, 79, 24, 3958, 94992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (490, 38, 320, 100, 130, 13000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (491, 38, 121, 5, 1800, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (492, 38, 322, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (493, 38, 48, 50, 120, 6000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (494, 38, 110, 50, 138, 6900);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (495, 38, 18, 20, 900, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (496, 38, 88, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (497, 38, 23, 24, 1567, 37608);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (498, 38, 25, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (499, 38, 113, 72, 450, 32400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (500, 38, 26, 40, 440, 17600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (501, 38, 29, 20, 450, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (502, 38, 30, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (503, 38, 118, 20, 840, 16800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (504, 38, 31, 24, 1867, 44808);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (505, 38, 33, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (506, 38, 367, 10, 4000, 40000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (507, 38, 122, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (508, 38, 36, 80, 450, 36000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (509, 38, 120, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (510, 38, 38, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (511, 38, 24, 60, 425, 25500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (512, 38, 39, 20, 1780, 35600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (513, 38, 41, 60, 900, 54000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (514, 38, 382, 24, 900, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (515, 38, 2, 240, 292, 70080);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (516, 38, 4, 240, 1520, 364800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (517, 38, 353, 10, 2200, 22000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (518, 46, 230, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (519, 46, 313, 50, 130, 6500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (520, 46, 182, 100, 110, 11000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (521, 46, 196, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (522, 46, 198, 60, 900, 54000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (523, 46, 184, 100, 170, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (524, 46, 189, 34, 1706, 58004);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (525, 46, 236, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (526, 46, 383, 20, 880, 17600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (527, 46, 375, 10, 880, 8800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (528, 46, 208, 24, 875, 21000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (529, 46, 384, 12, 875, 10500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (530, 46, 209, 20, 450, 9000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (531, 46, 213, 12, 1792, 21504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (532, 46, 227, 20, 850, 17000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (533, 46, 215, 24, 450, 10800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (534, 46, 219, 60, 450, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (535, 46, 221, 80, 450, 36000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (536, 46, 223, 12, 1792, 21504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (537, 46, 202, 20, 440, 8800);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (538, 46, 226, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (539, 46, 229, 24, 1335, 32040);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (540, 46, 230, 48, 813, 39024);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (541, 46, 230, 24, 813, 19512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (542, 46, 234, 24, 875, 21000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (543, 46, 180, 15, 4300, 64500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (544, 46, 136, 72, 958, 68976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (545, 46, 385, 4, 575, 2300);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (546, 46, 386, 4, 613, 2452);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (547, 46, 286, 18, 833, 14994);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (548, 46, 287, 10, 2200, 22000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (549, 46, 168, 12, 3833, 45996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (550, 46, 387, 10, 850, 8500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (551, 47, 388, 24, 4167, 100008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (552, 47, 409, 24, 3375, 81000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (553, 48, 169, 48, 2375, 114000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (554, 48, 163, 36, 2375, 85500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (555, 48, 165, 12, 2375, 28500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (556, 48, 164, 12, 3958, 47496);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (557, 48, 167, 36, 5333, 191988);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (558, 47, 389, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (559, 47, 390, 12, 4790, 57480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (560, 47, 391, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (561, 47, 392, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (562, 47, 393, 24, 2146, 51504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (563, 47, 394, 24, 2146, 51504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (564, 47, 395, 24, 2354, 56496);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (565, 47, 396, 24, 2354, 56496);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (566, 47, 410, 24, 1771, 42504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (567, 47, 411, 24, 1771, 42504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (568, 47, 397, 48, 1186, 56928);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (569, 47, 412, 48, 1354, 64992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (570, 47, 398, 96, 448, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (571, 47, 399, 24, 2083, 49992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (572, 47, 400, 48, 1500, 72000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (573, 47, 401, 36, 3333, 119988);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (574, 47, 402, 12, 4792, 57504);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (575, 47, 403, 24, 2145, 51480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (576, 47, 404, 24, 2625, 63000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (577, 47, 405, 24, 3375, 81000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (578, 47, 406, 24, 3583, 85992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (579, 47, 408, 24, 3333, 79992);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (580, 47, 407, 12, 3333, 39996);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (581, 49, 157, 40, 2412, 96480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (582, 49, 140, 48, 4062, 194976);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (583, 49, 139, 80, 1912, 152960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (584, 49, 154, 160, 2362, 377920);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (585, 49, 152, 80, 2750, 220000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (586, 49, 146, 120, 1558, 186960);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (587, 49, 142, 40, 4000, 160000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (588, 49, 413, 40, 2362, 94480);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (589, 50, 357, 50, 108, 5400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (590, 50, 314, 50, 130, 6500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (591, 50, 182, 100, 110, 11000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (592, 50, 196, 72, 450, 32400);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (593, 50, 198, 40, 900, 36000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (594, 50, 184, 150, 170, 25500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (595, 50, 185, 50, 120, 6000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (596, 50, 377, 24, 900, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (597, 50, 189, 51, 1706, 87006);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (598, 50, 193, 10, 1750, 17500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (599, 50, 209, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (600, 50, 213, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (601, 50, 214, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (602, 50, 215, 48, 450, 21600);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (603, 50, 387, 50, 850, 42500);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (604, 50, 222, 40, 1750, 70000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (605, 50, 223, 36, 1792, 64512);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (606, 50, 265, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (607, 50, 202, 80, 440, 35200);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (608, 50, 228, 40, 450, 18000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (609, 50, 226, 24, 1792, 43008);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (610, 50, 231, 30, 900, 27000);
INSERT INTO `tbl_purchase_detail` (`id_purchase_detail`, `id_purchase`, `id_product`, `qty_product`, `basic_price`, `total_price`) VALUES (611, 50, 202, 40, 440, 17600);


#
# TABLE STRUCTURE FOR: tbl_schedule
#

DROP TABLE IF EXISTS `tbl_schedule`;

CREATE TABLE `tbl_schedule` (
  `id_schedule` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `picket_schedule` date NOT NULL,
  PRIMARY KEY (`id_schedule`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (12, 9, 9, '2022-09-19');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (13, 2, 1, '2022-09-20');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (14, 5, 4, '2022-09-21');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (15, 9, 22, '2022-09-22');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (16, 13, 17, '2022-09-23');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (17, 7, 13, '2022-09-26');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (18, 13, 16, '2022-09-27');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (19, 10, 23, '2022-09-28');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (20, 5, 5, '2022-09-29');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (21, 6, 22, '2022-09-30');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (22, 10, 12, '2022-10-03');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (23, 11, 6, '2022-10-04');
INSERT INTO `tbl_schedule` (`id_schedule`, `id_user`, `id_class`, `picket_schedule`) VALUES (24, 11, 7, '2022-10-05');


#
# TABLE STRUCTURE FOR: tbl_selling
#

DROP TABLE IF EXISTS `tbl_selling`;

CREATE TABLE `tbl_selling` (
  `id_selling` int(11) NOT NULL AUTO_INCREMENT,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL,
  PRIMARY KEY (`id_selling`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (14, '2022-08-29', 7, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (15, '2022-08-29', 7, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (16, '2022-08-30', 13, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (17, '2022-08-30', 13, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (18, '2022-08-31', 11, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (19, '2022-08-31', 11, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (20, '2022-09-01', 6, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (21, '2022-09-01', 6, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (22, '2022-09-02', 9, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (23, '2022-09-02', 9, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (24, '2022-09-05', 4, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (25, '2022-09-05', 4, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (26, '2022-09-06', 12, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (27, '2022-09-06', 12, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (28, '2022-09-07', 3, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (29, '2022-09-07', 3, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (30, '2022-09-09', 6, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (31, '2022-09-09', 6, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (32, '2022-09-12', 4, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (33, '2022-09-08', 5, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (34, '2022-09-08', 5, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (35, '2022-09-12', 4, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (36, '2022-09-13', 11, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (37, '2022-09-13', 11, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (38, '2022-09-14', 3, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (39, '2022-09-14', 3, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (40, '2022-09-15', 12, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (41, '2022-09-15', 12, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (42, '2022-09-16', 11, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (43, '2022-09-16', 11, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (44, '2022-09-20', 2, 1);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (45, '2022-09-20', 2, 2);
INSERT INTO `tbl_selling` (`id_selling`, `date_selling`, `id_user`, `id_lab`) VALUES (46, '2022-09-30', 6, 1);


#
# TABLE STRUCTURE FOR: tbl_selling_detail
#

DROP TABLE IF EXISTS `tbl_selling_detail`;

CREATE TABLE `tbl_selling_detail` (
  `id_selling_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_selling` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_selling` int(11) NOT NULL,
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL,
  PRIMARY KEY (`id_selling_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=1094 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (34, 17, 169, 1, 2375, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (35, 17, 163, 7, 16625, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (36, 17, 138, 2, 7916, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (37, 17, 167, 7, 37331, 49000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (38, 17, 168, 10, 38330, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (39, 17, 169, 5, 11875, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (40, 17, 172, 12, 3372, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (41, 17, 136, 57, 54606, 114000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (42, 17, 176, 2, 1584, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (43, 17, 177, 4, 3252, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (44, 17, 182, 48, 4992, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (45, 17, 184, 29, 3480, 7250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (46, 17, 185, 8, 1568, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (47, 17, 188, 12, 21600, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (48, 17, 199, 1, 1567, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (49, 17, 202, 5, 2125, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (50, 17, 208, 8, 7000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (51, 17, 209, 4, 1800, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (52, 17, 213, 4, 7268, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (53, 17, 214, 3, 5250, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (54, 17, 217, 2, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (55, 17, 219, 2, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (56, 17, 221, 26, 11050, 13000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (57, 17, 222, 12, 21000, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (58, 17, 223, 8, 14000, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (59, 17, 224, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (60, 17, 207, 2, 3166, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (61, 17, 228, 4, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (62, 17, 230, 43, 34959, 43000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (63, 17, 232, 2, 1740, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (64, 17, 236, 3, 2439, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (65, 17, 201, 3, 2550, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (66, 17, 267, 2, 2360, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (67, 17, 268, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (68, 17, 255, 1, 1500, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (69, 17, 256, 1, 440, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (70, 16, 134, 52, 14612, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (71, 17, 263, 1, 10800, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (72, 16, 4, 91, 138320, 182000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (73, 17, 206, 3, 1314, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (74, 17, 204, 3, 1320, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (75, 17, 178, 1, 2050, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (76, 16, 7, 4, 3168, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (77, 16, 9, 4, 3180, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (78, 16, 10, 2, 1584, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (79, 16, 11, 2, 1626, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (80, 16, 128, 2, 4100, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (81, 16, 105, 61, 6466, 15250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (82, 16, 110, 1, 138, 250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (83, 16, 121, 14, 25200, 28000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (84, 17, 141, 26, 49400, 65000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (85, 16, 16, 17, 28900, 34000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (86, 16, 18, 14, 12600, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (87, 17, 142, 10, 40000, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (88, 17, 146, 26, 40508, 52000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (89, 17, 147, 1, 1912, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (90, 17, 150, 19, 29260, 38000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (91, 17, 151, 19, 29260, 38000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (92, 17, 152, 25, 68750, 87500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (93, 17, 154, 88, 207856, 264000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (94, 16, 322, 34, 15300, 17000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (95, 16, 87, 3, 2700, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (96, 17, 149, 2, 6034, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (97, 17, 157, 15, 36180, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (98, 17, 160, 6, 24372, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (99, 16, 87, 3, 2700, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (100, 16, 24, 24, 10200, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (101, 16, 113, 10, 4460, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (102, 16, 29, 48, 21600, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (103, 16, 31, 4, 6668, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (104, 16, 323, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (105, 16, 33, 5, 2250, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (106, 16, 126, 3, 6000, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (107, 16, 37, 16, 28000, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (108, 16, 120, 20, 35000, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (109, 16, 38, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (110, 16, 122, 7, 0, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (111, 16, 42, 1, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (112, 16, 43, 13, 10569, 13000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (113, 16, 88, 24, 19296, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (114, 16, 52, 2, 5050, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (115, 16, 57, 4, 5832, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (116, 16, 70, 7, 3010, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (117, 16, 69, 1, 440, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (118, 16, 73, 1, 875, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (119, 16, 325, 1, 1690, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (120, 16, 326, 1, 1180, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (121, 16, 327, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (122, 16, 80, 4, 15832, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (123, 16, 79, 13, 51454, 58500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (124, 16, 78, 14, 53662, 63000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (125, 16, 86, 5, 26665, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (126, 16, 299, 12, 39996, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (127, 16, 84, 10, 35000, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (128, 16, 85, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (129, 16, 330, 6, 17520, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (130, 16, 295, 10, 15000, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (131, 16, 301, 5, 20835, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (132, 16, 331, 5, 25600, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (133, 16, 303, 12, 39996, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (134, 16, 308, 3, 10125, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (135, 16, 296, 2, 4166, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (136, 16, 310, 2, 6666, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (137, 16, 333, 11, 32120, 38500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (138, 16, 300, 3, 6438, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (139, 16, 311, 2, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (140, 16, 310, 1, 3333, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (142, 14, 99, 25, 60625, 75000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (143, 14, 97, 47, 89864, 117500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (144, 14, 94, 19, 43928, 57000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (145, 14, 91, 14, 21560, 28000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (146, 14, 92, 38, 58520, 76000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (147, 14, 101, 53, 145750, 185500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (148, 14, 102, 6, 24246, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (149, 14, 93, 1, 2362, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (150, 14, 338, 18, 41634, 54000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (151, 14, 85, 11, 43538, 55000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (152, 14, 80, 10, 39580, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (153, 14, 86, 3, 15999, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (154, 14, 78, 12, 45996, 54000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (155, 14, 79, 18, 71244, 81000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (156, 14, 339, 10, 35000, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (157, 14, 295, 5, 7500, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (158, 14, 298, 12, 31500, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (159, 14, 300, 5, 10730, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (160, 14, 301, 3, 12501, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (161, 14, 302, 6, 19998, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (162, 14, 308, 2, 6750, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (163, 14, 310, 5, 16665, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (164, 14, 311, 6, 28500, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (165, 14, 340, 5, 16665, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (166, 14, 341, 2, 6666, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (167, 14, 300, 5, 10730, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (168, 14, 341, 2, 6666, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (169, 14, 331, 5, 25600, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (170, 14, 134, 24, 6744, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (171, 14, 4, 64, 97280, 128000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (172, 14, 7, 1, 792, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (173, 14, 9, 4, 3180, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (174, 14, 10, 2, 1584, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (175, 14, 11, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (176, 14, 16, 17, 28900, 34000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (177, 14, 22, 14, 11130, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (178, 14, 117, 8, 6960, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (179, 14, 33, 7, 3150, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (180, 14, 37, 3, 5250, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (181, 14, 38, 1, 1750, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (182, 14, 57, 4, 5832, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (183, 14, 66, 2, 450, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (184, 14, 67, 1, 667, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (185, 14, 70, 4, 1720, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (186, 15, 139, 7, 13384, 17500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (187, 15, 141, 21, 39900, 52500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (188, 15, 146, 33, 51414, 66000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (189, 15, 150, 18, 27720, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (190, 15, 151, 9, 13860, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (191, 15, 152, 15, 41250, 52500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (192, 15, 154, 51, 120462, 153000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (193, 15, 160, 19, 77178, 95000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (194, 15, 149, 3, 9051, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (195, 15, 145, 8, 15520, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (196, 15, 157, 23, 55476, 69000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (197, 15, 164, 2, 7916, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (198, 15, 163, 6, 14250, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (199, 15, 138, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (200, 15, 166, 4, 14000, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (201, 15, 167, 4, 21332, 28000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (202, 15, 168, 6, 22998, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (203, 15, 169, 5, 11875, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (204, 15, 172, 18, 5058, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (205, 15, 136, 87, 83346, 174000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (206, 15, 177, 3, 2439, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (207, 15, 342, 9, 20439, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (208, 15, 190, 4, 3560, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (209, 15, 199, 1, 1567, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (210, 15, 202, 10, 4250, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (211, 15, 208, 29, 25375, 29000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (212, 15, 209, 8, 3600, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (213, 15, 213, 3, 5451, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (214, 15, 214, 4, 7000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (215, 15, 219, 19, 8075, 9500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (216, 15, 221, 1, 425, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (217, 15, 222, 2, 3500, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (218, 15, 226, 12, 21504, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (219, 15, 269, 8, 9120, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (220, 15, 232, 2, 1740, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (221, 15, 234, 1, 875, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (222, 15, 236, 2, 1626, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (223, 20, 90, 8, 12464, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (224, 20, 97, 29, 55448, 72500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (225, 20, 91, 26, 40040, 52000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (226, 20, 92, 20, 30800, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (227, 20, 101, 28, 77000, 98000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (228, 20, 102, 9, 36369, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (229, 20, 93, 42, 99204, 126000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (230, 20, 291, 14, 32382, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (231, 20, 85, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (232, 20, 83, 12, 28500, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (233, 20, 82, 6, 14250, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (234, 20, 80, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (235, 20, 339, 22, 77000, 99000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (236, 20, 86, 12, 63996, 84000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (237, 20, 78, 7, 26831, 31500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (238, 20, 81, 8, 19000, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (239, 20, 79, 8, 31664, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (240, 20, 295, 3, 4500, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (241, 20, 299, 5, 16665, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (242, 20, 300, 13, 27898, 39000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (243, 20, 308, 2, 6750, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (244, 20, 310, 5, 16665, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (245, 20, 4, 37, 56240, 74000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (246, 20, 7, 7, 5544, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (247, 20, 9, 1, 795, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (248, 20, 10, 3, 2376, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (249, 20, 11, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (250, 20, 105, 5, 530, 1250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (251, 20, 18, 2, 1800, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (252, 20, 87, 14, 12600, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (253, 20, 27, 1, 1583, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (254, 20, 31, 13, 21671, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (255, 20, 33, 11, 4950, 5500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (256, 20, 126, 1, 2000, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (257, 20, 38, 8, 14000, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (258, 20, 122, 17, 0, 8500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (259, 20, 43, 37, 30081, 37000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (260, 20, 57, 9, 13122, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (261, 20, 69, 2, 880, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (262, 20, 68, 4, 1720, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (263, 20, 73, 2, 1750, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (264, 20, 326, 1, 1180, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (265, 20, 327, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (266, 21, 172, 10, 2810, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (267, 21, 136, 85, 81430, 170000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (268, 21, 176, 24, 19008, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (269, 21, 177, 4, 3252, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (270, 21, 184, 12, 1440, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (271, 21, 188, 10, 18000, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (272, 21, 189, 11, 18700, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (273, 21, 190, 6, 5340, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (274, 21, 191, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (275, 21, 196, 37, 16650, 18500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (276, 21, 198, 17, 14790, 17000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (277, 21, 199, 1, 1567, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (278, 21, 202, 2, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (279, 21, 207, 1, 1583, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (280, 21, 208, 2, 1750, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (281, 21, 209, 2, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (282, 21, 213, 6, 10902, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (283, 21, 214, 6, 10500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (284, 21, 215, 48, 21600, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (285, 21, 219, 3, 1275, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (286, 21, 221, 3, 1275, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (287, 21, 222, 2, 3500, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (288, 21, 224, 2, 3500, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (289, 21, 281, 12, 21492, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (290, 21, 228, 8, 4000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (291, 21, 229, 11, 14685, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (292, 21, 230, 34, 27642, 34000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (293, 21, 258, 1, 812, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (294, 21, 139, 24, 45888, 60000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (295, 21, 141, 16, 30400, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (296, 21, 145, 16, 31040, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (297, 21, 147, 15, 28680, 37500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (298, 21, 149, 20, 60340, 80000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (299, 21, 150, 35, 53900, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (300, 21, 151, 3, 4620, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (301, 21, 152, 39, 107250, 136500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (302, 21, 335, 4, 16168, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (303, 21, 154, 20, 47240, 60000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (304, 21, 164, 8, 31664, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (305, 21, 165, 5, 11875, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (306, 21, 163, 4, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (307, 21, 138, 4, 15832, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (308, 21, 166, 9, 31500, 40500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (309, 21, 167, 9, 47997, 63000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (310, 21, 169, 11, 26125, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (311, 20, 297, 3, 6438, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (312, 20, 3, 96, 26976, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (313, 20, 129, 3, 2463, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (314, 20, 323, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (315, 20, 42, 9, 12006, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (316, 24, 99, 40, 97000, 120000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (317, 24, 90, 36, 56088, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (318, 24, 97, 6, 11478, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (319, 24, 291, 9, 20817, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (320, 24, 91, 15, 23250, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (321, 24, 92, 13, 20150, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (322, 24, 101, 20, 55000, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (323, 24, 102, 6, 24252, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (324, 24, 93, 26, 61412, 78000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (326, 24, 94, 9, 20817, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (327, 24, 318, 10, 40630, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (328, 24, 134, 61, 17141, 30500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (329, 24, 4, 73, 110960, 146000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (330, 24, 7, 12, 9504, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (331, 24, 9, 8, 6360, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (332, 24, 10, 3, 2376, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (333, 24, 11, 4, 3252, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (334, 24, 130, 5, 13500, 17500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (335, 24, 105, 28, 2968, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (336, 24, 48, 30, 3600, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (337, 24, 110, 6, 828, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (338, 24, 121, 5, 9000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (339, 24, 18, 8, 7200, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (340, 24, 22, 12, 9540, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (341, 24, 87, 10, 9000, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (342, 24, 24, 7, 2975, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (343, 24, 113, 1, 450, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (344, 24, 113, 9, 4050, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (345, 24, 29, 4, 1800, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (346, 24, 31, 5, 8335, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (347, 24, 33, 25, 11250, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (348, 24, 127, 9, 3375, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (349, 24, 36, 25, 11250, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (350, 24, 120, 8, 14000, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (351, 24, 38, 8, 14000, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (352, 24, 39, 6, 10680, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (353, 24, 43, 12, 9756, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (354, 24, 46, 7, 6300, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (355, 24, 55, 1, 2525, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (356, 24, 57, 5, 7290, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (357, 24, 59, 3, 2700, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (358, 24, 65, 4, 880, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (359, 24, 66, 2, 450, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (360, 24, 70, 1, 430, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (361, 24, 68, 1, 430, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (362, 24, 73, 2, 1750, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (363, 24, 302, 1, 3333, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (364, 24, 304, 1, 1354, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (365, 24, 308, 5, 16875, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (367, 24, 340, 19, 63327, 76000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (368, 24, 348, 9, 21195, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (369, 24, 333, 3, 5313, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (370, 24, 85, 13, 51454, 65000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (371, 24, 83, 16, 38000, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (372, 24, 82, 24, 57000, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (373, 24, 80, 14, 55412, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (374, 24, 339, 58, 203000, 261000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (375, 24, 86, 2, 10666, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (376, 24, 78, 15, 57495, 67500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (377, 24, 81, 20, 47500, 60000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (378, 24, 79, 11, 43538, 49500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (379, 25, 139, 7, 13384, 17500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (380, 25, 140, 14, 56868, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (381, 25, 144, 64, 155200, 192000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (382, 25, 145, 2, 3880, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (383, 25, 146, 46, 71668, 92000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (384, 25, 147, 5, 9560, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (385, 25, 148, 18, 41634, 54000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (386, 25, 149, 6, 18102, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (387, 25, 152, 19, 52250, 66500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (388, 25, 154, 27, 63774, 81000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (389, 25, 337, 2, 6416, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (391, 25, 160, 6, 24372, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (392, 25, 159, 10, 40620, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (393, 25, 164, 3, 11874, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (394, 25, 165, 11, 26125, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (395, 25, 163, 4, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (396, 25, 138, 3, 11874, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (397, 25, 166, 20, 70000, 90000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (398, 25, 167, 4, 21332, 28000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (399, 25, 169, 17, 40375, 51000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (400, 25, 170, 1, 3958, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (401, 25, 136, 48, 45984, 96000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (402, 25, 316, 1, 3300, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (403, 25, 172, 27, 7587, 13500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (404, 25, 136, 42, 40236, 84000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (405, 25, 176, 3, 2376, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (406, 25, 177, 6, 4878, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (407, 25, 182, 16, 1664, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (408, 25, 184, 24, 4080, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (409, 25, 188, 6, 10800, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (410, 25, 190, 7, 6230, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (411, 25, 196, 3, 1350, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (412, 25, 208, 12, 10500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (413, 25, 209, 12, 5400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (414, 25, 213, 5, 9085, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (415, 25, 214, 3, 5250, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (416, 25, 268, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (417, 27, 135, 69, 66102, 138000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (418, 27, 171, 18, 5670, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (419, 27, 316, 1, 3300, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (420, 27, 177, 3, 2439, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (421, 27, 281, 13, 23283, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (422, 27, 314, 24, 3120, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (423, 27, 184, 20, 3400, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (424, 27, 188, 11, 19800, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (425, 27, 189, 16, 27360, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (426, 27, 196, 6, 2700, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (427, 27, 201, 1, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (428, 27, 202, 2, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (429, 27, 208, 1, 875, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (430, 27, 209, 10, 4500, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (431, 27, 210, 4, 3600, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (432, 27, 213, 4, 7268, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (433, 27, 214, 4, 7000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (434, 27, 215, 11, 4950, 5500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (435, 27, 216, 17, 7582, 8500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (436, 27, 217, 1, 2000, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (437, 27, 219, 3, 1350, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (438, 27, 221, 2, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (439, 27, 224, 2, 3500, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (440, 27, 229, 1, 1335, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (441, 27, 230, 24, 19512, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (442, 27, 234, 5, 4375, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (443, 27, 236, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (444, 27, 243, 1, 800, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (445, 27, 268, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (446, 26, 295, 3, 4500, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (447, 26, 344, 12, 39996, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (448, 26, 345, 12, 39996, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (449, 26, 343, 4, 13332, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (450, 26, 302, 5, 16665, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (451, 26, 305, 10, 11880, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (452, 26, 85, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (453, 26, 83, 10, 23750, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (454, 26, 82, 14, 33250, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (455, 26, 80, 2, 7916, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (456, 26, 339, 14, 49000, 63000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (457, 26, 86, 3, 15999, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (458, 26, 78, 1, 3833, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (459, 26, 81, 10, 23750, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (460, 26, 79, 4, 15832, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (461, 26, 92, 11, 17050, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (462, 26, 90, 20, 31160, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (463, 26, 93, 48, 113376, 144000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (464, 26, 97, 22, 42086, 55000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (465, 26, 294, 5, 11565, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (466, 26, 91, 29, 44950, 58000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (467, 26, 101, 11, 30250, 38500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (468, 26, 102, 7, 28294, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (469, 26, 291, 14, 32382, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (470, 26, 4, 56, 85120, 112000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (471, 26, 117, 8, 7040, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (472, 26, 113, 12, 5400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (473, 26, 11, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (474, 26, 113, 8, 3600, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (475, 26, 66, 2, 450, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (476, 26, 33, 5, 2250, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (477, 26, 71, 2, 4400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (478, 26, 57, 5, 7290, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (479, 26, 110, 11, 1518, 2750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (480, 26, 67, 1, 667, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (481, 26, 9, 2, 1590, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (482, 27, 146, 5, 7790, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (483, 27, 144, 50, 121250, 150000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (484, 27, 137, 19, 43947, 57000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (485, 27, 149, 27, 81459, 108000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (486, 27, 145, 4, 7760, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (487, 27, 160, 3, 12186, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (488, 27, 159, 7, 28434, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (489, 27, 337, 2, 6416, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (490, 27, 140, 25, 101550, 125000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (491, 27, 154, 30, 70860, 90000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (492, 27, 163, 8, 19000, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (493, 27, 165, 5, 11875, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (494, 27, 169, 4, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (495, 27, 166, 6, 21000, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (496, 27, 167, 3, 15999, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (497, 27, 138, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (498, 27, 170, 4, 15832, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (499, 27, 164, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (500, 27, 168, 6, 22998, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (501, 25, 314, 8, 1040, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (502, 30, 79, 3, 11874, 13500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (503, 30, 80, 2, 7916, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (504, 30, 82, 4, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (505, 30, 86, 2, 10666, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (506, 30, 339, 6, 21000, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (507, 30, 90, 12, 18696, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (508, 30, 92, 1, 1550, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (509, 30, 93, 24, 56688, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (510, 30, 97, 2, 3826, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (511, 30, 101, 4, 11000, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (512, 30, 294, 3, 6939, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (513, 31, 135, 11, 10538, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (514, 31, 171, 6, 1890, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (515, 31, 184, 7, 1190, 1750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (516, 31, 185, 6, 720, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (517, 31, 189, 11, 18810, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (518, 31, 199, 2, 3134, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (519, 31, 213, 1, 1817, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (520, 31, 216, 2, 892, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (521, 31, 219, 6, 2700, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (522, 31, 220, 8, 4000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (523, 31, 221, 2, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (524, 31, 222, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (525, 31, 223, 2, 3500, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (526, 31, 224, 4, 7000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (527, 31, 226, 3, 5376, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (528, 31, 227, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (529, 31, 237, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (530, 31, 246, 5, 4250, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (531, 31, 260, 1, 1500, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (532, 31, 263, 1, 11000, 13000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (533, 31, 336, 1, 14000, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (534, 31, 139, 3, 5736, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (535, 31, 150, 6, 9240, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (536, 31, 152, 10, 27500, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (537, 31, 154, 16, 37792, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (538, 31, 158, 1, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (539, 31, 337, 2, 6416, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (540, 31, 355, 1, 1940, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (541, 31, 163, 6, 14250, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (542, 31, 165, 1, 2375, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (543, 31, 166, 4, 14000, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (544, 31, 167, 1, 5333, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (545, 31, 168, 1, 3833, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (546, 31, 170, 3, 11874, 13500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (547, 30, 4, 8, 12160, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (548, 30, 8, 2, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (549, 30, 9, 1, 795, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (550, 30, 24, 7, 2975, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (551, 30, 29, 1, 450, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (552, 30, 33, 21, 9450, 10500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (553, 30, 35, 10, 4500, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (554, 30, 36, 17, 7650, 8500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (555, 30, 38, 7, 12250, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (556, 30, 39, 9, 16020, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (557, 30, 41, 6, 5400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (558, 30, 48, 23, 2760, 5750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (559, 30, 52, 3, 7575, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (560, 30, 53, 1, 2675, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (561, 30, 54, 2, 4726, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (562, 30, 110, 8, 1104, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (563, 30, 126, 5, 10000, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (564, 30, 322, 6, 2700, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (566, 30, 26, 17, 7480, 8500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (567, 30, 112, 8, 10032, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (568, 30, 1, 21, 6615, 10500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (569, 30, 100, 2, 8000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (570, 30, 104, 6, 24372, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (571, 31, 269, 1, 1140, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (572, 30, 295, 2, 3000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (573, 30, 303, 2, 6666, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (574, 30, 310, 8, 26664, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (575, 30, 333, 4, 7084, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (576, 30, 309, 1, 3375, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (577, 28, 97, 59, 112867, 147500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (578, 28, 94, 19, 43947, 57000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (579, 28, 92, 3, 4650, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (580, 28, 101, 48, 132000, 168000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (581, 28, 102, 10, 40420, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (582, 28, 93, 7, 16534, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (583, 28, 338, 18, 41634, 54000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (584, 28, 85, 7, 27706, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (585, 28, 82, 19, 45125, 57000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (586, 28, 80, 11, 43538, 55000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (587, 28, 339, 17, 59500, 76500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (588, 28, 86, 8, 42664, 56000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (589, 28, 78, 5, 19165, 22500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (590, 28, 81, 24, 57000, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (591, 28, 79, 8, 31664, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (592, 28, 295, 6, 9000, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (593, 28, 297, 8, 17168, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (594, 28, 299, 11, 36663, 44000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (595, 28, 301, 4, 16668, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (596, 28, 302, 13, 43329, 52000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (597, 28, 303, 2, 6666, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (598, 28, 304, 32, 43328, 80000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (600, 28, 310, 8, 26664, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (601, 28, 347, 3, 7065, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (602, 28, 333, 3, 5313, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (603, 28, 134, 50, 14050, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (604, 28, 4, 72, 109440, 144000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (605, 28, 7, 8, 6336, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (606, 28, 105, 3, 318, 750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (607, 28, 48, 25, 3000, 6250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (608, 28, 110, 2, 276, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (609, 28, 18, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (610, 28, 322, 22, 9900, 11000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (611, 28, 117, 6, 5280, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (612, 28, 24, 4, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (613, 28, 25, 4, 3400, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (614, 28, 113, 13, 5850, 6500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (615, 28, 29, 15, 6750, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (616, 28, 31, 9, 15003, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (617, 28, 33, 14, 6300, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (618, 28, 126, 3, 6000, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (619, 28, 35, 13, 5850, 6500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (620, 28, 127, 1, 375, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (621, 28, 36, 13, 5850, 6500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (622, 28, 120, 13, 22750, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (623, 28, 39, 6, 10680, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (624, 28, 41, 17, 15300, 17000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (625, 28, 88, 12, 9756, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (626, 28, 69, 3, 1320, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (627, 28, 324, 4, 3400, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (628, 29, 139, 8, 15296, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (629, 29, 140, 30, 121860, 150000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (630, 29, 141, 26, 49400, 65000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (631, 29, 144, 18, 43650, 54000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (632, 29, 146, 28, 43624, 56000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (633, 29, 148, 10, 23130, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (634, 29, 149, 6, 18102, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (635, 29, 150, 22, 33880, 44000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (636, 29, 151, 11, 16940, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (637, 29, 154, 21, 49602, 63000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (638, 29, 337, 4, 12832, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (639, 29, 157, 22, 53064, 66000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (640, 29, 158, 5, 20000, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (641, 29, 159, 3, 12186, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (642, 29, 160, 8, 32496, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (643, 29, 355, 6, 11640, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (644, 29, 164, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (645, 29, 165, 19, 45125, 57000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (646, 29, 163, 7, 16625, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (647, 29, 138, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (648, 29, 166, 9, 31500, 40500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (649, 29, 167, 9, 47997, 63000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (650, 29, 168, 1, 3833, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (651, 29, 170, 2, 7916, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (652, 29, 172, 23, 6716, 11500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (653, 29, 135, 54, 51732, 108000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (654, 29, 176, 1, 792, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (655, 29, 177, 6, 4878, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (656, 29, 281, 15, 26865, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (657, 29, 184, 22, 3740, 5500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (658, 29, 185, 49, 5880, 12250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (659, 29, 186, 7, 700, 1750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (660, 29, 189, 19, 32490, 38000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (661, 29, 191, 10, 9000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (662, 29, 196, 15, 6750, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (663, 29, 199, 5, 7835, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (664, 29, 201, 1, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (665, 29, 206, 4, 1752, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (666, 29, 208, 8, 7000, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (667, 29, 209, 12, 5400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (668, 29, 213, 18, 32706, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (669, 29, 215, 14, 6300, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (670, 29, 216, 7, 3122, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (671, 29, 217, 2, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (672, 29, 219, 14, 6300, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (673, 29, 220, 11, 5500, 11000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (674, 29, 221, 16, 7200, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (675, 29, 222, 10, 17500, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (676, 29, 224, 10, 17500, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (677, 29, 226, 15, 26880, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (678, 29, 229, 1, 1335, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (679, 29, 230, 26, 21138, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (680, 29, 236, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (681, 29, 245, 1, 2400, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (682, 29, 253, 1, 430, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (683, 29, 260, 2, 3000, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (684, 29, 336, 1, 14000, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (685, 29, 264, 3, 5313, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (686, 32, 139, 18, 34416, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (687, 32, 146, 23, 35834, 46000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (688, 32, 149, 2, 6034, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (689, 32, 150, 35, 53900, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (690, 32, 151, 18, 27720, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (691, 32, 152, 19, 52250, 66500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (692, 32, 154, 21, 49602, 63000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (693, 32, 337, 6, 19248, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (694, 32, 158, 10, 40000, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (695, 32, 355, 3, 5820, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (696, 34, 135, 54, 51732, 108000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (697, 34, 171, 17, 5355, 8500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (698, 34, 176, 26, 20592, 26000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (699, 34, 177, 2, 1626, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (700, 34, 182, 47, 4982, 11750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (701, 34, 184, 94, 15980, 23500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (702, 34, 188, 16, 28800, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (703, 34, 189, 20, 34200, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (704, 34, 191, 3, 2700, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (705, 34, 199, 1, 1567, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (706, 34, 202, 26, 11050, 13000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (707, 34, 207, 1, 1583, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (708, 34, 210, 3, 2700, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (709, 34, 213, 16, 29072, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (710, 34, 214, 4, 7168, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (711, 34, 216, 10, 4460, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (712, 34, 217, 2, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (713, 34, 219, 20, 9000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (714, 34, 221, 27, 12150, 13500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (715, 34, 222, 11, 19250, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (716, 34, 224, 8, 14336, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (717, 34, 225, 6, 5580, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (718, 34, 226, 12, 21504, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (719, 34, 227, 6, 5400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (720, 34, 229, 20, 26700, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (721, 34, 230, 50, 40650, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (722, 34, 231, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (723, 34, 233, 4, 1600, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (724, 34, 246, 3, 2550, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (725, 34, 260, 1, 1500, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (726, 34, 267, 2, 2360, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (727, 34, 271, 3, 5313, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (728, 34, 243, 5, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (729, 34, 313, 12, 1560, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (730, 34, 316, 1, 3300, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (731, 34, 356, 4, 14800, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (732, 33, 90, 21, 32718, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (733, 33, 91, 24, 37200, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (734, 33, 92, 8, 12400, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (735, 33, 97, 16, 30608, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (736, 33, 100, 13, 52000, 65000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (737, 33, 101, 20, 55000, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (738, 33, 102, 7, 28294, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (739, 33, 104, 37, 150294, 148000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (740, 33, 291, 13, 30069, 39000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (741, 33, 294, 8, 18504, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (742, 33, 6, 12, 18000, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (743, 33, 7, 3, 2376, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (744, 33, 11, 3, 2439, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (745, 33, 18, 9, 8100, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (746, 33, 24, 22, 9350, 11000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (747, 33, 25, 1, 850, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (748, 33, 29, 14, 6300, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (749, 33, 31, 6, 10002, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (750, 33, 33, 4, 1800, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (751, 33, 35, 4, 1800, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (752, 33, 36, 11, 4950, 5500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (753, 33, 38, 3, 5250, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (754, 33, 39, 2, 3560, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (755, 33, 41, 13, 11700, 13000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (756, 33, 48, 33, 3960, 8250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (757, 33, 55, 1, 2525, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (758, 33, 57, 5, 7290, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (759, 33, 59, 1, 900, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (760, 33, 60, 1, 2000, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (761, 33, 69, 6, 2640, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (762, 33, 70, 1, 430, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (763, 33, 73, 1, 875, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (764, 33, 110, 32, 4416, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (765, 33, 111, 8, 3600, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (766, 33, 112, 2, 2508, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (767, 33, 113, 18, 8100, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (768, 33, 120, 3, 5250, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (769, 33, 121, 5, 9000, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (770, 33, 126, 2, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (771, 33, 127, 3, 1125, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (772, 33, 130, 1, 2700, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (773, 33, 134, 133, 37373, 66500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (774, 33, 320, 2, 260, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (775, 33, 322, 21, 9450, 10500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (776, 33, 325, 1, 1690, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (777, 33, 353, 1, 2200, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (778, 33, 295, 31, 46500, 77500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (779, 33, 296, 24, 49992, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (780, 33, 297, 35, 75110, 105000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (781, 33, 298, 45, 118125, 157500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (782, 33, 300, 24, 51504, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (783, 33, 301, 26, 108342, 130000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (784, 33, 302, 17, 56661, 68000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (785, 33, 303, 21, 69993, 84000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (786, 33, 308, 24, 81000, 96000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (787, 33, 309, 23, 77625, 92000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (788, 33, 310, 33, 109989, 132000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (789, 33, 330, 14, 40880, 49000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (790, 33, 331, 12, 61440, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (791, 33, 333, 5, 8855, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (792, 33, 340, 18, 59994, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (793, 33, 341, 5, 8855, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (794, 33, 346, 8, 17168, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (795, 33, 347, 31, 73005, 93000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (796, 33, 349, 14, 32970, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (797, 33, 350, 23, 77625, 92000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (798, 34, 138, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (800, 34, 166, 7, 24500, 31500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (801, 34, 167, 4, 21332, 28000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (802, 34, 168, 2, 7666, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (804, 34, 170, 2, 7916, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (805, 34, 139, 16, 30592, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (806, 34, 141, 23, 43700, 57500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (807, 34, 146, 30, 46740, 60000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (808, 34, 149, 3, 9051, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (809, 34, 150, 26, 40040, 52000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (810, 34, 151, 15, 23100, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (811, 34, 337, 8, 25664, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (812, 34, 355, 12, 23280, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (813, 36, 92, 21, 32550, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (814, 36, 93, 36, 85032, 108000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (815, 36, 97, 40, 76520, 100000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (816, 36, 100, 15, 60000, 75000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (817, 36, 101, 33, 90750, 115500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (818, 36, 102, 7, 28294, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (819, 36, 291, 11, 25443, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (820, 36, 294, 9, 20817, 27000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (821, 36, 360, 12, 38496, 48000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (822, 36, 295, 4, 6000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (823, 36, 296, 4, 8332, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (824, 36, 297, 6, 12876, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (825, 36, 300, 2, 4292, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (826, 36, 301, 1, 4167, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (827, 36, 303, 1, 3333, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (828, 36, 309, 4, 13500, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (829, 36, 310, 4, 13332, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (830, 36, 330, 10, 29200, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (831, 36, 331, 4, 20480, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (832, 36, 298, 4, 10500, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (833, 36, 78, 9, 34497, 40500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (834, 36, 79, 8, 31664, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (835, 36, 80, 16, 63328, 80000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (836, 36, 81, 3, 7125, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (837, 36, 82, 11, 26125, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (838, 36, 83, 11, 26125, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (839, 36, 85, 4, 15832, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (840, 36, 86, 7, 37331, 49000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (841, 36, 339, 13, 45500, 58500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (842, 36, 1, 48, 15120, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (843, 36, 6, 57, 85500, 114000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (844, 36, 7, 4, 3168, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (845, 36, 9, 1, 795, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (846, 36, 10, 3, 2376, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (847, 36, 11, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (848, 36, 24, 19, 8075, 9500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (849, 36, 29, 12, 5400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (850, 36, 31, 19, 31673, 38000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (851, 36, 33, 2, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (852, 36, 36, 5, 2250, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (853, 36, 38, 3, 5250, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (854, 36, 60, 1, 2000, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (855, 36, 110, 8, 1104, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (856, 36, 111, 20, 9000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (857, 36, 113, 25, 11250, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (858, 36, 126, 3, 6000, 7500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (859, 36, 129, 1, 821, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (860, 36, 130, 3, 8100, 10500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (861, 36, 320, 16, 2080, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (862, 36, 327, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (863, 36, 25, 2, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (864, 37, 139, 33, 63096, 82500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (865, 37, 146, 35, 54530, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (866, 37, 150, 31, 47740, 62000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (867, 37, 151, 19, 29260, 38000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (868, 37, 152, 37, 101750, 129500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (869, 37, 158, 8, 32000, 40000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (870, 37, 337, 8, 25664, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (871, 37, 355, 18, 34920, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (872, 37, 138, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (873, 37, 163, 1, 2375, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (874, 37, 164, 3, 11874, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (875, 37, 165, 6, 14250, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (876, 37, 166, 23, 80500, 103500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (877, 37, 167, 10, 53330, 70000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (878, 37, 168, 10, 38330, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (879, 37, 170, 7, 27706, 31500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (880, 37, 136, 45, 43110, 90000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (881, 37, 172, 18, 5256, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (882, 37, 176, 1, 792, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (883, 37, 184, 16, 2720, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (884, 37, 185, 10, 1200, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (885, 37, 188, 11, 19800, 27500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (886, 37, 189, 1, 1710, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (887, 37, 196, 2, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (888, 37, 199, 1, 1567, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (889, 37, 202, 7, 2975, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (890, 37, 213, 1, 1817, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (891, 37, 219, 1, 450, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (892, 37, 220, 5, 2500, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (893, 37, 221, 9, 4050, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (894, 37, 222, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (895, 37, 223, 6, 10500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (896, 37, 224, 8, 14336, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (897, 37, 230, 21, 17073, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (898, 37, 237, 11, 9900, 11000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (899, 37, 246, 2, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (900, 37, 271, 1, 1771, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (901, 37, 281, 7, 12537, 14000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (902, 37, 243, 5, 4000, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (903, 37, 313, 12, 1560, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (904, 37, 357, 9, 1080, 2250);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (905, 39, 138, 17, 67286, 85000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (906, 39, 163, 6, 14250, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (907, 39, 164, 4, 15832, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (908, 39, 165, 11, 26125, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (909, 39, 166, 16, 56000, 72000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (910, 39, 167, 12, 63996, 84000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (911, 39, 168, 10, 38330, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (912, 35, 104, 5, 20310, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (913, 35, 100, 7, 28000, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (914, 35, 90, 23, 35834, 46000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (915, 35, 97, 17, 32521, 42500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (916, 35, 94, 7, 16191, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (917, 35, 91, 23, 35650, 46000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (918, 35, 92, 19, 29450, 38000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (919, 35, 101, 21, 57750, 73500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (920, 35, 102, 11, 44462, 55000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (921, 35, 93, 30, 70860, 90000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (922, 35, 291, 12, 27756, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (923, 35, 361, 9, 27153, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (924, 33, 80, 6, 23748, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (925, 33, 85, 5, 19790, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (926, 33, 339, 24, 84000, 108000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (927, 33, 86, 4, 21332, 28000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (928, 33, 78, 5, 19165, 22500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (929, 33, 81, 13, 30875, 39000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (930, 33, 79, 12, 47496, 54000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (931, 34, 163, 5, 11875, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (932, 34, 165, 4, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (933, 35, 85, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (934, 35, 80, 10, 39580, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (935, 35, 339, 30, 105000, 135000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (936, 35, 86, 7, 37331, 49000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (937, 35, 78, 7, 26831, 31500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (938, 35, 81, 19, 45125, 57000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (939, 35, 79, 11, 43538, 49500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (940, 35, 295, 4, 6000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (941, 35, 297, 11, 23606, 33000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (942, 35, 298, 6, 15750, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (943, 35, 346, 8, 17168, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (944, 35, 302, 5, 16665, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (945, 35, 333, 7, 12397, 17500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (946, 35, 349, 2, 4710, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (947, 35, 301, 4, 16668, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (948, 32, 164, 1, 3958, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (949, 32, 165, 6, 14250, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (950, 32, 163, 4, 9500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (951, 32, 166, 8, 28000, 36000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (952, 32, 167, 3, 15999, 21000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (953, 32, 168, 9, 34497, 40500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (954, 32, 170, 3, 11874, 13500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (955, 35, 4, 153, 232560, 306000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (956, 35, 7, 7, 5544, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (957, 35, 9, 2, 2084, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (958, 35, 11, 1, 813, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (959, 35, 130, 3, 8100, 10500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (960, 35, 48, 58, 6960, 14500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (961, 35, 110, 42, 5796, 10500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (963, 35, 22, 20, 15900, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (964, 35, 24, 4, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (965, 35, 25, 11, 9350, 11000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (966, 35, 29, 7, 3150, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (967, 35, 31, 1, 1867, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (968, 35, 33, 10, 4500, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (969, 35, 111, 4, 1800, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (970, 35, 35, 1, 450, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (971, 35, 36, 9, 4050, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (972, 35, 120, 11, 19712, 22000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (973, 35, 38, 10, 17920, 25000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (974, 35, 39, 9, 16020, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (975, 35, 39, 10, 17800, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (976, 35, 52, 1, 2525, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (977, 35, 55, 1, 2525, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (978, 35, 57, 1, 1458, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (979, 35, 66, 2, 450, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (980, 35, 70, 4, 1720, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (981, 35, 352, 1, 11000, 13000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (982, 35, 71, 2, 4400, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (983, 35, 134, 25, 7025, 12500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (984, 32, 270, 1, 1140, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (985, 32, 230, 7, 5691, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (986, 32, 336, 1, 14000, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (987, 38, 97, 14, 26782, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (988, 38, 100, 2, 8000, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (989, 38, 102, 7, 28294, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (990, 38, 291, 2, 4626, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (991, 38, 294, 14, 32382, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (992, 38, 360, 8, 25664, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (993, 38, 295, 1, 1500, 2500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (994, 38, 296, 8, 16664, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (995, 38, 297, 10, 21460, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (996, 38, 298, 12, 31500, 42000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (997, 38, 300, 3, 9999, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (998, 38, 301, 2, 8334, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (999, 38, 302, 1, 3333, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1000, 38, 303, 13, 43329, 52000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1001, 38, 308, 1, 3375, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1002, 38, 310, 8, 26664, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1003, 38, 331, 2, 10240, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1004, 38, 347, 3, 7065, 9000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1005, 38, 349, 4, 9420, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1006, 38, 350, 3, 10125, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1007, 38, 7, 1, 792, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1008, 38, 9, 2, 2084, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1009, 38, 11, 2, 1626, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1010, 38, 24, 20, 8500, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1011, 38, 25, 4, 3400, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1012, 38, 31, 3, 5601, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1013, 38, 54, 1, 2363, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1014, 38, 53, 1, 2675, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1015, 38, 57, 1, 1458, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1016, 38, 110, 11, 1518, 2750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1017, 38, 111, 14, 6300, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1018, 38, 112, 4, 5016, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1019, 38, 113, 16, 7200, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1020, 38, 130, 2, 5400, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1021, 38, 320, 11, 1430, 2750);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1022, 38, 326, 1, 1180, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1023, 38, 327, 1, 1130, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1024, 38, 354, 6, 5280, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1025, 38, 2, 124, 36208, 62000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1026, 39, 169, 23, 54625, 69000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1027, 39, 170, 10, 39580, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1028, 39, 141, 20, 38000, 50000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1029, 39, 151, 16, 24640, 32000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1030, 39, 152, 10, 27500, 35000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1031, 39, 157, 40, 96480, 120000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1032, 39, 337, 4, 12832, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1033, 39, 355, 6, 11640, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1034, 39, 135, 48, 45984, 96000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1035, 39, 136, 41, 39278, 82000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1036, 39, 172, 48, 14016, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1037, 39, 176, 2, 1584, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1038, 39, 188, 2, 3600, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1039, 39, 189, 8, 13680, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1040, 39, 196, 8, 3600, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1041, 39, 203, 6, 11100, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1042, 39, 206, 48, 21024, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1043, 39, 208, 3, 2625, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1044, 39, 209, 7, 3150, 3500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1045, 39, 218, 2, 1750, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1046, 39, 219, 3, 1350, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1047, 39, 221, 1, 450, 500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1048, 39, 222, 5, 8750, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1049, 39, 223, 6, 10500, 12000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1050, 39, 224, 1, 1792, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1051, 39, 226, 8, 14336, 16000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1052, 39, 230, 5, 4065, 5000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1053, 39, 243, 1, 800, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1054, 39, 253, 3, 1290, 3000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1055, 39, 255, 1, 1500, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1056, 39, 272, 1, 1625, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1057, 39, 243, 1, 800, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1058, 39, 316, 1, 3300, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1059, 39, 357, 8, 960, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1060, 32, 136, 58, 55564, 116000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1061, 32, 316, 6, 19800, 24000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1062, 32, 172, 20, 5840, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1063, 32, 176, 1, 792, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1064, 32, 188, 8, 14400, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1065, 32, 189, 4, 6840, 8000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1066, 32, 191, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1067, 32, 196, 2, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1068, 32, 203, 1, 1850, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1069, 32, 202, 4, 1700, 2000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1070, 32, 286, 1, 800, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1071, 32, 259, 1, 8200, 10000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1072, 32, 237, 1, 900, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1073, 32, 236, 4, 3252, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1074, 32, 229, 2, 2670, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1075, 32, 228, 7, 3150, 7000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1076, 32, 225, 1, 930, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1077, 32, 223, 15, 26250, 30000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1078, 32, 222, 10, 17500, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1079, 32, 219, 9, 4050, 4500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1080, 32, 216, 1, 730, 1000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1081, 44, 79, 18, 71244, 81000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1082, 44, 85, 13, 51454, 65000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1083, 32, 213, 3, 5451, 6000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1084, 44, 80, 4, 15832, 20000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1085, 44, 339, 15, 52500, 67500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1086, 44, 86, 11, 58663, 77000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1087, 32, 209, 3, 1350, 1500);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1088, 44, 81, 26, 61750, 78000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1089, 44, 78, 10, 38330, 45000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1090, 44, 347, 5, 11775, 15000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1091, 32, 282, 2, 3166, 4000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1092, 44, 349, 6, 14130, 18000);
INSERT INTO `tbl_selling_detail` (`id_selling_detail`, `id_selling`, `id_product`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (1093, 44, 346, 10, 21460, 30000);


#
# TABLE STRUCTURE FOR: tbl_student_selling
#

DROP TABLE IF EXISTS `tbl_student_selling`;

CREATE TABLE `tbl_student_selling` (
  `id_student_selling` int(11) NOT NULL AUTO_INCREMENT,
  `date_selling` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  PRIMARY KEY (`id_student_selling`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (3, '2022-09-07', 3, 14);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (4, '2022-09-09', 6, 22);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (5, '2022-09-09', 6, 22);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (6, '2022-09-08', 5, 5);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (7, '2022-09-08', 5, 5);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (8, '2022-09-12', 4, 2);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (9, '2022-09-12', 4, 2);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (10, '2022-09-13', 11, 6);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (11, '2022-09-13', 11, 6);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (12, '2022-09-14', 3, 14);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (13, '2022-09-20', 2, 0);
INSERT INTO `tbl_student_selling` (`id_student_selling`, `date_selling`, `id_user`, `id_class`) VALUES (14, '2022-09-20', 2, 1);


#
# TABLE STRUCTURE FOR: tbl_student_selling_detail
#

DROP TABLE IF EXISTS `tbl_student_selling_detail`;

CREATE TABLE `tbl_student_selling_detail` (
  `id_student_selling_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_student_selling` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `product` varchar(125) NOT NULL,
  `basic_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `qty_product` int(11) NOT NULL,
  `qty_last` int(11) NOT NULL,
  `qty_selling` int(11) NOT NULL,
  `total_basic_price` int(11) NOT NULL,
  `total_selling_price` int(11) NOT NULL,
  PRIMARY KEY (`id_student_selling_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (6, 3, 14, 'Bala Bala', 442, 1000, 575, 0, 575, 254150, 575000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (7, 5, 22, 'Bala Bala', 800, 1000, 66, 0, 66, 52800, 66000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (8, 5, 22, 'Yoghurt', 900, 1000, 45, 4, 41, 36900, 41000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (9, 5, 22, 'Roti Goreng', 1800, 2500, 10, 9, 1, 1800, 2500);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (10, 5, 22, 'Makaroni', 2500, 3000, 14, 6, 8, 20000, 24000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (11, 5, 22, 'Kue Soes', 1200, 1500, 25, 4, 21, 25200, 31500);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (12, 5, 22, 'Pie Buah', 1600, 2000, 25, 7, 18, 28800, 36000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (13, 4, 22, 'Bala Bala', 800, 1000, 83, 0, 83, 66400, 83000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (14, 4, 22, 'Yoghurt', 900, 1000, 60, 0, 60, 54000, 60000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (15, 4, 22, 'Roti Goreng', 1800, 2500, 12, 10, 2, 3600, 5000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (16, 4, 22, 'Makaroni', 2500, 3000, 12, 0, 12, 30000, 36000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (17, 4, 22, 'Kue Soes', 1200, 1500, 25, 5, 20, 24000, 30000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (18, 4, 22, 'Pie Buah', 1600, 2000, 25, 2, 23, 36800, 46000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (19, 12, 14, 'Bala-bala + Tahu Pedas', 800, 1000, 575, 0, 575, 460000, 575000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (20, 8, 2, 'Tahu Pedas', 1300, 1500, 205, 0, 205, 266500, 307500);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (21, 8, 2, 'Bala Bala', 800, 1000, 71, 0, 71, 56800, 71000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (22, 9, 2, 'Karoket mrecon', 1300, 1500, 112, 34, 78, 101400, 117000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (23, 9, 2, 'Tahu Walik', 800, 1000, 137, 0, 137, 109600, 137000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (24, 14, 1, 'Bala-Bala', 800, 1000, 200, 0, 200, 160000, 200000);
INSERT INTO `tbl_student_selling_detail` (`id_student_selling_detail`, `id_student_selling`, `id_class`, `product`, `basic_price`, `selling_price`, `qty_product`, `qty_last`, `qty_selling`, `total_basic_price`, `total_selling_price`) VALUES (25, 14, 1, 'Tahu Crispy', 1500, 2000, 50, 0, 50, 75000, 100000);


#
# TABLE STRUCTURE FOR: tbl_supplier
#

DROP TABLE IF EXISTS `tbl_supplier`;

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` varchar(128) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_supplier` (`id_supplier`, `supplier`, `address`, `phone`) VALUES (1, 'Toko Deri', 'Cianjur Kota', '085156334607');
INSERT INTO `tbl_supplier` (`id_supplier`, `supplier`, `address`, `phone`) VALUES (3, 'AICE Cianjur', 'Cianjur', '08000000000');
INSERT INTO `tbl_supplier` (`id_supplier`, `supplier`, `address`, `phone`) VALUES (4, 'Sosro', 'Cianjur', '085156334607');
INSERT INTO `tbl_supplier` (`id_supplier`, `supplier`, `address`, `phone`) VALUES (5, 'Coca Cola', 'Cianjur ', '081221122916');


#
# TABLE STRUCTURE FOR: tbl_tool
#

DROP TABLE IF EXISTS `tbl_tool`;

CREATE TABLE `tbl_tool` (
  `id_tool` int(11) NOT NULL AUTO_INCREMENT,
  `tool` varchar(128) NOT NULL,
  `brand` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tool_condition` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id_tool`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (1, 'Showcase', 'Panasonic', 1, 0, 1, 'Kepemilikan Titipan Coca Cola', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (2, 'Freezer', 'Aqua 262 Liter', 1, 0, 1, 'Kepemilikan Titipan AICE', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (3, 'Rak Piring', '3 Tingkat', 1, 200000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (5, 'Kompor', 'Rinnai 2 Tungku', 1, 325000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (6, 'Kompor Rinnai', '', 1, 0, 1, '', 2, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (7, 'Kompor', 'Rinai 2 Tungku', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (8, 'Gas 3 Kg', '3 Kg', 2, 160000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (9, 'Gas 5 Kg', '5 Kg', 1, 400000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (10, 'Estalase', '2 Meter', 1, 1200000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (11, 'Rice Cooker', '', 1, 250000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (12, 'Langseng', '', 1, 50000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (13, 'Katel Besar', 'Ukuran Besar', 1, 75000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (14, 'Katel Kecil', 'Ukuran Kecil', 1, 45000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (15, 'Baskom Besar', 'Ukuran Besar Biru', 1, 75000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (16, 'Baskom Kecil', 'Ukuran Kecil Warna Merah', 2, 25000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (17, 'Kontener Besar', 'Lion Star', 1, 125000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (18, 'Timbingan Digital', 'Kapasitas Max 5 Kg', 5, 100000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (19, 'Gunting', '', 1, 25000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (20, 'Talenan Kayu', 'Kayu', 2, 10000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (21, 'Serokan', 'Stanless', 4, 20000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (22, 'Sodet', 'Plastik', 3, 5000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (23, 'Sealer', '', 5, 250000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (24, 'Timbangan BDigital Besar', 'Kapasitas Max 100 Kg', 1, 400000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (25, 'Keler Besar', '', 1, 45000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (26, 'Gelas Plastik', 'Plastik', 167, 5000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (27, 'Cangkir Plastik', 'Plastik', 6, 5000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (28, 'Piring Plastik', 'Plastik', 9, 7000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (29, 'Mangkok Plastik', 'Plastik', 254, 7000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (30, 'Mangkok Kaca', 'Kaca', 1, 20000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (31, 'Box Roti Bening', 'Plastik', 5, 35000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (32, 'Baki', '', 2, 20000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (33, 'Gayung', 'Gayung', 1, 1000, 0, '', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (34, 'Gayung', 'Plastik', 1, 10000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (35, 'Ember', 'Plastik', 1, 15000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (36, 'Pe\'lan', '', 3, 15000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (37, 'Meja Kecil', 'Kayu', 8, 0, 1, 'Kepemilikan Sekolah', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (38, 'Meja Besar', 'Kayu', 2, 0, 1, 'Kepemilikan Sekolah', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (39, 'Bangku Kayu', 'Kayu', 16, 0, 1, 'Kepemilikan Sekolah', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (40, 'Kursi Plastik', 'Plastik', 2, 50000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (41, 'Cetakan Telur', 'Stanless', 1, 35000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (42, 'Botol Saus Kecap', 'Plastik', 3, 15000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (43, 'Pisau', 'Stanless', 4, 20000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (44, 'Centong', 'Plastik', 2, 10000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (45, 'Sendok Nasi', 'Plastik', 3, 10000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (46, 'Sendok Stanless', 'Stanless', 85, 2000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (47, 'Garpu', 'Stanless', 9, 2000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (48, 'Sendok Plastik', 'Plastik', 135, 200, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (49, 'Penjapit', 'Almunium', 1, 15000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (50, 'Sapu', 'Kayu', 1, 10000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (51, 'Termos Es', 'Kapasitas 20 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (52, 'Sinduk', 'Plastik', 1, 12000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (53, 'Gas LPG', '3 Kg', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (54, 'Blender', 'Philips', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (55, 'Galon', '19 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (56, 'Rak Plastik', 'Plastik', 1, 12000, 1, 'Kepemilikan SPW', 1, 1);
INSERT INTO `tbl_tool` (`id_tool`, `tool`, `brand`, `qty`, `price`, `tool_condition`, `description`, `id_lab`, `is_active`) VALUES (57, 'Galon dengan Kran ', 'Kapasitas 5 Liter', 1, 0, 1, 'Kepemilikan Titipan K.Deri', 1, 1);


#
# TABLE STRUCTURE FOR: tbl_tool_condition
#

DROP TABLE IF EXISTS `tbl_tool_condition`;

CREATE TABLE `tbl_tool_condition` (
  `id_tool_condition` int(11) NOT NULL AUTO_INCREMENT,
  `condition` varchar(128) NOT NULL,
  PRIMARY KEY (`id_tool_condition`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_tool_condition` (`id_tool_condition`, `condition`) VALUES (1, 'Baik');
INSERT INTO `tbl_tool_condition` (`id_tool_condition`, `condition`) VALUES (2, 'Sedang');
INSERT INTO `tbl_tool_condition` (`id_tool_condition`, `condition`) VALUES (3, 'Rusak');
INSERT INTO `tbl_tool_condition` (`id_tool_condition`, `condition`) VALUES (4, 'Hilang');


#
# TABLE STRUCTURE FOR: tbl_user_access_menu
#

DROP TABLE IF EXISTS `tbl_user_access_menu`;

CREATE TABLE `tbl_user_access_menu` (
  `id_user_access_menu` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id_user_access_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (1, 1, 1);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (2, 1, 2);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (3, 1, 3);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (4, 1, 4);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (5, 1, 5);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (6, 1, 6);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (7, 1, 7);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (8, 1, 16);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (9, 2, 2);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (10, 2, 3);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (11, 2, 4);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (12, 2, 5);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (13, 2, 6);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (15, 2, 7);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (16, 2, 16);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (17, 3, 2);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (18, 3, 4);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (19, 3, 5);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (21, 3, 6);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (23, 3, 7);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (24, 4, 3);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (26, 4, 5);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (28, 4, 6);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (29, 4, 7);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (32, 5, 5);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (33, 5, 7);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (34, 6, 7);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (35, 5, 6);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (36, 5, 16);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (37, 3, 16);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (38, 4, 16);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (39, 1, 17);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (40, 1, 18);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (41, 7, 18);
INSERT INTO `tbl_user_access_menu` (`id_user_access_menu`, `role_id`, `menu_id`) VALUES (42, 7, 16);


#
# TABLE STRUCTURE FOR: tbl_user_menu
#

DROP TABLE IF EXISTS `tbl_user_menu`;

CREATE TABLE `tbl_user_menu` (
  `id_user_menu` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  `order_menu` int(11) NOT NULL,
  PRIMARY KEY (`id_user_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (1, 'admin', 1);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (2, 'produk', 4);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (3, 'peralatan', 3);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (5, 'penjualan', 6);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (6, 'stok', 7);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (7, 'daftar', 8);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (16, 'pengguna', 10);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (17, 'data', 2);
INSERT INTO `tbl_user_menu` (`id_user_menu`, `menu`, `order_menu`) VALUES (18, 'franchisor', 9);


#
# TABLE STRUCTURE FOR: tbl_user_role
#

DROP TABLE IF EXISTS `tbl_user_role`;

CREATE TABLE `tbl_user_role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (1, 'Admin Super SPW');
INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (2, 'Admin SPW');
INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (3, 'PJ. Produk');
INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (4, 'PJ. Peralatan');
INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (5, 'Guru SPW');
INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (6, 'Siswa SPW');
INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES (7, 'Franchisor');


#
# TABLE STRUCTURE FOR: tbl_user_submenu
#

DROP TABLE IF EXISTS `tbl_user_submenu`;

CREATE TABLE `tbl_user_submenu` (
  `id_user_submenu` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  `order_submenu` int(11) NOT NULL,
  PRIMARY KEY (`id_user_submenu`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (1, 1, 'Menu Management', 'admin/menu', 'ni ni-bullet-list-67 text-primary', 1, 1);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (2, 1, 'Access Role Menu', 'admin/role', 'ni ni-ungroup text-success', 1, 2);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (3, 17, 'Data Web', 'data/data_web', 'ni ni-world-2 text-warning', 1, 3);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (4, 17, 'Lab SPW', 'data/lab', 'ni ni-atom text-info', 1, 4);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (5, 2, 'Data Kategori', 'produk/category', 'ni ni-bullet-list-67 text-info', 1, 7);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (6, 2, 'Data Produk', 'produk', 'ni ni-app text-warning', 1, 8);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (7, 3, 'Data Kategori', 'peralatan/catagory', 'ni ni-bullet-list-67 text-info', 0, 0);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (8, 3, 'Data Peralatan', 'peralatan', 'ni ni-settings text-success', 1, 6);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (9, 2, 'Data Pembelian', 'produk/index_purchase', 'ni ni-cart text-success', 1, 9);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (10, 5, 'Data Penjualan SPW', 'penjualan', 'ni ni-cart text-primary', 1, 11);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (11, 6, 'Stok Produk', 'stok', 'ni ni-box-2 text-success', 1, 15);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (12, 7, 'Daftar Harga', 'daftar', 'ni ni-shop text-primary', 1, 16);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (13, 16, 'Pengguna', 'pengguna', 'ni ni-single-02 text-danger', 1, 17);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (14, 16, 'Profile', 'pengguna/profile', 'ni ni-credit-card text-primary', 1, 18);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (15, 2, 'Data Supplier', 'produk/supplier', 'ni ni-single-02 text-primary', 1, 10);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (16, 5, 'Data Penjualan Titipan', 'penjualan/franchise', 'ni ni-cart text-success', 1, 12);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (17, 17, 'Jadwal SPW', 'data/schedule', 'ni ni-calendar-grid-58 text-primary', 1, 5);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (18, 5, 'Data Franchisor', 'penjualan/franchisor', 'ni ni-single-02 text-danger', 1, 14);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (19, 5, 'Data Penjualan Siswa', 'penjualan/student_selling', 'ni ni-cart text-info', 1, 13);
INSERT INTO `tbl_user_submenu` (`id_user_submenu`, `menu_id`, `title`, `url`, `icon`, `is_active`, `order_submenu`) VALUES (20, 18, 'Data Penjualan', 'franchisor/data_franchisor', 'ni ni-cart text-success', 1, 1);


#
# TABLE STRUCTURE FOR: tbl_users
#

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
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
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (1, 'Anas Berkata', 'anasberkata@gmail.com', 'anasberkata', '$2y$10$VtW8kK.auFys07t4yVj3ie2ACxAtcQXtOXi6adhmIq8hdyy6LWmGy', 1, 1, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', 'ni ni-camera-compact text-dark ', '2022-07-17', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (2, 'Eka Anas Jatnika, S.Ds', 'ideanasdesain@gmail.com', 'ideanasdesain', '$2y$10$N6v/byfq1jrLmFqyveOVdOXrP5NaoSfbOjhQoqzsOhTLPnlrxuZPK', 2, 2, 'anas.jpg', 'anasberkata', 'anasberkata', '85156334607', 'ni ni-camera-compact text-dark ', '2022-07-17', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (3, 'Ira Akhira Dewi, S.Pd', 'iraakhiradewi@gmail.com', 'pjproduk', '$2y$10$iwFuMPgmG58i2Cegq3O3Nuy04l2ex1Q4f31xL1y39Yk6BA5fhvfDS', 2, 2, 'default.jpg', 'pjproduk', 'pjproduk', '8510000000', '&lt;i class=', '2022-07-18', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (4, 'Elinda Rosi, S.Si', 'elindarosi415@gmail.com', 'elindarosi', '$2y$10$jnLtgriXQAA13BvsL0r5NeQcwZso7T2aYVSXtYDmQ8TQodpcVP0zm', 3, 3, 'default.jpg', '', '', '', '', '2022-07-21', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (5, 'Nara Yumita, S.ST', 'narayumita86@gmail.com', 'narayumita', '$2y$10$3qL9L1fHw2WoYhVln0iO5uytLwAGerbUh6drRzfS4QlIF7q46H5pC', 3, 3, 'default.jpg', '', '', '', '', '2022-07-21', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (6, 'Moch Angga Kusumah, S.Pd', 'manggakusumah@gmail.com', 'manggakusumah', '$2y$10$maVCCO2F.Hd2fk.oacgF3.tWoPnFNA58gkFLPljQrU2MlDmlNYLuK', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (7, 'Rony Noor Sa\'roni, ST', 'ronynoorsaroni@gmail.com', 'ronynoorsaroni', '$2y$10$nlxL2S0ZwEiUO.OPVWlqTOhtj2DfZon8whJQbyetOulgb3JAryO4u', 4, 4, 'default.jpg', '', '', '', '', '2022-07-21', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (8, 'Siswa SPW DG', 'siswaspwgrafika@gmail.com', 'siswaspwgrafika', '$2y$10$rrhEBAWAyF9Vq9M3e4/q.uMeDoJWDkUEzZ34P1KElUwOr0iJjO2GS', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (9, 'Fachmi Fathurahman, S.Pd', 'fachmifathurahman@gmail.com', 'fachmifathurahman', '$2y$10$sNASxSjI2/ol1.dbiy8y9u67qq53EhpkirA6PHq34MRaWF/u9MLBu', 2, 2, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (10, 'Andika Nurhidayat, S.Pd', 'andikanurhidayat2@gmail.com', 'ansikanurhidayat', '$2y$10$EoAU28WQqs4KfG9B3erd3OBy8lL5EiD8FKnDAcn1oAZX2tJQWMIwG', 2, 2, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (11, 'Asep Suherman, SP., MP', 'asepsuherman@gmail.com', 'asepsuherman', '$2y$10$yc4ztsfa2MMapcWfdL6Er.mKsHkpvDpb2EezRhFCvK83d1cApzN6m', 5, 5, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (12, 'Ir. H. Muhammad Ridwan', 'omm_mmo83@yahoo.co.id', 'irhmuhammadridwan', '$2y$10$rVacsqyY072R.lnbjzD/Eu3lC5EtJeha6zfdIXtP9DWcjEVgaF2yW', 5, 5, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (13, 'Afif Amarullah, S.ST', 'afifamarullah@gmail.com', 'afifamarullah', '$2y$10$R5F2ayMRM3txNG40mT65NOAxWFPdVHCb/1WnHmXcQmqgIsQUDll1S', 5, 5, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (14, 'Siswa SPW APL', 'siswaspwapl@gmail.com', 'siswaspwapl', '$2y$10$GYOQq0.v79nF8jQQtmeuwun.rE.h.PNmwMSkJnOPUunfmAtkYOmHC', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (15, 'Siswa SPW TKJ', 'siswaspwtkj@gmail.com', 'siswaspwtkj', '$2y$10$bIzSLHRZRZ8cBUnpCCcv0OjjeiCVzvFTn2g07Ny54qCRz9dokIs2q', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (16, 'Siswa SPW ATPH', 'siswaspwatph@gmail.com', 'siswaspwatph', '$2y$10$OVqPUxjnjF0UYk5xHbUHOu.m8MF17PjjzqplYgtTFZCMm3muNS8nu', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (17, 'Siswa SPW APHP', 'siswaspwaphp@gmail.com', 'siswaspwaphp', '$2y$10$b4q3JfyYvRVnND0sAaZBq.cLxd6ng4PBDWNgiPc21C5RgPpXJIs1O', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (18, 'Siswa SPW ATU', 'siswaspwatu@gmail.com', 'siswaspwatu', '$2y$10$9bvvL4iExOzCd8TCxD.ubOlIfeGMieXDm7rSjjK9lMBAZ/h9lA1zm', 6, 6, 'default.jpg', '', '', '', '', '2022-07-25', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (19, 'Guru Piket', 'gurupiket@gmail.com', 'gurupiket', '$2y$10$oVtIyRr1v.pa4pJHm0xlaOD3zQxgAanA0Dtf2chFmWpWGhLx/eKTC', 5, 5, 'default.jpg', '', '', '', '', '2022-08-26', 1);
INSERT INTO `tbl_users` (`id_user`, `name`, `email`, `username`, `password`, `role_id`, `position`, `image`, `facebook`, `instagram`, `whatsapp`, `icon`, `date_created`, `is_active`) VALUES (20, 'Deri', 'deri@gmail.com', 'deri', '$2y$10$4LpUv3sq5nyE/KpG6USEO.8UuHWPqlP6UqwXd.hiX4QHkXAiC1hzW', 7, 7, 'default.jpg', '', '', '', '', '2022-09-21', 1);


