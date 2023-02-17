<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <h6>Daftar Mutasi LAB SPW
                            <?= $lab; ?>
                        </h6>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="btn-group float-end w-100 w-lg-auto">
                                    <a href="<?= base_url('produk/index_mutation'); ?>"
                                        class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                                        Kembali
                                    </a>
                                    <button type="button" class="btn btn-dark btn-sm mb-3 float-end"
                                        data-bs-toggle="modal" data-bs-target="#modalAdd">
                                        Tambah
                                    </button>
                                </div>
                            </div>
                            <!-- <div class="col-12">
                                
                            </div> -->
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalAdd" tabindex="-1" aria-labelledby="addModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Mutasi</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <?= form_open_multipart('produk/mutation_add'); ?>
                                    <div class="modal-body">
                                        <div class="row">
                                            <input type="hidden" class="form-control" name="id_lab"
                                                value="<?= $lab; ?>">
                                            <input type="hidden" class="form-control" name="id_user"
                                                value="<?= $user['id_user']; ?>">
                                            <div class="col-12 col-lg-12">
                                                <div class="mb-3">
                                                    <label>Tanggal Mutasi</label>
                                                    <input type="date" class="form-control" placeholder=""
                                                        name="date_mutation">
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
                        <?= form_error('date_mutation', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Tanggal Mutasi</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Penganggung Jawab</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">
                                            Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($mutation->result() as $m): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= date('d F Y', strtotime($m->date_mutation)); ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $m->name; ?>
                                                </p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <div class="btn-group w-100 w-lg-auto">
                                                    <a type="button" class="btn btn-warning btn-sm px-3 py-2"
                                                        href="<?= base_url('produk/mutation_detail/?id_mutation=') . $m->id_mutation . '&id_lab=' . $m->id_lab; ?>"><i
                                                            class="fa fa-list cursor-pointer"> </i> Input</a>
                                                    <button type="button" class="btn btn-primary btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalEdit<?= $m->id_mutation; ?>"><i
                                                            class="fa fa-edit cursor-pointer"></i></button>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalEdit<?= $m->id_mutation; ?>" tabindex="-1"
                                            aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Mutasi</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <?= form_open_multipart('produk/mutation_edit'); ?>
                                                    <div class="modal-body">
                                                        <input type="hidden" class="form-control" name="id_lab"
                                                            value="<?= $lab; ?>">
                                                        <input type="hidden" class="form-control" name="id_mutation"
                                                            value="<?= $m->id_mutation; ?>">
                                                        <input type="hidden" class="form-control" name="id_user"
                                                            value="<?= $user['id_user']; ?>">
                                                        <div class="mb-3">
                                                            <label>Tanggal Mutasi</label>
                                                            <input type="date" class="form-control" name="date_mutation"
                                                                value="<?= $m->date_mutation; ?>">
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