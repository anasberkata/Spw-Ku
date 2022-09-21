<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Data Penjualan Produk Siswa Lab SPW 1 & 2</h6>
                    </div>
                    <div class="col">
                        <div class="btn-group float-end w-100 w-lg-auto">
                            <a href="<?= base_url('penjualan/index_student_selling'); ?>" class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                                Kembali
                            </a>
                            <button type="button" class="btn btn-dark btn-sm mb-3 float-end" data-bs-toggle="modal" data-bs-target="#modalStudentAdd">
                                Tambah
                            </button>
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalStudentAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Data Penjualan Siswa</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('penjualan/student_selling_add'); ?>" method="POST">
                                        <div class="modal-body">
                                            <input type="hidden" class="form-control" name="id_user" value="<?= $user['id_user']; ?>">
                                            <div class="mb-3">
                                                <label>Tanggal Penjualan</label>
                                                <input type="date" class="form-control" name="date_selling">
                                            </div>
                                            <div class="mb-3">
                                                <label>Kelas</label>
                                                <select class="form-select" aria-label="Default select" name="id_class">
                                                    <option>Pilih Kelas</option>
                                                    <?php foreach ($class->result() as $c) : ?>
                                                        <option value="<?= $c->id_class ?>"><?= $c->class ?></option>
                                                    <?php endforeach; ?>
                                                </select>
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
                        <?= form_error('id_class', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tanggal Penjualan</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Petugas / Guru Piket</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Kelas</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($student_selling->result() as $s) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= date('d M Y', strtotime($s->date_selling)); ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $s->name; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $s->class; ?></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-warning btn-sm px-3 py-2 rounded-pill" href="<?= base_url('penjualan/student_selling_detail/?id_student_selling=') . $s->id_student_selling . '&id_class=' . $s->id_class; ?>"><i class="fa fa-list cursor-pointer"> </i> Input</a>
                                                |
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalStudentSellingEdit<?= $s->id_student_selling; ?>"><i class="fa fa-edit cursor-pointer"></i></a>

                                                <!-- <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalStudentSellingDelete<?= $s->id_student_selling; ?>"><i class="fa fa-trash cursor-pointer"></i></a> -->
                                            </td>
                                        </tr>

                                        <!-- Modal Edit -->
                                        <div class="modal fade" id="modalStudentSellingEdit<?= $s->id_student_selling; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="editModalLabel">Edit Penjualan Siswa</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('penjualan/student_selling_edit'); ?>" method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" class="form-control" name="id_user" value="<?= $user['id_user']; ?>">
                                                            <input type="hidden" class="form-control" name="id_student_selling" value="<?= $s->id_student_selling; ?>">
                                                            <div class="mb-3">
                                                                <label>Tanggal Penjualan</label>
                                                                <input type="date" class="form-control" name="date_selling" value="<?= $s->date_selling ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Kelas</label>
                                                                <select class="form-select" aria-label="Default select" name="id_class">
                                                                    <option value="<?= $s->id_class ?>"><?= $s->class ?></option>
                                                                    <?php foreach ($class->result() as $c) : ?>
                                                                        <option value="<?= $c->id_class ?>"><?= $c->class ?></option>
                                                                    <?php endforeach; ?>
                                                                </select>
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