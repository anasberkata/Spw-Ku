<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Data Penjualan Produk Lab SPW <?= $lab; ?></h6>
                    </div>
                    <div class="col">
                        <button type="button" class="btn btn-dark btn-sm mb-3 ms-2 float-end" data-bs-toggle="modal" data-bs-target="#modalSellingAdd">
                            Tambah
                        </button>

                        <a href="<?= base_url('penjualan'); ?>" class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                            Kembali
                        </a>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalSellingAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Data Penjualan</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('penjualan/selling_add'); ?>" method="POST">
                                        <div class="modal-body">
                                            <input type="hidden" class="form-control" name="id_lab" value="<?= $lab; ?>">
                                            <input type="hidden" class="form-control" name="id_user" value="<?= $user['id_user']; ?>">
                                            <div class="mb-3">
                                                <label>Tanggal Penjualan</label>
                                                <input type="date" class="form-control" name="date_selling">
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
                    </div>
                </div>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="row">
                    <div class="col-12">
                        <?= $this->session->flashdata('message'); ?>
                    </div>
                    <div class="col-12">
                        <?= form_error('date_selling', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table1">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tanggal Penjualan</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Petugas</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($selling->result() as $s) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= date('d F Y', strtotime($s->date_selling)); ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $s->name; ?></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-warning btn-sm px-3 py-2 rounded-pill" href="<?= base_url('penjualan/selling_detail/?id_selling=') . $s->id_selling . '&id_lab=' . $s->id_lab; ?>"><i class="fa fa-list cursor-pointer"> </i> Detail</a>

                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalSellingEdit<?= $s->id_selling; ?>"><i class="fa fa-edit cursor-pointer"></i></a>

                                                <!-- <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalPurchaseDelete<?= $s->id_selling; ?>"><i class="fa fa-trash cursor-pointer"></i></a> -->
                                            </td>
                                        </tr>

                                        <!-- Modal Edit -->
                                        <div class="modal fade" id="modalSellingEdit<?= $s->id_selling; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="editModalLabel">Edit Penjualan</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('penjualan/selling_edit'); ?>" method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" class="form-control" name="id_lab" value="<?= $lab; ?>">
                                                            <input type="hidden" class="form-control" name="id_selling" value="<?= $s->id_selling; ?>">
                                                            <input type="hidden" class="form-control" name="id_user" value="<?= $user['id_user']; ?>">
                                                            <div class="mb-3">
                                                                <label>Tanggal Penjualan</label>
                                                                <input type="date" class="form-control" name="date_selling" value="<?= $s->date_selling; ?>">
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