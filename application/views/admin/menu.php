<div class="row">

    <!-- MENU -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Menu</h6>
                    </div>
                    <div class="col">
                        <button type="button" class="btn btn-dark btn-sm mb-3 float-end" data-bs-toggle="modal" data-bs-target="#modalMenuAdd">
                            Tambah
                        </button>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalMenuAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Menu</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('admin/menu_add') ?>" method="POST">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label>Nama Menu</label>
                                                <input type="text" class="form-control" placeholder="Nama Menu" name="menu">
                                            </div>
                                            <div class="mb-3">
                                                <label>Urutan Menu</label>
                                                <input type="number" class="form-control" placeholder="Urutan Menu" name="order_menu">
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
                        <?= $this->session->flashdata('message_menu'); ?>
                    </div>
                    <div class="col-12">
                        <?= form_error('menu', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Menu</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Order Menu</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($menu->result() as $m) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $m->menu; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $m->order_menu; ?></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" type="button" data-bs-toggle="modal" data-bs-target="#modalMenuEdit<?= $m->id_user_menu; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                |
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" type="button" data-bs-toggle="modal" data-bs-target="#modalMenuDelete<?= $m->id_user_menu; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Menu -->
                                        <div class="modal fade" id="modalMenuEdit<?= $m->id_user_menu; ?>" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Menu</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('admin/menu_edit') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" name="id_user_menu" value="<?= $m->id_user_menu; ?>">
                                                            <div class="mb-3">
                                                                <label>Nama Menu</label>
                                                                <input type="text" class="form-control" placeholder="Nama Menu" name="menu" value="<?= $m->menu; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Urutan Menu</label>
                                                                <input type="number" class="form-control" placeholder="Urutan Menu" name="order_menu" value="<?= $m->order_menu; ?>">
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

                                        <!-- Modal Hapus Menu -->
                                        <div class="modal fade" id="modalMenuDelete<?= $m->id_user_menu; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Menu</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('admin/menu_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_user_menu" value="<?= $m->id_user_menu; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus menu : <span class="text-bold"><?= $m->menu; ?></span>!</p>
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

    <!-- SUBMENU -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Submenu</h6>
                    </div>
                    <div class="col">
                        <button type="button" class="btn btn-dark btn-sm mb-3 float-end" data-bs-toggle="modal" data-bs-target="#modalSubmenuAdd">
                            Tambah
                        </button>

                        <!-- Modal Tambah Submenu -->
                        <div class="modal fade" id="modalSubmenuAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Submenu</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('admin/submenu_add') ?>" method="POST">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label>Nama Submenu</label>
                                                        <input type="text" class="form-control" placeholder="Nama Submenu" name="title">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label>Menu</label>
                                                        <select class="form-select" aria-label="Default select" name="menu_id">
                                                            <option selected>Pilih menu</option>
                                                            <?php foreach ($menu->result() as $m) : ?>
                                                                <option value="<?= $m->id_user_menu ?>"><?= $m->menu ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label>Url</label>
                                                        <input type="text" class="form-control" placeholder="URL" name="url">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label>Icon</label>
                                                        <input type="text" class="form-control" placeholder="Icon" name="icon">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label>Urutan Submenu</label>
                                                        <input type="number" class="form-control" placeholder="Urutan Submenu" name="order_submenu">
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
                        <?= $this->session->flashdata('message_submenu'); ?>
                    </div>
                    <div class="col-12">
                        <?= form_error('title', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('url', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('icon', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Submenu</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Menu</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">URL</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Icon</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Order Submenu</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($submenu->result() as $sm) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $sm->title; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $sm->menu; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $sm->url; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><i class="<?= $sm->icon; ?>"></i></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $sm->order_submenu; ?></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalSubmenuEdit<?= $sm->id_user_submenu; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                |
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalSubmenuDelete<?= $sm->id_user_submenu; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Menu -->
                                        <div class="modal fade" id="modalSubmenuEdit<?= $sm->id_user_submenu; ?>" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Menu</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('admin/submenu_edit') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" name="id_user_submenu" value="<?= $sm->id_user_submenu; ?>">
                                                            <div class="row">
                                                                <div class="col-6">
                                                                    <div class="mb-3">
                                                                        <label>Nama Submenu</label>
                                                                        <input type="text" class="form-control" placeholder="Nama Submenu" name="title" value="<?= $sm->title; ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-6">
                                                                    <div class="mb-3">
                                                                        <label>Menu</label>
                                                                        <select class="form-select" aria-label="Default select" name="menu_id">
                                                                            <option value="<?= $sm->menu_id; ?>" selected><?= $sm->menu; ?></option>
                                                                            <?php foreach ($menu->result() as $m) : ?>
                                                                                <option value="<?= $m->id_user_menu ?>"><?= $m->menu ?></option>
                                                                            <?php endforeach; ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-6">
                                                                    <div class="mb-3">
                                                                        <label>Url</label>
                                                                        <input type="text" class="form-control" placeholder="URL" name="url" value="<?= $sm->url; ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-6">
                                                                    <div class="mb-3">
                                                                        <label>Icon</label>
                                                                        <input type="text" class="form-control" placeholder="Icon" name="icon" value="<?= $sm->icon; ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-6">
                                                                    <div class="mb-3">
                                                                        <label>Urutan Submenu</label>
                                                                        <input type="number" class="form-control" placeholder="Urutan Submenu" name="order_submenu" value="<?= $sm->order_submenu; ?>">
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

                                        <!-- Modal Hapus Menu -->
                                        <div class="modal fade" id="modalSubmenuDelete<?= $sm->id_user_submenu; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Menu</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('admin/submenu_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_user_submenu" value="<?= $sm->id_user_submenu; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus submenu : <span class="text-bold"><?= $sm->title; ?></span>!</p>
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