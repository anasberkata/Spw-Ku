<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <h6>Daftar Penjualan Produk Siswa : <?= $student_selling["class"]; ?></h6>
                        <p class="small"><?= date('d M Y', strtotime($student_selling["date_selling"])) . " // SPW " . $lab . " // Guru Piket : " . $user["name"] . " // Kelas : " . $student_selling["class"]; ?></p>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="btn-group float-end w-100 w-lg-auto">
                                    <a href="<?= base_url('penjualan/student_selling/?id_lab=') . $lab; ?>" class="btn btn-primary btn-sm mb-3">
                                        Kembali
                                    </a>
                                    <button type="button" class="btn btn-dark btn-sm mb-3" data-bs-toggle="modal" data-bs-target="#modalProductAdd">
                                        Tambah
                                    </button>
                                    <a href="<?= base_url('penjualan/printPDF_student_selling/?id_student_selling=' . $id_student_selling . '&id_lab=' . $lab . '&id_class=' . $id_class) ?>" class="btn btn-warning btn-sm mb-3" target="_blank">
                                        <i class="fa fa-download"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- <div class="col-12">
                                
                            </div> -->
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalProductAdd" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Produk</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('penjualan/student_selling_detail_add') ?>" method="POST">
                                        <div class="modal-body">
                                            <input type="hidden" name="id_lab" value="<?= $lab ?>">
                                            <input type="hidden" name="id_student_selling" value="<?= $id_student_selling ?>">
                                            <input type="hidden" name="id_class" value="<?= $id_class ?>">

                                            <div class="mb-3">
                                                <label>Nama Produk</label>
                                                <input type="text" class="form-control" placeholder="Nama Produk" name="product">
                                            </div>
                                            <div class="mb-3">
                                                <label>Harga Dasar (Rp.)</label>
                                                <input type="number" class="form-control" placeholder="Harga Dasar" name="basic_price">
                                            </div>
                                            <div class="mb-3">
                                                <label>Harga Jual (Rp.)</label>
                                                <input type="number" class="form-control" placeholder="Harga Jual" name="selling_price">
                                            </div>
                                            <div class="mb-3">
                                                <label>Qty Awal</label>
                                                <input type="number" class="form-control" placeholder="Stok Awal" name="qty_product">
                                            </div>
                                            <div class="mb-3">
                                                <label>Qty Akhir (Kosongkan bila belum terdata)</label>
                                                <input type="number" class="form-control" placeholder="Stok Akhir" name="qty_last">
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
                        <?= form_error('qty', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('basic_price', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('selling_price', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>

                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table2">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga Dasar</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga Jual</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty Awal</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty Akhir</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty Terjual</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">(Qty Terjual) x <br> (Harga Dasar)</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">(Qty Terjual) x <br> (Harga Jual)</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($student_selling_detail->result() as $fd) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $fd->product; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($fd->basic_price, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($fd->selling_price, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $fd->qty_product; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $fd->qty_last; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $fd->qty_selling; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($fd->total_basic_price, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($fd->total_selling_price, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalProductEdit<?= $fd->id_student_selling_detail; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                <br class="my-2">
                                                <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalProductDelete<?= $fd->id_student_selling_detail; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalProductEdit<?= $fd->id_student_selling_detail; ?>" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('penjualan/student_selling_detail_edit') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" name="id_lab" value="<?= $lab ?>" readonly>
                                                            <input type="hidden" name="id_student_selling" value="<?= $id_student_selling ?>" readonly>
                                                            <input type="hidden" name="id_student_selling_detail" value="<?= $fd->id_student_selling_detail; ?>" readonly>
                                                            <input type="hidden" name="id_class" value="<?= $fd->id_class; ?>" readonly>
                                                            <div class="mb-3">
                                                                <label>Nama Produk</label>
                                                                <input type="text" class="form-control" placeholder="Nama Produk" name="product" value="<?= $fd->product ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Harga Dasar (Rp.)</label>
                                                                <input type="number" class="form-control" placeholder="Harga Dasar" name="basic_price" value="<?= $fd->basic_price ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Harga Jual (Rp.)</label>
                                                                <input type="number" class="form-control" placeholder="Harga Jual" name="selling_price" value="<?= $fd->selling_price ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Qty Awal</label>
                                                                <input type="number" class="form-control" placeholder="Stok Awal" name="qty_product" value="<?= $fd->qty_product ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label>Qty Akhir</label>
                                                                <input type="number" class="form-control" placeholder="Stok Akhir" name="qty_last" value="<?= $fd->qty_last ?>">
                                                            </div>
                                                            <!-- <div class="mb-3">
                                                                <label>Qty Terjual</label>
                                                                <input type="number" class="form-control" placeholder="Stok Terjual" name="qty_selling" value="<?= $fd->qty_selling ?>">
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

                                        <!-- Modal Hapus Role -->
                                        <div class="modal fade" id="modalProductDelete<?= $fd->id_student_selling_detail; ?>" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form role="form" action="<?= base_url('penjualan/student_selling_detail_delete') ?>" method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_lab" value="<?= $lab; ?>">
                                                                <input type="hidden" name="id_student_selling" value="<?= $fd->id_student_selling; ?>">
                                                                <input type="hidden" name="id_student_selling_detail" value="<?= $fd->id_student_selling_detail; ?>">
                                                                <input type="hidden" name="id_class" value="<?= $fd->id_class; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus produk : <span class="text-bold"><?= $fd->product; ?></span> dari list penjualan produk!</p>
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


                                    <?php if ($total_basic_price_student_selling->total_basic_price_student_selling == NULL) : ?>
                                    <?php else : ?>
                                        <tr>
                                            <td colspan="6"></td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">TOTAL</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($total_basic_price_student_selling->total_basic_price_student_selling, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($total_selling_price_student_selling->total_selling_price_student_selling, 0, ',', '.'); ?>,-</p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="6"></td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> Total Harga <br> Dasar</p>
                                                <p class="text-xs mb-0 px-3">(Disetorkan ke <br> pemilik produk)</p>
                                            </td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> 20% Laba <br> Penjualan</p>
                                                <p class="text-xs mb-0 px-3">(Disetorkan ke <br> SPW)</p>
                                            </td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> 80% laba <br> Penjualan</p>
                                                <p class="text-xs mb-0 px-3">(Untuk Siswa)</p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="6"></td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($total_basic_price_student_selling->total_basic_price_student_selling, 0, ',', '.'); ?>,-</p>
                                            </td>

                                            <?php
                                            $laba_spw = ($total_selling_price_student_selling->total_selling_price_student_selling - $total_basic_price_student_selling->total_basic_price_student_selling) * 0.2;

                                            $laba_siswa = ($total_selling_price_student_selling->total_selling_price_student_selling - $total_basic_price_student_selling->total_basic_price_student_selling) * 0.8;
                                            ?>

                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($laba_spw, 0, ',', '.'); ?>,-</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($laba_siswa, 0, ',', '.'); ?>,-</p>
                                            </td>
                                        </tr>
                                    <?php endif; ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>