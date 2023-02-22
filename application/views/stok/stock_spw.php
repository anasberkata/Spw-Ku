<div class="row">

    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <h6>Stok Produk LAB SPW
                            <?= $lab; ?>
                        </h6>
                    </div>

                    <div class="col-12 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="btn-group float-end w-100 w-lg-auto">
                                    <a href="<?= base_url('stok/index_stock_spw'); ?>"
                                        class="btn btn-primary btn-sm ms-2">
                                        Kembali
                                    </a>

                                    <div class="btn-group" role="group">
                                        <button id="btnGroupDrop1" type="button"
                                            class="btn btn-success btn-sm dropdown-toggle" data-bs-toggle="dropdown"
                                            aria-expanded="false">
                                            Download Excel
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                            <?php foreach ($place->result() as $p): ?>
                                                <li><a class="dropdown-item"
                                                        href="<?= base_url('stok/stock_spw_excel/?id_place=') . $p->id_place . "&id_lab=" . $lab; ?>">Produk
                                                        <?= $p->place ?></a></li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <!-- <form role="form" action="<?= base_url('produk/product_search') ?>" method="GET">
                                    <div class="row">
                                        <input type="hidden" name="id_lab" value="<?= $lab ?>">
                                        <div class="col-4 col-lg-2 col-md-4 col-sm-4 my-2">
                                            <label class="col-form-label text-sm">Lokasi</label>
                                        </div>
                                        <div class="col-8 col-lg-7 col-md-8 col-sm-8 my-2">
                                            <select class="form-select" aria-label="Default select" name="id_place">
                                                <option>Pilih Lokasi Produk</option>
                                                <?php foreach ($place->result() as $p): ?>
                                                                                                                    <option value="<?= $p->id_place ?>"><?= $p->place ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                        <div class="col-12 col-lg-3 col-md-12 col-sm-12 my-2">
                                            <button type="submit" class="btn btn-primary w-100"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </form> -->
                            </div>
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
                        <?= form_error('product', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Tempat</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Qty</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($product->result() as $p): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?php if ($p->id_place == 1): ?>
                                                        <span class="badge badge-sm bg-gradient-success">
                                                            <?= $p->place; ?>
                                                        </span>
                                                    <?php elseif ($p->id_place == 2): ?>
                                                        <span class="badge badge-sm bg-gradient-info">
                                                            <?= $p->place; ?>
                                                        </span>
                                                    <?php elseif ($p->id_place == 3): ?>
                                                        <span class="badge badge-sm bg-gradient-warning">
                                                            <?= $p->place; ?>
                                                        </span>
                                                    <?php elseif ($p->id_place == 4): ?>
                                                        <span class="badge badge-sm bg-gradient-danger">
                                                            <?= $p->place; ?>
                                                        </span>
                                                    <?php endif; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $p->product; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $p->qty_shop; ?>
                                                </p>
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