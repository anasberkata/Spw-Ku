<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url('assets/') ?>img/apple-icon.png">
    <link rel="icon" type="image/png" href="<?= base_url('assets/') ?>img/favicon.png">

    <title>
        <?= $title; ?>
    </title>

    <link href="<?= base_url('assets/') ?>css/nucleo-icons.css" rel="stylesheet" />
    <link href="<?= base_url('assets/') ?>css/nucleo-svg.css" rel="stylesheet" />
    <link href="<?= base_url('assets/') ?>css/nucleo-svg.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="<?= base_url('vendor/') ?>simple-datatables/style.css">

    <link id="pagestyle" href="<?= base_url('assets/') ?>css/spw-dashboard.css?v=2.0.2" rel="stylesheet" />
</head>

<body class="g-sidenav-show bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100"></div>

    <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 fixed-start" id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
                aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href=" https://spw.smkn2cilakucianjur.sch.id " target="_blank">
                <img src="<?= base_url('assets/') ?>img/logos/logo-smkdaku.png" class="navbar-brand-img h-100"
                    alt="main_logo">
                <span class="ms-1 font-weight-bold">SPW SMKN 2 Cilaku</span>
            </a>
        </div>

        <hr class="horizontal dark mt-0">

        <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">MENU KASIR</h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url("kasir/cashier/?id_lab=") . $lab; ?>">
                        <div
                            class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="ni ni-basket text-primary text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Kasir</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url("kasir/selling/?id_lab=") . $lab; ?>">
                        <div
                            class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="ni ni-cart text-success text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Penjualan SPW</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url("kasir/selling_partner/?id_lab=") . $lab; ?>">
                        <div
                            class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="ni ni-cart text-danger text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Penjualan Mitra</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url("kasir/selling_franchise/?id_lab=") . $lab; ?>">
                        <div
                            class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="ni ni-cart text-dark text-sm opacity-10"></i>
                        </div>
                        <span class="nav-link-text ms-1">Penjualan Titipan</span>
                    </a>
                </li>
                <hr class="sidebar-divider mt-3">
            </ul>
        </div>
        <div class="sidenav-footer mx-3 ">
            <a class="btn btn-dark btn-sm w-100 mb-3" href="<?= base_url("dashboard"); ?>"><i
                    class="fa fa-tachometer cursor-pointer me-2"></i> Dashboard</a>
        </div>
    </aside>

    <main class="main-content position-relative border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur"
            data-scroll="false">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <h6 class="font-weight-bolder text-white mb-0">
                        <?= $title; ?>
                    </h6>
                </nav>

                <div class="collapse navbar-collapse justify-content-end mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                    <ul class="navbar-nav justify-content-end">
                        <li class="nav-item d-xl-none ps-3 pe-3 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                                <div class="sidenav-toggler-inner">
                                    <i class="sidenav-toggler-line bg-white"></i>
                                    <i class="sidenav-toggler-line bg-white"></i>
                                    <i class="sidenav-toggler-line bg-white"></i>
                                </div>
                            </a>
                        </li>
                        <!-- <li class="nav-item dropdown pe-2 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-tachometer cursor-pointer me-2"></i> <span class="d-md-inline d-none">Dashboard</span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                <li>
                                    <a class="dropdown-item border-radius-md" type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" href="<?= base_url("dashboard"); ?>">
                                        <div class="d-flex py-1">
                                            <div class="d-flex flex-column justify-content-center">
                                                <h6 class="text-sm font-weight-normal mb-1">
                                                    <span class="font-weight-bold text-dark">Kembali ke Dashboard</span>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li> -->
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->

        <div class="container-fluid pb-5">