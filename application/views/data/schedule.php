<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Jadwal Praktek SPW</h6>
                    </div>
                    <div class="col">
                        <div class="btn-group float-end w-100 w-lg-auto">
                            <button type="button" class="btn btn-dark btn-sm mb-3 float-end" data-bs-toggle="modal"
                                data-bs-target="#modalScheduleAdd">
                                Tambah
                            </button>
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalScheduleAdd" tabindex="-1" aria-labelledby="addModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Jadwal</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('data/schedule_add'); ?>" method="POST">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-12 col-lg-6">
                                                    <div class="mb-3">
                                                        <label>Tanggal Praktek</label>
                                                        <input type="date" class="form-control" name="picket_schedule">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class=" mb-3">
                                                        <label>Guru Praktek</label>
                                                        <select class="form-select" aria-label="Default select"
                                                            name="id_user">
                                                            <option selected>Pilih guru praktek</option>
                                                            <?php foreach ($teacher->result() as $t): ?>
                                                                <option value="<?= $t->id_user ?>"><?= $t->name ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class=" mb-3">
                                                        <label>Kelas</label>
                                                        <select class="form-select" aria-label="Default select"
                                                            name="id_class">
                                                            <option selected>Pilih kelas</option>
                                                            <?php foreach ($class->result() as $c): ?>
                                                                <option value="<?= $c->id_class ?>"><?= $c->class ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class=" mb-3">
                                                        <label>Kepala Lab</label>
                                                        <select class="form-select" aria-label="Default select"
                                                            name="lab_head">
                                                            <option selected>Pilih kepala lab</option>
                                                            <?php foreach ($teacher->result() as $t): ?>
                                                                <option value="<?= $t->name ?>"><?= $t->name ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary btn-sm"
                                                data-bs-dismiss="modal">Batal</button>
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
                        <?= form_error('schedule_picket', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Guru Piket</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Kelas</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Jadwal Piket</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Kepala Lab</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">
                                            Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($schedule->result() as $s): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $s->name; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $s->class; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= date('d F Y', strtotime($s->picket_schedule)); ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $s->lab_head; ?>
                                                </p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <div class="btn-group w-100 w-lg-auto">
                                                    <button type="button" class="btn btn-primary btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalScheduleEdit<?= $s->id_schedule; ?>"><i
                                                            class="fa fa-edit cursor-pointer"></i></button>
                                                    <button type="button" class="btn btn-danger btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalScheduleDelete<?= $s->id_schedule; ?>"><i
                                                            class="fa fa-trash cursor-pointer"></i></button>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalScheduleEdit<?= $s->id_schedule; ?>" tabindex="-1"
                                            aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Jadwal Praktek</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('data/schedule_edit'); ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-12 col-lg-6">
                                                                    <input type="hidden" class="form-control"
                                                                        name="id_schedule" value="<?= $s->id_schedule; ?>">
                                                                    <div class="mb-3">
                                                                        <label>Tanggal Praktek</label>
                                                                        <input type="date" class="form-control"
                                                                            name="picket_schedule"
                                                                            value="<?= $s->picket_schedule ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-12 col-lg-6">
                                                                    <div class=" mb-3">
                                                                        <label>Guru Praktek</label>
                                                                        <select class="form-select"
                                                                            aria-label="Default select" name="id_user">
                                                                            <option value="<?= $s->id_user; ?>" selected><?=
                                                                                  $s->name; ?></option>
                                                                            <?php foreach ($teacher->result() as $t): ?>
                                                                                <option value="<?= $t->id_user ?>"><?= $t->name ?></option>
                                                                            <?php endforeach; ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-12 col-lg-6">
                                                                    <div class=" mb-3">
                                                                        <label>Kelas</label>
                                                                        <select class="form-select"
                                                                            aria-label="Default select" name="id_class">
                                                                            <option value="<?= $s->id_class; ?>" selected>
                                                                                <?= $s->class; ?></option>
                                                                            <?php foreach ($class->result() as $c): ?>
                                                                                <option value="<?= $c->id_class ?>"><?=
                                                                                      $c->class ?></option>
                                                                            <?php endforeach; ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-12 col-lg-6">
                                                                    <div class=" mb-3">
                                                                        <label>Kepala Lab</label>
                                                                        <select class="form-select"
                                                                            aria-label="Default select" name="lab_head">
                                                                            <option value="<?= $s->lab_head; ?>" selected>
                                                                                <?= $s->lab_head; ?></option>
                                                                            <?php foreach ($teacher->result() as $t): ?>
                                                                                <option value="<?= $t->name ?>"><?= $t->name ?>
                                                                                </option>
                                                                            <?php endforeach; ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary btn-sm"
                                                                data-bs-dismiss="modal">Batal</button>
                                                            <button type="submit"
                                                                class="btn btn-primary btn-sm">Simpan</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Modal Hapus Role -->
                                        <div class="modal fade" id="modalScheduleDelete<?= $s->id_schedule; ?>"
                                            tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Jadwal</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('data/schedule_delete') ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_schedule"
                                                                    value="<?= $s->id_schedule; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus jadwal : <span
                                                                        class="text-bold">
                                                                        <?= date('d F Y', strtotime($s->picket_schedule)); ?>
                                                                    </span>!</p>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary btn-sm"
                                                                data-bs-dismiss="modal">Batal</button>
                                                            <button type="submit"
                                                                class="btn btn-danger btn-sm">Hapus</button>
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