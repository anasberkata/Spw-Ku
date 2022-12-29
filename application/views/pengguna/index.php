<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Pengguna</h6>
                    </div>
                    <div class="col">
                        <?php if ($user["role_id"] == 1) : ?>
                            <button type="button" class="btn btn-dark btn-sm mb-3 ms-2 float-end" data-bs-toggle="modal" data-bs-target="#modalUserAdd">
                                Tambah
                            </button>
                        <?php endif; ?>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalUserAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Pengguna</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <?= form_open_multipart('pengguna/user_add'); ?>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Nama Lengkap</label>
                                                    <input type="text" class="form-control" placeholder="Nama lengkap" name="name">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>E-Mail</label>
                                                    <input type="email" class="form-control" placeholder="E-Mail" name="email">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Username</label>
                                                    <input type="text" class="form-control" placeholder="Username" name="username">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Password</label>
                                                    <input type="password" class="form-control" placeholder="Password" name="password">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class=" mb-3">
                                                    <label>Role</label>
                                                    <select class="form-select" aria-label="Default select" name="role_id">
                                                        <option selected>Pilih Role Akses</option>
                                                        <?php foreach ($role->result() as $r) : ?>
                                                            <option value="<?= $r->id_role ?>"><?= $r->role ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Gambar Profile</label>
                                                    <input type="file" class="form-control" placeholder="Pilih Gambar" name="image">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Facebook</label>
                                                    <input type="text" class="form-control" placeholder="Username Facebook" name="facebook">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Instagram</label>
                                                    <input type="text" class="form-control" placeholder="Username Instagram" name="instagram">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Whatsapp</label>
                                                    <input type="number" class="form-control" placeholder="80000000000" name="whatsapp">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Icon</label>
                                                    <input type="text" class="form-control" placeholder="Icon" name="icon">
                                                </div>
                                            </div>
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
                        <?= form_error('name', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('email', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('username', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('password', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>

                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Gambar</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Email</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Role</th>
                                        <?php if ($user["role_id"] == 1) : ?>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                        <?php endif; ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($users->result() as $u) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-xl position-relative">
                                                    <img src="<?= base_url('assets/img/users/' . $u->image); ?>" alt="user_image" class="w-100 border-radius-lg shadow-sm">
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $u->name; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $u->email; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $u->role; ?></p>
                                            </td>
                                            <?php if ($user["role_id"] == 1) : ?>
                                                <td class="align-middle text-center text-sm">
                                                    <div class="btn-group w-100 w-lg-auto mt-2">
                                                        <button type="button" class="btn btn-success btn-sm px-3" data-bs-toggle="modal" data-bs-target="#modalUserDetail<?= $u->id_user; ?>"><i class="fa fa-user cursor-pointer"></i></button>
                                                        <button type="button" class="btn btn-primary btn-sm px-3" data-bs-toggle="modal" data-bs-target="#modalUserEdit<?= $u->id_user; ?>"><i class="fa fa-edit cursor-pointer"></i></button>
                                                        <button type="button" class="btn btn-danger btn-sm px-3" data-bs-toggle="modal" data-bs-target="#modalUserDelete<?= $u->id_user; ?>"><i class="fa fa-trash cursor-pointer"></i></button>
                                                    </div>
                                                </td>
                                            <?php endif; ?>
                                        </tr>

                                        <!-- Modal Detail User -->
                                        <div class="modal fade" id="modalUserDetail<?= $u->id_user; ?>" tabindex="-1" aria-labelledby="DetailModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DetailModalLabel">Detail Data Pengguna</h5>
                                                        <button type="button" class="btn-close text-dark" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>

                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <div class="avatar avatar-xxl position-relative">
                                                                    <img src="<?= base_url('assets/img/users/' . $u->image); ?>" alt="user_image" class="w-100 border-radius-lg shadow-sm">
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="mb-3">
                                                                    <label>Nama Lengkap</label>
                                                                    <p class="ms-1 text-sm"><?= $u->name; ?></p>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label>E-Mail</label>
                                                                    <p class="ms-1 text-sm"><?= $u->email; ?></p>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label>Facebook</label>
                                                                    <p class="ms-1 text-sm">
                                                                        <a href="https://www.facebook.com/<?= $u->facebook; ?>" target="blank"><?= $u->facebook; ?></a>
                                                                    </p>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label>Instagram</label>
                                                                    <p class="ms-1 text-sm">
                                                                        <a href="https://www.instagram.com/<?= $u->instagram; ?>" target="blank"><?= $u->instagram; ?></a>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="mb-3">
                                                                    <label>Username</label>
                                                                    <p class="ms-1 text-sm"><?= $u->username; ?></p>
                                                                </div>
                                                                <div class=" mb-3">
                                                                    <label>Role</label>
                                                                    <p class="ms-1 text-sm"><?= $u->role; ?></p>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label>Whatsapp</label>
                                                                    <p class="ms-1 text-sm">
                                                                        <a href="https://api.whatsapp.com/send?phone=62<?= $u->whatsapp; ?>" target="blank"><?= $u->whatsapp; ?></a>
                                                                    </p>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label>Icon</label>
                                                                    <p class="ms-1 text-sm"><i class="<?= $u->icon; ?>"></i></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Tutup</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <!-- Modal Edit User -->
                                        <div class="modal fade" id="modalUserEdit<?= $u->id_user; ?>" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Pengguna</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <?= form_open_multipart('pengguna/user_edit'); ?>
                                                    <div class="modal-body">
                                                        <input type="hidden" name="id_user" value="<?= $u->id_user; ?>">
                                                        <div class="row">
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Nama Lengkap</label>
                                                                    <input type="text" class="form-control" placeholder="Nama lengkap" name="name" value="<?= $u->name; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>E-Mail</label>
                                                                    <input type="email" class="form-control" placeholder="E-Mail" name="email" value="<?= $u->email; ?>">
                                                                </div>
                                                            </div>
                                                            <!-- <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Username</label>
                                                                    <input type="text" class="form-control" placeholder="Username" name="username" value="<?= $u->username; ?>">
                                                                </div>
                                                            </div> -->
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Password Baru <span class="text-danger">*</span></label>
                                                                    <input type="password" class="form-control" placeholder="Password Baru" name="new_password">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class=" mb-3">
                                                                    <label>Role</label>
                                                                    <select class="form-select" aria-label="Default select" name="role_id">
                                                                        <option value="<?= $u->id_role; ?>"><?= $u->role ?></option>
                                                                        <?php foreach ($role->result() as $r) : ?>
                                                                            <option value="<?= $r->id_role ?>"><?= $r->role ?></option>
                                                                        <?php endforeach; ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-12">
                                                                <div class="mb-3">
                                                                    <label>Gambar Pengguna</label>
                                                                    <div class="row">
                                                                        <div class="col-3 col-lg-2">
                                                                            <div class="avatar avatar-xl position-relative">
                                                                                <img src="<?= base_url('assets/img/users/' . $u->image); ?>" alt="user_image" class="w-100 border-radius-lg shadow-sm">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-9 col-lg-10">
                                                                            <input type="file" class="form-control mt-3" placeholder="Pilih Gambar" name="image">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Facebook</label>
                                                                    <input type="text" class="form-control" placeholder="Username Facebook" name="facebook" value="<?= $u->facebook; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Instagram</label>
                                                                    <input type="text" class="form-control" placeholder="Username Instagram" name="instagram" value="<?= $u->instagram; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Whatsapp</label>
                                                                    <input type="number" class="form-control" placeholder="80000000000" name="whatsapp" value="<?= $u->whatsapp; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Icon</label>
                                                                    <input type="text" class="form-control" placeholder="Icon" name="icon" value="<?= $u->icon; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12">
                                                                <p class="text-sm small"><small><i><span class="text-danger">*</span>(Kosongkan jika tidak ada perubahan)</i></small></p>
                                                            </div>
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

                                        <!-- Modal Hapus User -->
                                        <div class="modal fade" id="modalUserDelete<?= $u->id_user; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Pengguna</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('pengguna/user_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_user" value="<?= $u->id_user; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus pengguna : <span class="text-bold"><?= $u->name; ?></span>!</p>
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