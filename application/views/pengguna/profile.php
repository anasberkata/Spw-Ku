<div class="row">

    <!-- ROLE -->
    <div class="col">
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-header pb-0">
                            <div class="row">
                                <div class="col-12 col-md-6 col-lg-6">
                                    <p class="mb-0 text-uppercase text-sm mb-3">Profile Saya</p>
                                </div>
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="btn-group float-end w-100 w-lg-auto">
                                        <button type="button" class="btn btn-primary btn-sm float-end" data-bs-toggle="modal" data-bs-target="#modalEditProfile<?= $user['id_user']; ?>">
                                            Ubah Profile
                                        </button>
                                        <button type=" button" class="btn btn-warning btn-sm float-end" data-bs-toggle="modal" data-bs-target="#modalEditPassword<?= $user['id_user']; ?>">
                                            Ubah Password
                                        </button>
                                    </div>
                                </div>

                                <!-- Modal Edit Profile-->
                                <div class="modal fade" id="modalEditProfile<?= $user['id_user']; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="editModalLabel">Edit Profile</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <?= form_open_multipart('pengguna/profile_edit'); ?>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-12 col-lg-6">
                                                        <div class="mb-3">
                                                            <input type="hidden" name="id_user" value="<?= $user['id_user']; ?>">
                                                            <label>Nama Lengkap</label>
                                                            <input type="text" class="form-control" placeholder="Nama lengkap" name="name" value="<?= $user['name']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-6">
                                                        <div class="mb-3">
                                                            <label>Username</label>
                                                            <input type="text" class="form-control" placeholder="Username" name="username" value="<?= $user['username']; ?>" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-6">
                                                        <div class="mb-3">
                                                            <label>E-Mail</label>
                                                            <input type="email" class="form-control" placeholder="E-Mail" name="email" value="<?= $user['email']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-6">
                                                        <div class="mb-3">
                                                            <label>Role</label>
                                                            <select class="form-select" aria-label="Default select" name="role_id">
                                                                <option value="<?= $user['role_id']; ?>"><?= $user['role']; ?></option>
                                                                <?php foreach ($role->result() as $r) : ?>
                                                                    <option value="<?= $r->id_role ?>"><?= $r->role ?></option>
                                                                <?php endforeach; ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-12">
                                                        <div class="mb-3">
                                                            <label>Gambar Profile</label>
                                                            <div class="row">
                                                                <div class="col-3 col-lg-2">
                                                                    <div class="avatar avatar-xl position-relative">
                                                                        <img src="<?= base_url('assets/img/users/' . $user['image']); ?>" alt="user_image" class="border-radius-lg shadow-sm w-100">
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
                                                            <input type="text" class="form-control" placeholder="Username Facebook" name="facebook" value="<?= $user['facebook']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-6">
                                                        <div class="mb-3">
                                                            <label>Instagram</label>
                                                            <input type="text" class="form-control" placeholder="Username Instagram" name="instagram" value="<?= $user['instagram']; ?>">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-lg-6">
                                                        <div class="mb-3">
                                                            <label>Whatsapp</label>
                                                            <input type="number" class="form-control" placeholder="80000000000" name="whatsapp" value="<?= $user['whatsapp']; ?>">
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- <div class="mb-3">
                                                    <label>Icon</label>
                                                    <input type="text" class="form-control" placeholder="Icon" name="icon" value="<?= $user['icon']; ?>">
                                                </div> -->

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Batal</button>
                                                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal Edit Password-->
                                <div class="modal fade" id="modalEditPassword<?= $user['id_user']; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="editModalLabel">Edit Password</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form role="form" action="<?= base_url('pengguna/profile_change_password') ?>" method="POST">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <input type="hidden" name="id_user" value="<?= $user['id_user']; ?>">
                                                        <label>Password Lama</label>
                                                        <input type="password" class="form-control" placeholder="Password lama" name="current_password">
                                                    </div>
                                                    <div class="mb-3">
                                                        <input type="hidden" name="id_user" value="<?= $user['id_user']; ?>">
                                                        <label>Password Baru</label>
                                                        <input type="password" class="form-control" placeholder="Password baru" name="new_password01">
                                                    </div>
                                                    <div class="mb-3">
                                                        <input type="hidden" name="id_user" value="<?= $user['id_user']; ?>">
                                                        <label>Konfirmasi Password Baru</label>
                                                        <input type="password" class="form-control" placeholder="Konfirmasi Password baru" name="new_password02">
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
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12 col-md-4 col-lg-4">
                                    <div class="mb-3 w-100">
                                        <img src="<?= base_url('assets/img/users/') . $user['image']; ?>" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
                                    </div>
                                </div>
                                <div class="col-12 col-md-8 col-lg-8">
                                    <div class="row">
                                        <div class="col-12">
                                            <?= $this->session->flashdata('message'); ?>
                                        </div>
                                        <div class="col-12">
                                            <?= form_error('new_password01', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                                        </div>
                                    </div>

                                    <p class="text-uppercase text-sm">PROFILE</p>
                                    <div class="row">
                                        <!-- <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="example-text-input" class="form-control-label">Username</label>
                                                <input class="form-control" type="text" value="lucky.jesse">
                                                <p class="ps-1"><?= $user['username']; ?></p>
                                            </div>
                                        </div> -->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="example-text-input" class="form-control-label">Nama Lengkap</label>
                                                <p class="ps-1"><?= $user['name']; ?></p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="example-text-input" class="form-control-label">Email</label>
                                                <p class="ps-1"><?= $user['email']; ?></p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="example-text-input" class="form-control-label">Posisi</label>
                                                <p class="ps-1"><?= $user['role']; ?></p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="example-text-input" class="form-control-label">Aktif Sejak</label>
                                                <p class="ps-1"><?= date('d F Y', strtotime($user['date_created']));  ?></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr class="horizontal dark">

                            <p class="text-uppercase text-sm">Social Media</p>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="example-text-input" class="form-control-label">Facebook</label>
                                        <!-- <input class="form-control" type="text" value="A beautiful Dashboard for Bootstrap 5. It is Free and Open Source."> -->
                                        <p class="ps-1">
                                            <a href="https://www.facebook.com/<?= $user['facebook']; ?>" target="blank"><?= $user['facebook']; ?></a>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="example-text-input" class="form-control-label">Instagram</label>
                                        <!-- <input class="form-control" type="text" value="A beautiful Dashboard for Bootstrap 5. It is Free and Open Source."> -->
                                        <p class="ps-1">
                                            <a href="https://www.instagram.com/<?= $user['instagram']; ?>" target="blank"><?= $user['instagram']; ?></a>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="example-text-input" class="form-control-label">Whatsapp</label>
                                        <!-- <input class="form-control" type="text" value="A beautiful Dashboard for Bootstrap 5. It is Free and Open Source."> -->
                                        <p class="ps-1">
                                            <a href="https://api.whatsapp.com/send?phone=62<?= $user['whatsapp']; ?>" target="blank">+62<?= $user['whatsapp']; ?></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>