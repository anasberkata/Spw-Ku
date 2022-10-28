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

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="<?= base_url('assets/') ?>css/nucleo-icons.css" rel="stylesheet" />
    <link href="<?= base_url('assets/') ?>css/nucleo-svg.css" rel="stylesheet" />
    <link href="<?= base_url('assets/') ?>css/nucleo-svg.css" rel="stylesheet" />

    <link rel="stylesheet" href="<?= base_url('vendor/') ?>simple-datatables/style.css">

    <link id="pagestyle" href="<?= base_url('assets/') ?>css/spw-dashboard.css?v=2.0.2" rel="stylesheet" />
</head>

<body class="g-sidenav-show bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 fixed-start" id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href=" https://spw.smkn2cilakucianjur.sch.id " target="_blank">
                <img src="<?= base_url('assets/') ?>img/logos/logo-smkdaku.png" class="navbar-brand-img h-100" alt="main_logo">
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
                    <a class="nav-link" href="<?= base_url("kasir/selling") ?>">
                        <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center"><i class="ni ni-cart text-success text-sm opacity-10"></i></div>
                        <br>
                        <span class="nav-link-text ms-1">Penjualan</span>
                    </a>
                </li>
                <hr class="sidebar-divider mt-3">
            </ul>
        </div>
        <div class="sidenav-footer mx-3 ">
            <a class="btn btn-dark btn-sm w-100 mb-3" href="<?= base_url("dashboard"); ?>"><i class="fa fa-tachometer cursor-pointer me-2"></i> Dashboard</a>
        </div>
    </aside>

    <main class="main-content position-relative border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
            <div class="container-fluid py-1 px-3 mt-3">
                <nav aria-label="breadcrumb">
                    <h6 class="font-weight-bolder text-white mb-0"><?= $title; ?></h6>
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
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->

        <div class="container-fluid py-4">
            <!-- Dimulai dari sini -->
            <div class="row">
                <div class="col-12 mb-4">
                    <div class="card">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="row">
                                    <div class="col-12 col-sm-4">
                                        <div class="numbers">
                                            <h5>TRANSAKSI</h5>
                                            <form role="form" action="<?= base_url('kasir/cashier_cart_add') ?>" method="POST">
                                                <!-- <input type="hidden" name="id_lab" value="<?= $lab ?>"> -->
                                                <div class="mb-3">
                                                    <label>Barcode</label>
                                                    <input type="text" class="form-control" list="product" placeholder="Barcode" autofocus autocomplete="off" onkeyup="get_product()" id="barcode_product">
                                                    <datalist id="product">
                                                        <?php foreach ($product->result() as $p) : ?>
                                                            <option data-value="<?= $p->code ?>"><?= $p->code ?></option>
                                                        <?php endforeach; ?>
                                                    </datalist>

                                                    <script type="text/javascript">
                                                        function get_product() {
                                                            var barcode = $("#barcode_product").val();
                                                            $.ajax({
                                                                url: '<?= base_url('autocomplete/ajax_barcode/'); ?>',
                                                                method: "GET",
                                                                data: "barcode=" + barcode,
                                                            }).success(function(data) {
                                                                var json = data,
                                                                    obj = JSON.parse(json);
                                                                console.log(obj);
                                                                $('#id_product').val(obj.id_product);
                                                                $('#name_product').val(obj.product);
                                                                $('#selling_price').val(obj.selling_price);
                                                                $('#quantity').val(1);
                                                            });
                                                        }
                                                    </script>
                                                </div>
                                                <div class="mb-3">
                                                    <label>Produk</label>
                                                    <input type="hidden" class="form-control" id="id_product" name="product_id" readonly>
                                                    <input type="text" class="form-control" id="name_product" placeholder="Produk" name="product_name" readonly>
                                                    <input type="hidden" class="form-control" id="selling_price" placeholder="Harga" name="product_price" readonly>
                                                </div>
                                                <div class="mb-3">
                                                    <label>Jumlah</label>
                                                    <input type="number" class="form-control" id="quantity" placeholder="Jumlah Barang" name="quantity">
                                                </div>

                                                <div class="mb-0">
                                                    <button type="submit" class="add_cart_by_barcode btn btn-success w-100" style="height: 100px;">Tambah</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-8 text-end" id="detail_cart">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card mb-4">
                        <div class="card-header pb-0 mb-3">
                            <div class="row">
                                <div class="col">
                                    <h6>Daftar Produk</h6>
                                </div>
                                <div class="col">
                                    <form role="form" action="<?= base_url('kasir/cashier_search') ?>" method="POST" class="float-end">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <label class="col-form-label text-sm">Nama Produk</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" placeholder="Cari Produk" name="product">
                                            </div>
                                            <div class="col-lg-2">
                                                <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="card-body pt-0 pb-2">
                            <div class="row">
                                <?php foreach ($product->result() as $row) : ?>
                                    <div class="col-6 col-md-4 col-lg-3 mb-4">
                                        <div class="card" style="min-height: 200px;">
                                            <img src="<?php echo base_url() . 'assets/img/products/' . $row->image; ?>" class="card-img-top" alt="Foto Produk">
                                            <div class="card-body">
                                                <h6 class="card-title"><?php echo $row->product; ?></h6>

                                                <p class="card-text text-xs font-weight-bold"><?php echo 'Rp ' . number_format($row->selling_price); ?></p>

                                                <label class="col-form-label text-sm">Qty</label>

                                                <input type="number" name="quantity" id="<?php echo $row->id_product; ?>" value="1" class="quantity form-control form-control-sm mb-2">

                                                <button class="add_cart btn btn-success btn-sm w-100" data-productid="<?= $row->id_product; ?>" data-productname="<?= $row->product; ?>" data-productprice="<?= $row->selling_price; ?>">Tambah</button>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer class="footer pt-3">
                <div class="container-fluid">
                    <div class="row align-items-center justify-content-lg-between">
                        <div class="col mb-lg-0 mb-4">
                            <div class="copyright text-center text-sm text-muted text-lg-start">
                                © <script>
                                    document.write(new Date().getFullYear())
                                </script>.
                                Dev by
                                <a href="https://www.instagram.com/anasberkata" class="font-weight-bold" target="_blank">TIM SPW SMK NEGERI 2 CILAKU CIANJUR</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </main>

    <script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/js/jquery-2.2.3.min.js' ?>"></script>
    <script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/js/bootstrap.js' ?>"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.add_cart').click(function() {
                var product_id = $(this).data("productid");
                var product_name = $(this).data("productname");
                var product_price = $(this).data("productprice");
                var quantity = $('#' + product_id).val();
                $.ajax({
                    url: "<?= base_url('kasir/cashier_cart_add'); ?>",
                    method: "POST",
                    data: {
                        product_id: product_id,
                        product_name: product_name,
                        product_price: product_price,
                        quantity: quantity
                    },
                    success: function(data) {
                        $('#detail_cart').html(data);
                    }
                });
            });

            $('.add_cart_by_barcode').click(function() {
                var product_id = document.getElementById("product_id").value;
                var product_name = document.getElementById("product_name").value;
                var product_price = document.getElementById("product_price").value;
                var quantity = $('#' + product_id).val();
                $.ajax({
                    url: "<?= base_url('kasir/cashier_cart_add'); ?>",
                    method: "POST",
                    data: {
                        product_id: product_id,
                        product_name: product_name,
                        product_price: product_price,
                        quantity: quantity
                    },
                    success: function(data) {
                        $('#detail_cart').html(data);
                    }
                });
            });

            // Load shopping cart
            $('#detail_cart').load("<?= base_url('kasir/cashier_cart_load'); ?>");

            //Hapus Item Cart
            $(document).on('click', '.hapus_cart', function() {
                var row_id = $(this).attr("id"); //mengambil row_id dari artibut id
                $.ajax({
                    url: "<?= base_url('kasir/cashier_cart_delete'); ?>",
                    method: "POST",
                    data: {
                        row_id: row_id
                    },
                    success: function(data) {
                        $('#detail_cart').html(data);
                    }
                });
            });
        });
    </script>

    <!--   Core JS Files   -->
    <!-- <script src="<?= base_url('assets/') ?>js/core/popper.min.js"></script> -->
    <!-- <script src="<?= base_url('assets/') ?>js/core/bootstrap.min.js"></script> -->
    <!-- <script src="<?= base_url('assets/') ?>js/plugins/perfect-scrollbar.min.js"></script> -->
    <!-- <script src="<?= base_url('assets/') ?>js/plugins/smooth-scrollbar.min.js"></script> -->
    <!-- <script src="<?= base_url('assets/') ?>js/plugins/chartjs.min.js"></script> -->

    <!-- <script src="<?= base_url('vendor/') ?>simple-datatables/simple-datatables.js"></script> -->
    <!-- <script>
    let data = document.querySelector('#data-table');
    let dataTable = new simpleDatatables.DataTable(data);
</script> -->

    <!-- AJAX GOOGLE -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->

    <!-- <script type="text/javascript">
    window.setTimeout(function() {
        $(".alert").fadeTo(500, 0).slideUp(500, function() {
            $(this).remove();
        });
    }, 4000);
</script> -->

    <!-- <script src="<?= base_url('assets/js/jquery.min.js'); ?>"></script> -->



    <!-- <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script> -->

    <!-- Github buttons -->
    <!-- <script async defer src="https://buttons.github.io/buttons.js"></script> -->
    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <!-- <script src="<?= base_url('assets/') ?>js/spw-dashboard.min.js?v=2.0.2"></script> -->
</body>

</html>