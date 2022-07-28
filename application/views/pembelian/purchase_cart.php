<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Keranjang Pembelian Produk Lab SPW <?= $lab; ?></h6>
                    </div>
                    <!-- <div class="col">
                        <a href="<?= base_url('pembelian/purchase_cart/?id_lab=') . $lab; ?>" class="btn btn-dark btn-sm mb-3 ms-2 float-end">
                            Tambah
                        </a>

                        <a href="<?= base_url('pembelian'); ?>" class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                            Kembali
                        </a>
                    </div> -->
                </div>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="row">
                    <div class="col-12">
                        <?= $this->session->flashdata('message'); ?>
                    </div>
                    <div class="col-12">
                        <?= form_error('date_purchasing', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <form role="form" action="<?= base_url('pembelian/purchase_cart_add/?id_lab=') . $lab; ?>" method="POST">
                            <div class="row p-4">
                                <div class="col-12 col-lg-6">
                                    <input type="hidden" name="id_lab" value="<?= $lab; ?>">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="date_purchasing" class="form-control-label">Tanggal Pembelian</label>
                                            <input class="form-control" type="date" id="date_purchasing" name="date_purchasing">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="supplier" class="form-control-label">Supplier</label>
                                            <select id="supplier" name="id_supplier" class="form-select">
                                                <option>Pilih Supplier</option>
                                                <?php foreach ($supplier->result() as $s) : ?>
                                                    <option value="<?= $s->id_supplier; ?>"><?= $s->supplier; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="product" class="form-control-label">Produk</label>
                                            <select id="product" name="id_product" class="form-select">
                                                <option>Pilih Produk</option>
                                                <?php foreach ($product->result() as $p) : ?>
                                                    <option value="<?= $p->id_product; ?>"><?= $p->product; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-6">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="qty_product" class="form-control-label">Total Barang</label>
                                            <input id="qty_product" class="form-control" type="number" name="qty_product">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="price" class="form-control-label">Harga (Rp.)</label>
                                            <input id="price" class="form-control" type="number" name="price">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-6">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary mt-3 w-100">
                                                Tambah
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Total Harga</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($purchase_cart->result() as $pc) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $pc->product; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $pc->qty_product; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($pc->price, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($pc->total_price, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalProductEdit<?= $pc->id_cart; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                <br class="my-2">
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalProductDelete<?= $pc->id_cart; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
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