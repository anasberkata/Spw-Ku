<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Supplier</h6>
                    </div>
                    <div class="col">
                        <button type="button" class="btn btn-dark btn-sm mb-3 ms-2 float-end" data-bs-toggle="modal" data-bs-target="#modalSupplierAdd">
                            Tambah
                        </button>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalSupplierAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Product</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('produk/supplier_add') ?>" method="POST">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label>Nama Supplier</label>
                                                <input type="text" class="form-control" placeholder="Nama Supplier" name="supplier">
                                            </div>
                                            <div class="mb-3">
                                                <label>Alamat</label>
                                                <textarea name="address" rows="5" class="form-control"></textarea>
                                            </div>
                                            <div class="mb-3">
                                                <label>No. Handphone / Whatsapp</label>
                                                <input type="text" class="form-control" placeholder="No Handphone / Whatsapp" name="phone">
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
                        <?= form_error('product', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table1">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Supplier</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Alamat</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Telephone</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($supplier->result() as $s) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $s->supplier; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $s->address; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><a class="btn btn-success mt-3" href="https://wa.me/<?= $s->phone; ?>"><i class="fa fa-whatsapp cursor-pointer"></i></a></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalSupplierEdit<?= $s->id_supplier; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                |
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalSupplierDelete<?= $s->id_supplier; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalSupplierEdit<?= $s->id_supplier; ?>" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Supplier</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('produk/supplier_edit') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_supplier" value="<?= $s->id_supplier; ?>">
                                                                <label>Nama Supplier</label>
                                                                <input type="text" class="form-control" placeholder="Nama Supplier" name="supplier" value="<?= $s->supplier; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Alamat</label>
                                                                <textarea name="address" rows="5" class="form-control"><?= $s->address; ?></textarea>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>No. Handphone / Whatsapp</label>
                                                                <input type="text" class="form-control" placeholder="No Handphone / Whatsapp" name="phone" value="<?= $s->phone; ?>">
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

                                        <!-- Modal Hapus Role -->
                                        <div class="modal fade" id="modalSupplierDelete<?= $s->id_supplier; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Supplier</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('produk/supplier_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_supplier" value="<?= $s->id_supplier; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus produk : <span class="text-bold"><?= $s->supplier; ?></span>!</p>
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