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
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Barcode</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jumlah</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Total</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>