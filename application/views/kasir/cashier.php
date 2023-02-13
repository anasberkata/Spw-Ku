<div class="row">
    <div class="col-12 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <div class="numbers">
                            <h5>TRANSAKSI KASIR SPW
                                <?= $lab; ?>
                            </h5>

                            <!-- <form id="form1" role="form" action="<?= base_url(); ?>kasir/add" method="POST" accept-charset="utf-8"> -->
                            <!-- <form role="form" action="" method="POST" accept-charset="utf-8"> -->
                            <div class="mb-3">
                                <label>Barcode (Scan / Ketikan Nomor Barcode)</label>
                                <input type="text" class="form-control" placeholder="Barcode" autofocus
                                    autocomplete="off" onkeyup="get_product()" id="barcode_product" name="barcode">

                                <script type="text/javascript">
                                    function get_product() {
                                        var barcode = $("#barcode_product").val();
                                        $.ajax({
                                            url: '<?= base_url('autocomplete/ajax_barcode/'); ?>',
                                            method: "GET",
                                            data: "barcode=" + barcode,
                                        }).success(function (data) {
                                            var json = data,
                                                obj = JSON.parse(json);
                                            console.log(obj);
                                            $('#id_product').val(obj.id_product);
                                            // $('#barcode_product').val(obj.code);
                                            $('#name_product').val(obj.product);
                                            $('#first_qty').val(obj.qty);
                                            $('#basic_price').val(obj.basic_price);
                                            $('#selling_price').val(obj.selling_price);
                                            $('#gambar').val(obj.image);
                                        });
                                    }
                                </script>
                            </div>
                            <div class="mb-3">
                                <label>Produk (Ketikan Nama Produk)</label>
                                <input type="hidden" name="id_lab" id="id_lab" value="<?= $lab; ?>" />
                                <input type="hidden" name="id" id="id_product" />
                                <input type="hidden" name="gambar" id="gambar" />
                                <input type="hidden" name="first_stock" id="first_qty">
                                <input type="hidden" name="qty" id="quantity" value="1">

                                <input type="text" name="nama" id="name_product" class="form-control"
                                    placeholder="Produk" list="product" autocomplete="off" onkeyup="get_price()" />
                                <datalist id="product">
                                    <?php foreach ($produk as $p): ?>
                                        <option data-value="<?= $p['id_product']; ?>"><?= $p['product']; ?></option>
                                    <?php endforeach; ?>
                                </datalist>
                                <input type="hidden" name="id_product" id="id_product-hidden">

                                <script>
                                    document.querySelector('input[list]').addEventListener('input', function (e) {
                                        var input = e.target,
                                            list = input.getAttribute('list'),
                                            options = document.querySelectorAll('#' + list + ' option'),
                                            hiddenInput = document.getElementById(input.getAttribute('id') + '-hidden'),
                                            inputValue = input.value;

                                        hiddenInput.value = inputValue;

                                        for (var i = 0; i < options.length; i++) {
                                            var option = options[i];

                                            if (option.innerText === inputValue) {
                                                hiddenInput.value = option.getAttribute('data-value');
                                                break;
                                            }
                                        }
                                    });
                                </script>

                                <script type="text/javascript">
                                    function get_price() {
                                        var product = $("#name_product").val();
                                        $.ajax({
                                            url: '<?= base_url('autocomplete/ajax_name_product/'); ?>',
                                            method: "GET",
                                            data: "product=" + product,
                                        }).success(function (data) {
                                            var json = data,
                                                obj = JSON.parse(json);
                                            console.log(obj);
                                            $('#id_product').val(obj.id_product);
                                            $('#barcode_product').val(obj.code);
                                            // $('#name_product').val(obj.product);
                                            $('#first_qty').val(obj.qty);
                                            $('#basic_price').val(obj.basic_price);
                                            $('#selling_price').val(obj.selling_price);
                                            $('#gambar').val(obj.image);
                                        });
                                    }
                                </script>



                            </div>
                            <div class="mb-3">
                                <label>Harga</label>
                                <input type="hidden" name="harga_dasar" id="basic_price" class="form-control"
                                    placeholder="Harga" readonly />
                                <input type="text" name="harga" id="selling_price" class="form-control"
                                    placeholder="Harga" readonly />
                            </div>

                            <div class=" mb-0">
                                <button type="submit" class="add_cart btn btn-success w-100" name="product_add"
                                    style="height: 100px;">Tambah</button>
                            </div>
                            <!-- </form> -->
                        </div>
                    </div>
                    <div class="col-12 col-sm-8 text-end">
                        <form action="<?= base_url('kasir/update_cart'); ?>" method="post" name="frmShopping"
                            id="frmShopping" class="form-horizontal" enctype="multipart/form-data">
                            <?php if ($cart = $this->cart->contents()): ?>
                                <h5>PEMBAYARAN</h5>
                                <div class="table-responsive p-0 mb-3">
                                    <table class="table align-items-center mb-0">
                                        <tr>
                                            <th
                                                class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-start">
                                                Produk</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Harga</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                                width="100px">Qty</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Jumlah</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Action</th>
                                        </tr>
                                        <?php
                                        $grand_total = 0; foreach ($cart as $item):
                                            $grand_total = $grand_total + $item['subtotal'];
                                            ?>
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][id]"
                                                value="<?= $item['id']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][rowid]"
                                                value="<?= $item['rowid']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][name]"
                                                value="<?= $item['name']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][price]"
                                                value="<?= $item['price']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][gambar]"
                                                value="<?= $item['gambar']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][qty]"
                                                value="<?= $item['qty']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][basic_price]"
                                                value="<?= $item['basic_price']; ?>" />
                                            <input type="hidden" name="cart[<?= $item['id']; ?>][first_qty]"
                                                value="<?= $item['first_qty']; ?>" />

                                            <tr>
                                                <td>
                                                    <p class="text-xs font-weight-bold mb-0 text-start">
                                                        <?= $item['name']; ?>
                                                    </p>
                                                </td>
                                                <td>
                                                    <p class="text-xs font-weight-bold mb-0">Rp.
                                                        <?= number_format($item['price'], 0, ",", "."); ?>
                                                    </p>
                                                </td>
                                                <td>
                                                    <p class="text-xs font-weight-bold mb-0">
                                                        <input type="hidden" class="form-control form-control-sm" name="id_lab"
                                                            value="<?= $lab; ?>">
                                                        <input type="number" class="form-control form-control-sm"
                                                            name="cart[<?= $item['id']; ?>][qty]"
                                                            value="<?= $item['qty']; ?>" />
                                                        <!-- <?= $item['qty']; ?> -->
                                                    </p>
                                                </td>
                                                <td>
                                                    <p class="text-xs font-weight-bold mb-0">Rp.
                                                        <?= number_format($item['subtotal'], 0, ",", ".") ?>
                                                    </p>
                                                </td>
                                                <td>
                                                    <a href="<?= base_url('kasir/delete/?rowid=') . $item['rowid'] . '&id_lab=' . $lab; ?>"
                                                        class="badge bg-danger pr-2 pl-2"><i
                                                            class="fa fa-trash cursor-pointer"></i></a>
                                                </td>
                                            <?php endforeach; ?>
                                        </tr>
                                    </table>
                                    <hr>
                                    <div class="row">
                                        <div class="col-8">
                                            <h1 class="text-danger" style="font-size: 60px;">Rp.
                                                <?= number_format($grand_total, 0, ",", "."); ?>
                                            </h1>
                                        </div>
                                        <div class="col-4">
                                            <a href="<?= base_url('kasir/delete/?rowid=all') . '&id_lab=' . $lab; ?>"
                                                class="btn btn-sm btn-danger w-75 mb-3">Kosongkan</a>
                                            <br>
                                            <button class="btn btn-sm btn-success w-75 mb-3" type="submit">Update</button>
                                            <br>
                                            <a href="<?= base_url('kasir/order/?id_lab=') . $lab; ?>"
                                                class="btn btn-sm btn-primary w-75 mb-3">Bayar</a>
                                        </div>
                                    </div>
                                </div>
                            <?php else: ?>
                                <h5>PEMBAYARAN</h5>
                                <?= $this->session->flashdata('message'); ?>
                                <div class="table-responsive p-0 mb-3">
                                    <table class="table align-items-center mb-0">
                                        <tr>
                                            <th
                                                class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-start">
                                                Produk</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Harga</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Qty</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Jumlah</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Action</th>
                                        </tr>
                                    </table>
                                </div>
                                <p class="w-100 text-center text-dark text-xs"><i>Silahkan scan atau cari produk</i></p>

                                <h6 class="text-center">Tata cara menggunakan aplikasi kasir</h6>
                                <ul class="mx-5">
                                    <li class="w-100 text-start text-dark text-xs">Kamu bisa scan barcode produk agar
                                        produk beserta harga muncul. Kemudian klik <i>tombol tambah</i> untuk
                                        menambahkan ke tabel pembayaran.</li>
                                    <li class="w-100 text-start text-dark text-xs">jika produk tidak ada atau tidak
                                        sesuai dengan hasil scan, kamu bisa mengetik nama produk di bagian produk.</li>
                                    <li class="w-100 text-start text-dark text-xs">Setelah produk muncul, pilih
                                        produknya lalu tekan tombol tambah.</li>
                                </ul>

                                <h6 class="text-center">Cart</h6>
                                <ul class="mx-5">
                                    <li class="w-100 text-start text-dark text-xs">Tombol Kosongkan digunakan untuk
                                        mengosongkan Cart.</li>
                                    <li class="w-100 text-start text-dark text-xs">Tombol Update digunakan untuk
                                        mengubah nilai keseluruhan jika ada perubahan jumlah produk yang dibeli.</li>
                                    <li class="w-100 text-start text-dark text-xs">Tombol Bayar digunakan untuk
                                        menginput pembayaran ke dalam database. tombol Bayar di klik setelah pembeli
                                        memberikan uang.</li>
                                </ul>
                            <?php endif; ?>
                        </form>
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
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                        <h6>Daftar Produk (
                            <?= $count_products; ?> Produk)
                        </h6>
                    </div>
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                        <!-- <form role="form" action="<?= base_url('kasir/search') ?>" method="POST" class="">
                            <div class="row">
                                <input type="hidden" class="form-control mb-2" id="id_lab" name="id_lab" value="<?= $lab; ?>">
                                <div class="col-lg-4 col-sm-4">
                                    <label class="col-form-label text-sm">Nama Produk</label>
                                </div>
                                <div class="col-lg-6 col-sm-6">
                                    <input type="text" class="form-control mb-2" id="keyword" placeholder="Cari Produk" name="keyword" onkeyup="get_p()">
                                </div>
                                <div class="col-lg-2 col-sm-2">
                                    <button type="submit" class="btn btn-primary mb-2 w-100 get-p"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form> -->
                    </div>
                </div>
            </div>




            <!-- PRODUK CARD -->
            <!-- <div class="card-body pt-0 pb-2">
                <div class="row">
                    <?php foreach ($produk as $row): ?>
                                                                    <div class="col-3 mb-4">
                                                                        <div class="card" style="min-height: 380px;">
                                                                            <form action="<?= base_url(); ?>kasir/add" method="post" accept-charset="utf-8">
                                                                                <a href="#"><img class="img-thumbnail" src="<?= base_url('assets/img/products/') . $row['image']; ?>" /></a>
                                                                                <div class="card-body">
                                                                                    <h6 class="card-title">
                                                                                        <a href="#"><?= $row['product']; ?></a>
                                                                                    </h6>
                                                                                    <p class="card-text text-xs font-weight-clod">Rp. <?= number_format($row['selling_price'], 0, ",", "."); ?></p>
                                                                                </div>
                                                                                <div class="card-footer">
                                                                                    <input type="hidden" name="id_lab" value="<?= $row['id_lab']; ?>" />
                                                                                    <input type="hidden" name="id" value="<?= $row['id_product']; ?>" />
                                                                                    <input type="hidden" name="nama" value="<?= $row['product']; ?>" />
                                                                                    <input type="hidden" name="stok_awal" value="<?= $row['qty']; ?>" />
                                                                                    <input type="hidden" name="harga_dasar" value="<?= $row['basic_price']; ?>" />
                                                                                    <input type="hidden" name="harga" value="<?= $row['selling_price']; ?>" />
                                                                                    <input type="hidden" name="gambar" value="<?= $row['image']; ?>" />
                                                                                    <input type="hidden" name="qty" value="1" />
                                                                                    <button type="submit" class="btn btn-sm btn-success w-100">Tambah</button>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                    <?php endforeach; ?>
                </div>
            </div> -->






            <!-- PRODUK TABLE -->
            <div class="card-body pt-0 pb-2">
                <div class="row">
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga Jual</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">
                                            Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($produk as $p): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $p['product']; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($p['selling_price'], 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td class="text-center">
                                                <form action="<?= base_url(); ?>kasir/add" method="post"
                                                    accept-charset="utf-8">

                                                    <input type="hidden" name="id_lab" value="<?= $p['id_lab']; ?>" />
                                                    <input type="hidden" name="id" value="<?= $p['id_product']; ?>" />
                                                    <input type="hidden" name="nama" value="<?= $p['product']; ?>" />
                                                    <input type="hidden" name="stok_awal" value="<?= $p['qty']; ?>" />
                                                    <input type="hidden" name="harga_dasar"
                                                        value="<?= $p['basic_price']; ?>" />
                                                    <input type="hidden" name="harga" value="<?= $p['selling_price']; ?>" />
                                                    <input type="hidden" name="gambar" value="<?= $p['image']; ?>" />
                                                    <input type="hidden" name="qty" value="1" />
                                                    <button type="submit"
                                                        class="btn btn-sm btn-success mb-0">Tambah</button>
                                                </form>
                                            </td>
                                        </tr>
                                        <?php $i++; ?>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer pt-3  ">
    <div class="container-fluid">
        <div class="row align-items-center justify-content-lg-between">
            <div class="col mb-lg-0 mb-4">
                <div class="copyright text-center text-sm text-muted text-lg-start">
                    ©
                    <script>
                        document.write(new Date().getFullYear())
                    </script>.
                    Dev by
                    <a href="https://www.instagram.com/anasberkata" class="font-weight-bold" target="_blank">TIM SPW SMK
                        NEGERI 2 CILAKU CIANJUR</a>
                </div>
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/js/jquery-2.2.3.min.js' ?>"></script>
<script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/js/bootstrap.js' ?>"></script>

<!-- INSERT CART DARI BARCODE -->
<script type="text/javascript">
    $(document).ready(function () {
        $('.add_cart').click(function () {
            var id_lab = document.getElementById("id_lab").value;
            var id_product = document.getElementById("id_product").value;
            var name_product = document.getElementById("name_product").value;
            var first_qty = document.getElementById("first_qty").value;
            var gambar = document.getElementById("gambar").value;
            var basic_price = document.getElementById("basic_price").value;
            var selling_price = document.getElementById("selling_price").value;
            var quantity = document.getElementById("quantity").value;


            $.ajax({
                url: "<?= base_url('kasir/add_by_barcode'); ?>",
                method: "POST",
                data: {
                    lab_id: id_lab,
                    product_id: id_product,
                    product_name: name_product,
                    first_qty: first_qty,
                    gambar: gambar,
                    basic_price: basic_price,
                    selling_price: selling_price,
                    quantity: quantity
                },
                success: function () {
                    window.location = "<?= base_url('kasir/cashier/?id_lab=') ?>" + id_lab;
                }
            });
        });
    });
</script>




<!-- PENCARIAN -->
<!-- <script type="text/javascript">
    function get_p() {
        var id_lab = document.getElementById("id_lab").value;
        var keyword = document.getElementById("keyword").value;

        $.ajax({
            url: "<?= base_url('kasir/search'); ?>",
            method: "POST",
            data: {
                id_lab: id_lab,
                keyword: keyword
            },
            success: function() {
                window.location = "<?= base_url('kasir/cashier/?id_lab=') ?>" + id_lab;
            }
        });
    }
</script> -->