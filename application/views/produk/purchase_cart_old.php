<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Tambah Data Pembelian Barang di LAB SPW <?= $lab; ?></h6>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('pembelian/purchase/?id_lab=') . $lab; ?>" class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                            Kembali
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body px-0 pt-0 pb-2">
            <div class="row">
                <div class="col-12">
                    <?= $this->session->flashdata('message'); ?>
                </div>
                <div class="col-12">
                    <?= form_error('cart', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                </div>

                <div class="col-12">
                    <form role="form" action="<?= base_url('pembelian/purchasing_cart_add') ?>" method="POST">
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="mb-3">
                                    <label>Tanggal pembelian</label>
                                    <input type="date" class="form-control" placeholder="" name="date_purchasing">
                                </div>
                                <div class="mb-3">
                                    <label>Supplier</label>
                                    <select class="form-select" aria-label="Default select" name="id_supplier">
                                        <option selected>Pilih Supplier</option>
                                        <?php foreach ($supplier->result() as $s) : ?>
                                            <option value="<?= $s->id_supplier; ?>"><?= $s->supplier; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label>Produk</label>
                                    <select class="form-select" aria-label="Default select" name="id_product">
                                        <option selected>Pilih Produk</option>
                                        <?php foreach ($product->result() as $p) : ?>
                                            <option value="<?= $p->id_product; ?>"><?= $p->product; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="mb-3">
                                    <label>Qty</label>
                                    <input type="number" class="form-control" placeholder="Qty" name="total_unit">
                                </div>
                                <div class="mb-3">
                                    <label>Harga (Rp.)</label>
                                    <input type="number" class="form-control" placeholder="Harga (Rp.)" name="price">
                                </div>
                                <div class="mb-3">
                                    <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
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
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Barang</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jumlah Item</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Total Harga Beli</th>
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
                                            <p class="text-xs font-weight-bold mb-0 px-3"><?= $pc->id_product; ?></p>
                                        </td>
                                        <td>
                                            <p class="text-xs font-weight-bold mb-0 px-3"><?= $pc->total_unit; ?></p>
                                        </td>
                                        <td>
                                            <p class="text-xs font-weight-bold mb-0 px-3"><?= $pc->price; ?></p>
                                        </td>
                                        <td>
                                            <p class="text-xs font-weight-bold mb-0 px-3"></p>
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