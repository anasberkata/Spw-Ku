<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Data Franchisor / Pemilik Produk Titipan</h6>
                    </div>
                    <div class="col">
                        <div class="btn-group float-end w-100 w-lg-auto">
                            <button type="button" class="btn btn-dark btn-sm mb-3 float-end" data-bs-toggle="modal" data-bs-target="#modalFranchisorAdd">
                                Tambah
                            </button>
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalFranchisorAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Data Pemilik Produk Titipan</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('penjualan/franchisor_add'); ?>" method="POST">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label>Nama Pemilik Produk</label>
                                                <input type="text" class="form-control" name="name" placeholder="Nama Pemilik Produk">
                                            </div>
                                            <div class="mb-3">
                                                <label>No. Whatsapp</label>
                                                <input type="text" class="form-control" name="whatsapp" placeholder="Contoh: 82000000000">
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
                        <?= form_error('franchisor', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table1">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No. Whatsapp</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($franchisor->result() as $f) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $f->name; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><a href="https://wa.me/62<?= $f->whatsapp; ?>" target="blank" class="badge bg-success btn-sm px-3 py-2 rounded-pill"><i class="fa fa-whatsapp"></i></a></p>
                                            </td>
                                            <td>
                                                <a href="<?= base_url('penjualan/franchisor_product/?id_lab=1&id_user=') . $f->id_user; ?>" class="badge bg-info btn-sm px-3 py-2 rounded-pill"><span class="small">Lab 1</span></a>
                                                |
                                                <a href="<?= base_url('penjualan/franchisor_product/?id_lab=2&id_user=') . $f->id_user; ?>" class="badge bg-warning btn-sm px-3 py-2 rounded-pill"><span class="small">Lab 2</span></a>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalFranchisorEdit<?= $f->id_user; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                |
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalFranchisorDelete<?= $f->id_user; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit -->
                                        <div class="modal fade" id="modalFranchisorEdit<?= $f->id_user; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="editModalLabel">Edit Pemilik Produk Titipan</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('penjualan/franchisor_edit'); ?>" method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" class="form-control" name="id_user" value="<?= $f->id_user; ?>">
                                                            <div class="mb-3">
                                                                <label>Nama Pemilik Produk</label>
                                                                <input type="text" class="form-control" name="name" value="<?= $f->name; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>No. Whatsapp</label>
                                                                <input type="text" class="form-control" name="whatsapp" placeholder="Contoh: 82000000000" value="<?= $f->whatsapp; ?>">
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

                                        <!-- Modal Hapus -->
                                        <div class="modal fade" id="modalFranchisorDelete<?= $f->id_user; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Pemilik Produk Titipan</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('penjualan/franchisor_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_user" value="<?= $f->id_user; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus pemilik produk titipak : <span class="text-bold"><?= $f->name; ?></span>!</p>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Batal</button>
                                                            <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
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