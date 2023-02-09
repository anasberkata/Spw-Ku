<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0 mb-3">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Harga Produk</h6>
                    </div>
                    <div class="col">
                        <form role="form" action="<?= base_url('daftar/daftar_search') ?>" method="POST"
                            class="float-end">
                            <div class="row">
                                <div class="col-12 col-lg-4">
                                    <label class="col-form-label text-sm">Nama Produk</label>
                                </div>
                                <div class="col-12 col-lg-6">
                                    <input type="text" class="form-control mb-3" placeholder="Cari Produk"
                                        name="product">
                                </div>
                                <div class="col-12 col-lg-2">
                                    <button type="submit" class="btn btn-primary w-100"><i
                                            class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card-body pt-0 pb-2">
                <div class="row">
                    <?php $i = 1; ?>
                    <?php foreach ($product->result() as $p): ?>
                        <div class="col-6 col-md-4 col-lg-3 mb-4">
                            <div class="card" style="min-height: 380px;">
                                <img src="<?= base_url('assets/img/products/' . $p->image); ?>" class="card-img-top" alt="">
                                <div class="card-body">
                                    <h6 class="card-title">
                                        <?= $p->product; ?>
                                    </h6>
                                    <p class="card-text text-xs font-weight-bold">Harga : Rp.
                                        <?= number_format($p->selling_price, 0, ',', '.'); ?>,-
                                    </p>
                                    <p class="card-text text-xs">Stok :
                                        <?= $p->qty; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <?php $i++; ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>