<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <h6>Daftar Produk :
                            <?= $owner['name']; ?> (LAB SPW
                            <?= $lab; ?>)
                        </h6>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="btn-group float-end w-100 w-lg-auto">
                                    <a href="<?= base_url('mitra/franchisor'); ?>"
                                        class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                                        Kembali
                                    </a>
                                    <button type="button" class="btn btn-dark btn-sm mb-3 float-end"
                                        data-bs-toggle="modal" data-bs-target="#modalProductAdd">
                                        Tambah
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalProductAdd" tabindex="-1" aria-labelledby="addModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Produk Titipan</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <?= form_open_multipart('mitra/franchisor_product_add'); ?>
                                    <div class="modal-body">
                                        <div class="row">
                                            <input type="hidden" class="form-control" name="id_user"
                                                value="<?= $owner['id_user']; ?>">
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Lab SPW</label>
                                                    <input type="text" class="form-control" name="id_lab"
                                                        value="<?= $lab ?>" readonly>
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Kode Barcode</label>
                                                    <input type="text" class="form-control" placeholder="Kode Barcode"
                                                        name="code">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Nama Produk</label>
                                                    <input type="text" class="form-control" placeholder="Nama Produk"
                                                        name="product">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Qty</label>
                                                    <input type="number" class="form-control" placeholder="Qty"
                                                        name="qty">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Harga Dasar (Rp.)</label>
                                                    <input type="number" class="form-control"
                                                        placeholder="Harga Dasar (Rp.)" name="basic_price">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Harga Jual (Rp.)</label>
                                                    <input type="number" class="form-control"
                                                        placeholder="Harga Jual (Rp.)" name="selling_price">
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-6">
                                                <div class="mb-3">
                                                    <label>Gambar Produk</label>
                                                    <input type="file" class="form-control" placeholder="Pilih Gambar"
                                                        name="image">
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
                        <?= form_error('product', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Gambar</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">
                                            No. Barcode</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Qty</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga Dasar</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga Jual</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">
                                            Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($franchisor_product->result() as $p): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-xl position-relative">
                                                    <img src="<?= base_url('assets/img/products/' . $p->image); ?>"
                                                        alt="product_image" class="w-100 border-radius-lg shadow-sm">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="position-relative text-center">
                                                    <a href="<?= base_url('assets/img/barcode/' . $p->code . '.jpg') ?>"
                                                        target="_blank">
                                                        <img src="<?= base_url('assets/img/barcode/' . $p->code . '.jpg'); ?>"
                                                            alt="product_barcode" class="w-75 shadow-sm">
                                                        <p class="text-xs font-weight-bold mb-0 mt-1"
                                                            style="letter-spacing: 8px;">
                                                            <?= $p->code; ?>
                                                        </p>
                                                    </a>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $p->product; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $p->qty_shop; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($p->basic_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($p->selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <div class="btn-group w-100 w-lg-auto">
                                                    <a type="button" class="btn btn-primary btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalProductEdit<?= $p->id_product; ?>"><i
                                                            class="fa fa-edit cursor-pointer"></i></a>
                                                    <a type="button" class="btn btn-danger btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalProductDelete<?= $p->id_product; ?>"><i
                                                            class="fa fa-trash cursor-pointer"></i></a>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalProductEdit<?= $p->id_product; ?>" tabindex="-1"
                                            aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <?= form_open_multipart('mitra/franchisor_product_edit'); ?>
                                                    <div class="modal-body">
                                                        <input type="hidden" class="form-control" placeholder="Kode Produk"
                                                            name="id_product" value="<?= $p->id_product; ?>">
                                                        <input type="hidden" class="form-control" name="id_user"
                                                            value="<?= $owner['id_user']; ?>">

                                                        <div class="row">
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Lab</label>
                                                                    <input type="text" class="form-control"
                                                                        placeholder="Kode Produk" name="id_lab"
                                                                        value="<?= $p->id_lab; ?>" readonly>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Kode Barcode</label>
                                                                    <input type="text" class="form-control"
                                                                        placeholder="Kode Barcode" name="code"
                                                                        value="<?= $p->code; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Nama Produk</label>
                                                                    <input type="text" class="form-control"
                                                                        placeholder="Nama Produk" name="product"
                                                                        value="<?= $p->product; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Qty</label>
                                                                    <input type="number" class="form-control"
                                                                        placeholder="Qty" name="qty"
                                                                        value="<?= $p->qty_shop; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Harga Dasar (Rp.)</label>
                                                                    <input type="number" class="form-control"
                                                                        placeholder="Harga Dasar (Rp.)" name="basic_price"
                                                                        value="<?= $p->basic_price; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-6">
                                                                <div class="mb-3">
                                                                    <label>Harga Jual (Rp.)</label>
                                                                    <input type="number" class="form-control"
                                                                        placeholder="Harga Jual (Rp.)" name="selling_price"
                                                                        value="<?= $p->selling_price; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-lg-12">
                                                                <div class="mb-3">
                                                                    <label>Gambar Produk</label>
                                                                    <div class="row">
                                                                        <div class="col-3 col-lg-2">
                                                                            <div class="avatar avatar-xl position-relative">
                                                                                <img src="<?= base_url('assets/img/products/' . $p->image); ?>"
                                                                                    alt="product_image"
                                                                                    class="w-100 border-radius-lg shadow-sm">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-9 col-lg-10">
                                                                            <input type="file" class="form-control mt-3"
                                                                                placeholder="Pilih Gambar" name="image">
                                                                        </div>
                                                                    </div>
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

                                        <!-- Modal Hapus Role -->
                                        <div class="modal fade" id="modalProductDelete<?= $p->id_product; ?>" tabindex="-1"
                                            aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form"
                                                        action="<?= base_url('mitra/franchisor_product_delete') ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_product"
                                                                    value="<?= $p->id_product; ?>">
                                                                <input type="hidden" name="id_lab"
                                                                    value="<?= $p->id_lab; ?>">
                                                                <input type="hidden" class="form-control" name="id_user"
                                                                    value="<?= $owner['id_user']; ?>">
                                                                <input type="hidden" name="code" value="<?= $p->code; ?>">

                                                                <p class="text-sm mt-3">Yakin ingin menghapus produk : <span
                                                                        class="text-bold">
                                                                        <?= $p->product; ?>
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