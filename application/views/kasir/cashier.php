<!-- SELAMAT DATANG -->
<div class="row">
    <div class="col-12 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-12 col-sm-4">
                        <div class="numbers">

                            <h5>TRANSAKSI</h5>
                            <!-- <p class="text-sm mb-0 text-uppercase font-weight-bolder">Transaksi</p> -->
                            <form role="form" action="<?= base_url('kasir/casheer_detail_add') ?>" method="POST">
                                <input type="hidden" name="id_lab" value="<?= $lab ?>">
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
                                                $('#name_product').val(obj.product);
                                                $('#total_product').val(1);
                                            });
                                        }
                                    </script>
                                </div>
                                <div class="mb-3">
                                    <label>Produk</label>
                                    <input type="text" class="form-control" id="name_product" placeholder="Produk" readonly>
                                </div>
                                <div class="mb-3">
                                    <label>Jumlah</label>
                                    <input type="number" class="form-control" id="total_product" placeholder="Jumlah Barang" name="qty_selling">
                                </div>

                                <div class="mb-0">
                                    <button type="submit" class="btn btn-success w-100" style="height: 100px;">Tambah</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-sm-8 text-end">
                        <h5 class="text-bolder">TOTAL PEMBAYARAN : </h5>
                        <div class="row">
                            <div class="col-8">
                                <h1 class="text-danger mt-3" style="font-size: 60px;">Rp. 80.000</h1>
                            </div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-warning w-100" style="height: 100px;">Bayar</button>
                            </div>
                        </div>
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table1">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Subtotal</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="detail-cart">

                                </tbody>
                            </table>
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
                        <form role="form" action="<?= base_url('kasir/casheer_search') ?>" method="POST" class="float-end">
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
                    <?php foreach ($product->result() as $p) : ?>
                        <div class="col-6 col-md-4 col-lg-3 mb-4">
                            <div class="card" style="min-height: 200px;">
                                <img src="<?= base_url('assets/img/products/' . $p->image); ?>" class="card-img-top" alt="">
                                <div class="card-body">
                                    <h6 class="card-title"><?= $p->product; ?></h6>
                                    <p class="card-text text-xs font-weight-bold">Harga : Rp. <?= number_format($p->selling_price, 0, ',', '.'); ?>,-</p>
                                    <button class="btn btn-success btn-sm w-100 add-cart" data-productid="<?= $p->id_product; ?>" data-productname="<?= $p->product; ?>" data-productprice="<?= $p->selling_price; ?>">Tambah</button>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/jquery-2.2.3.min.js' ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/bootstrap.js' ?>"></script>

                    <script type="text/javascript">
                        $(document).ready(function() {
                            $('.add_cart').click(function() {
                                var produk_id = $(this).data("productid");
                                var produk_nama = $(this).data("productname");
                                var produk_harga = $(this).data("productprice");
                                var quantity = $('#' + produk_id).val();
                                $.ajax({
                                    url: "<?= base_url('kasir/casheer_cart_add'); ?>",
                                    method: "POST",
                                    data: {
                                        produk_id: produk_id,
                                        produk_nama: produk_nama,
                                        produk_harga: produk_harga,
                                        quantity: quantity
                                    },
                                    success: function(data) {
                                        $('#detail_cart').html(data);
                                    }
                                });
                            });

                            // Load shopping cart
                            $('#detail_cart').load("<?= base_url('kasir/casheer_cart_load'); ?>");

                            //Hapus Item Cart
                            $(document).on('click', '.hapus_cart', function() {
                                var row_id = $(this).attr("id"); //mengambil row_id dari artibut id
                                $.ajax({
                                    url: "<?= base_url('kasir/casheer_cart_delete'); ?>",
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
                </div>
            </div>
        </div>
    </div>
</div>