<div class="row">
    <div class="col-12 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="row">
                        <div class="col-12 col-sm-4">
                            <div class="numbers">
                                <h5>TRANSAKSI</h5>
                                <form id="form1" role="form" action="<?= base_url(); ?>keranjang/tambah" method="POST" accept-charset="utf-8">
                                    <!-- <form role="form" action="" method="POST" accept-charset="utf-8"> -->
                                    <div class="mb-3">
                                        <label>Barcode</label>
                                        <input type="text" class="form-control" list="product" placeholder="Barcode" autofocus autocomplete="off" onkeyup="get_product()" id="barcode_product" name="barcode">
                                        <datalist id="product">
                                            <?php foreach ($produk as $p) : ?>
                                                <option data-value="<?= $p['code']; ?>"><?= $p['code']; ?></option>
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
                                                    // $('#barcode_product').val(obj.code);
                                                    $('#name_product').val(obj.product);
                                                    $('#selling_price').val(obj.selling_price);
                                                    $('#gambar').val(obj.image);
                                                });
                                            }
                                        </script>
                                    </div>
                                    <div class="mb-3">
                                        <label>Produk</label>
                                        <input type="hidden" name="id_lab" value="<?= $lab; ?>" class="form-control" />
                                        <input type="hidden" name="id" id="id_product" class="form-control" readonly />
                                        <input type="text" name="nama" id="name_product" class="form-control" placeholder="Produk" readonly />
                                        <input type="hidden" name="harga" id="selling_price" class="form-control" placeholder="Harga" readonly />
                                        <input type="hidden" name="gambar" class="form-control" id="gambar" />
                                        <input type="hidden" class="form-control" id="quantity" placeholder="Jumlah Barang" name="qty" value="1">
                                    </div>

                                    <div class=" mb-0">
                                        <button type="submit" class="add_cart_by_barcode btn btn-success w-100" name="product_add" style="height: 100px;">Tambah</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-12 col-sm-8 text-end">
                            <form action="<?= base_url('keranjang/ubah_cart'); ?>" method="post" name="frmShopping" id="frmShopping" class="form-horizontal" enctype="multipart/form-data">
                                <?php if ($cart = $this->cart->contents()) : ?>
                                    <h5>PEMBAYARAN</h5>
                                    <div class="table-responsive p-0 mb-3">
                                        <table class="table align-items-center mb-0">
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-start">Produk</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="100px">Qty</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jumlah</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
                                            </tr>
                                            <?php
                                            $grand_total = 0;

                                            foreach ($cart as $item) :
                                                $grand_total = $grand_total + $item['subtotal'];
                                            ?>
                                                <input type="hidden" name="cart[<?= $item['id']; ?>][id]" value="<?= $item['id']; ?>" />
                                                <input type="hidden" name="cart[<?= $item['id']; ?>][rowid]" value="<?= $item['rowid']; ?>" />
                                                <input type="hidden" name="cart[<?= $item['id']; ?>][name]" value="<?= $item['name']; ?>" />
                                                <input type="hidden" name="cart[<?= $item['id']; ?>][price]" value="<?= $item['price']; ?>" />
                                                <input type="hidden" name="cart[<?= $item['id']; ?>][qty]" value="<?= $item['qty']; ?>" />

                                                <tr>
                                                    <td>
                                                        <p class="text-xs font-weight-bold mb-0 text-start"><?= $item['name']; ?></p>
                                                    </td>
                                                    <td>
                                                        <p class="text-xs font-weight-bold mb-0">Rp. <?= number_format($item['price'], 0, ",", "."); ?></p>
                                                    </td>
                                                    <td>
                                                        <p class="text-xs font-weight-bold mb-0">
                                                            <input type="hidden" class="form-control form-control-sm" name="id_lab" value="<?= $lab; ?>">
                                                            <input type="number" class="form-control form-control-sm" name="cart[<?= $item['id']; ?>][qty]" value="<?= $item['qty']; ?>" />
                                                            <!-- <?= $item['qty']; ?> -->
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p class="text-xs font-weight-bold mb-0">Rp. <?= number_format($item['subtotal'], 0, ",", ".") ?></p>
                                                    </td>
                                                    <td>
                                                        <a href="<?= base_url('keranjang/hapus/?rowid=') . $item['rowid'] . '&id_lab=' . $lab; ?>" class="badge bg-danger pr-2 pl-2"><i class="fa fa-trash cursor-pointer"></i></a>
                                                    </td>
                                                <?php endforeach; ?>
                                                </tr>
                                        </table>
                                        <hr>
                                        <div class="row">
                                            <div class="col-8">
                                                <h1 class="text-danger" style="font-size: 60px;">Rp. <?= number_format($grand_total, 0, ",", "."); ?></h1>
                                            </div>
                                            <div class="col-4">
                                                <a href="<?= base_url('keranjang/hapus/?rowid=all') . '&id_lab=' . $lab; ?>" class="btn btn-sm btn-danger w-75">Kosongkan</a>
                                                <br>
                                                <button class="btn btn-sm btn-success w-75" type="submit">Update</button>
                                                <br>
                                                <a href="<?= base_url('keranjang/proses_order/?id_lab=') . $lab; ?>" class="btn btn-sm btn-primary w-75">Bayar</a>
                                            </div>
                                        </div>
                                    </div>
                                <?php else : ?>
                                    <h5>PEMBAYARAN</h5>
                                    <?= $this->session->flashdata('message'); ?>
                                    <div class="table-responsive p-0 mb-3">
                                        <table class="table align-items-center mb-0">
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-start">Produk</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jumlah</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
                                            </tr>
                                        </table>
                                    </div>
                                    <p class="w-100 text-center text-dark text-xs"><i>Silahkan scan atau cari produk</i></p>
                                <?php endif; ?>
                            </form>
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
                        <h6>Daftar Produk (<?= $count_products; ?> Produk)</h6>
                    </div>
                    <div class="col">
                        <form role="form" action="<?= base_url() ?>" method="POST" class="float-end">
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
                    <?php foreach ($produk as $row) : ?>
                        <div class="col-3 mb-4">
                            <div class="card" style="min-height: 380px;">
                                <form action="<?= base_url(); ?>keranjang/tambah" method="post" accept-charset="utf-8">
                                    <a href="#"><img class="img-thumbnail" src="<?= base_url('assets/img/products/') . $row['image']; ?>" /></a>
                                    <div class="card-body">
                                        <h6 class="card-title">
                                            <a href="#"><?= $row['product']; ?></a>
                                        </h6>
                                        <p class="card-text text-xs font-weight-clod">Rp. <?= number_format($row['selling_price'], 0, ",", "."); ?></=>
                                    </div>
                                    <div class="card-footer">
                                        <input type="hidden" name="id_lab" value="<?= $row['id_lab']; ?>" />
                                        <input type="hidden" name="id" value="<?= $row['id_product']; ?>" />
                                        <input type="hidden" name="nama" value="<?= $row['product']; ?>" />
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
            </div>
        </div>
    </div>
</div>

<footer class="footer pt-3  ">
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