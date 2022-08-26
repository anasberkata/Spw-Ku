<!-- <form role="form" action="" method="POST">
    <div class="modal-body">
        <div class="mb-3">
            <select onchange="get_price()" class="form-select" aria-label="Default select" name="id_product" id="id_product">
                <option selected>Pilih Produk</option>
                <?php foreach ($product->result() as $p) : ?>
                    <option value="<?= $p->id_product ?>"><?= $p->product ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="mb-3">
            <label>Qty Produk</label>
            <input type="text" class="form-control" placeholder="Jumlah Produk" name="qty_product">
        </div>
        <div class="mb-3">
            <label>Harga Dasar (Rp.)</label>
            <input type="text" class="form-control" placeholder="Harga Dasar Produk" name="basic_price" id="basic_price">
        </div>
        <div class="mb-3">
            <label>Harga Jual (Rp.)</label>
            <input type="text" class="form-control" placeholder="Harga Jual Produk" name="selling_price" id="selling_price">
        </div>
    </div>
</form> -->




<button type="button" class="btn btn-dark btn-sm mb-3 ms-2 float-end" data-bs-toggle="modal" data-bs-target="#modalProductAdd">
    Tambah
</button>

<!-- Modal Tambah Menu -->
<div class="modal fade" id="modalProductAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">Tambah Produk</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form role="form" action="<?= base_url('pembelian/purchase_detail_add') ?>" method="POST">
                <div class="modal-body">
                    <div class="mb-3">
                        <select onchange="get_price()" class="form-select" aria-label="Default select" name="id_product" id="id_product">
                            <option selected>Pilih Produk</option>
                            <?php foreach ($product->result() as $p) : ?>
                                <option value="<?= $p->id_product ?>"><?= $p->product ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label>Qty Produk</label>
                        <input type="text" class="form-control" placeholder="Jumlah Produk" name="qty_product">
                    </div>
                    <div class="mb-3">
                        <label>Harga Dasar (Rp.)</label>
                        <input type="text" class="form-control" placeholder="Harga Dasar Produk" name="basic_price" id="basic_price">
                    </div>
                    <div class="mb-3">
                        <label>Harga Jual (Rp.)</label>
                        <input type="text" class="form-control" placeholder="Harga Jual Produk" name="selling_price" id="selling_price">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
                </div>


            </form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- <script src="<?= base_url('assets/js/jquery.min.js'); ?>"></script> -->

<script type="text/javascript">
    function get_price() {
        var id = $("#id_product").val();
        $.ajax({
            url: '<?= base_url('autocomplete/ajax_produk/'); ?>',
            method: "GET",
            data: "id=" + id,
        }).success(function(data) {
            var json = data,
                obj = JSON.parse(json);
            console.log(obj);
            $('#basic_price').val(obj.basic_price);
            $('#selling_price').val(obj.selling_price);
        });
    }
</script>