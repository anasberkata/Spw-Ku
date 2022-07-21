<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Peralatan LAB SPW <?= $tool->result()[0]->id_lab; ?></h6>
                    </div>
                    <div class="col">
                        <button type="button" class="btn btn-dark btn-sm mb-3 ms-2 float-end" data-bs-toggle="modal" data-bs-target="#modalToolAdd">
                            Tambah
                        </button>
                        <a href="<?= base_url('peralatan'); ?>" class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                            Kembali
                        </a>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalToolAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Peralatan</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('peralatan/tool_add') ?>" method="POST">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label>Lab SPW</label>
                                                <input type="text" class="form-control" placeholder="Lab SPW" name="id_lab" value="<?= $tool->result()[0]->id_lab ?>" readonly>
                                            </div>
                                            <div class="mb-3">
                                                <label>Nama Peralatan</label>
                                                <input type="text" class="form-control" placeholder="Nama Peralatan" name="tool">
                                            </div>
                                            <div class="mb-3">
                                                <label>Qty</label>
                                                <input type="number" class="form-control" placeholder="Qty" name="qty">
                                            </div>
                                            <div class="mb-3">
                                                <label>Kondisi</label>
                                                <select class="form-select" aria-label="Default select" name="id_tool_condition">
                                                    <option selected>Pilih kondisi</option>
                                                    <?php foreach ($tool_condition->result() as $tc) : ?>
                                                        <option value="<?= $tc->id_tool_condition ?>"><?= $tc->condition ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label>Keterangan</label>
                                                <input type="text" class="form-control" placeholder="Keterangan" name="description">
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
                        <?= form_error('tool', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table1">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Peralatan</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Kondisi</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Keterangan</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($tool->result() as $t) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->tool; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->qty; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->condition; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->description; ?></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalToolEdit<?= $t->id_tool; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                <br class="my-2">
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalToolDelete<?= $t->id_tool; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalToolEdit<?= $t->id_tool; ?>" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Peralatan</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('peralatan/tool_edit') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <label>Lab SPW</label>
                                                                <input type="hidden" class="form-control" placeholder="Lab SPW" name="id_tool" value="<?= $t->id_tool ?>">
                                                                <input type="text" class="form-control" placeholder="Lab SPW" name="id_lab" value="<?= $tool->result()[0]->id_lab ?>" readonly>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Nama Peralatan</label>
                                                                <input type="text" class="form-control" placeholder="Nama Peralatan" name="tool" value="<?= $t->tool; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Qty</label>
                                                                <input type="number" class="form-control" placeholder="Qty" name="qty" value="<?= $t->qty; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Kondisi</label>
                                                                <select class="form-select" aria-label="Default select" name="id_tool_condition">
                                                                    <option value="<?= $t->tool_condition; ?>"><?= $t->condition ?></option>
                                                                    <?php foreach ($tool_condition->result() as $tc) : ?>
                                                                        <option value="<?= $tc->id_tool_condition ?>"><?= $tc->condition ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Keterangan</label>
                                                                <input type="text" class="form-control" placeholder="Keterangan" name="description" value="<?= $t->description; ?>">
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
                                        <div class="modal fade" id="modalToolDelete<?= $t->id_tool; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Peralatan</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('peralatan/tool_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_tool" value="<?= $t->id_tool; ?>">
                                                                <input type="hidden" name="id_lab" value="<?= $t->id_lab; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus peralatan : <span class="text-bold"><?= $t->tool; ?></span>!</p>
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