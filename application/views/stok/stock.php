<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Produk LAB SPW <?= $lab; ?></h6>
                    </div>
                    <div class="col">
                        <a href="<?= base_url('produk'); ?>" class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                            Kembali
                        </a>
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
                            <table class="table align-items-center mb-0" id="table1">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Gambar</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tempat</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($product->result() as $p) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-xl position-relative">
                                                    <img src="<?= base_url('assets/img/products/' . $p->image); ?>" alt="product_image" class="w-100 border-radius-lg shadow-sm">
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?php if ($p->id_place == 1) : ?>
                                                        <span class="badge badge-sm bg-gradient-success"><?= $p->place; ?></span>
                                                    <?php elseif ($p->id_place == 2) : ?>
                                                        <span class="badge badge-sm bg-gradient-info"><?= $p->place; ?></span>
                                                    <?php elseif ($p->id_place == 3) : ?>
                                                        <span class="badge badge-sm bg-gradient-warning"><?= $p->place; ?></span>
                                                    <?php elseif ($p->id_place == 4) : ?>
                                                        <span class="badge badge-sm bg-gradient-danger"><?= $p->place; ?></span>
                                                    <?php endif; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $p->product; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $p->qty; ?></p>
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