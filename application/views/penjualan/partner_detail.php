<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <h6>Daftar Penjualan Produk :</h6>
                        <p class="small">
                            <?= date('d F Y', strtotime($selling["date_selling"])) . " // SPW " . $lab . " // Guru Piket : " . $user["name"]; ?>
                        </p>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="btn-group float-end w-100 w-lg-auto">
                                    <a href="<?= base_url('penjualan/partner/?id_lab=') . $lab; ?>"
                                        class="btn btn-primary btn-sm mb-3">
                                        Kembali
                                    </a>
                                    <button type="button" class="btn btn-dark btn-sm mb-3" data-bs-toggle="modal"
                                        data-bs-target="#modalProductAdd">
                                        Tambah
                                    </button>
                                    <a href="<?= base_url('penjualan/printPDF_partner/?date_selling=' . $selling["date_selling"] . '&id_lab=' . $lab . '&id_partner=' . $id_partner) ?>"
                                        class="btn btn-warning btn-sm mb-3" target="_blank">
                                        <i class="fa fa-download"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12">
                                <form role="form" action="<?= base_url('penjualan/partner_detail_search') ?>"
                                    method="GET">
                                    <div class="row">
                                        <input type="hidden" name="id_lab" value="<?= $lab ?>">
                                        <input type="hidden" name="date_selling"
                                            value="<?= $selling["date_selling"] ?>">
                                        <div class="col-2 col-lg-2 col-md-2 col-sm-2 my-2">
                                            <label class="col-form-label text-sm">Mitra</label>
                                        </div>
                                        <div class="col-7 col-lg-7 col-md-8 col-sm-8 my-2">
                                            <select class="form-select" aria-label="Default select" name="id_partner">
                                                <option>Pilih Mitra</option>
                                                <option value="0">Semua</option>
                                                <?php foreach ($partner->result() as $p): ?>
                                                    <option value="<?= $p->id_user ?>"><?= $p->name ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                        <div class="col-3 col-lg-3 col-md-2 col-sm-2 my-2">
                                            <button type="submit" class="btn btn-primary w-100"><i
                                                    class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!-- Modal Tambah Menu -->
                        <div class="modal fade" id="modalProductAdd" tabindex="-1" aria-labelledby="addModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addModalLabel">Tambah Produk</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <form role="form" action="<?= base_url('penjualan/partner_detail_add') ?>"
                                        method="POST">
                                        <div class="modal-body">
                                            <input type="hidden" name="id_lab" value="<?= $lab ?>">
                                            <input type="hidden" name="date_selling"
                                                value="<?= $selling["date_selling"] ?>">
                                            <div class="mb-3">
                                                <label>Pilih Produk</label>
                                                <select class="form-select" aria-label="Default select"
                                                    name="id_product">
                                                    <option selected>Pilih Produk</option>
                                                    <?php foreach ($product->result() as $p): ?>
                                                        <option value="<?= $p->id_product ?>"><?= $p->product ?></option>
                                                    <?php endforeach; ?>
                                                </select>

                                                <!-- <input type="text" class="form-control" list="product" id="id_product"
                                                    placeholder="Pilih Produk" autocomplete="off">
                                                <datalist id="product">
                                                    <?php foreach ($product->result() as $p): ?>
                                                                                                                                                                                                                                                                                                                                                    <option data-value="<?= $p->id_product ?>"><?= $p->product ?> ||
                                                                                                                                                                                                                                                                                                                                                        Stok : <?= $p->qty_shop ?></option>
                                                    <?php endforeach; ?>
                                                </datalist>
                                                <input type="hidden" name="id_product" id="id_product-hidden">

                                                <script>
                                                    document.querySelector('input[list]').addEventListener('input', function (e) {
                                                        var input = e.target,
                                                            list = input.getAttribute('list'),
                                                            options = document.querySelectorAll('#' + list + ' option'),
                                                            hiddenInput = document.getElementById(input.getAttribute('id') + '-hidden'),
                                                            inputValue = input.value;

                                                        hiddenInput.value = inputValue;

                                                        for (var i = 0; i < options.length; i++) {
                                                            var option = options[i];

                                                            if (option.innerText === inputValue) {
                                                                hiddenInput.value = option.getAttribute('data-value');
                                                                break;
                                                            }
                                                        }
                                                    });
                                                </script> -->

                                            </div>
                                            <div class="mb-3">
                                                <label>Qty Terjual</label>
                                                <input type="number" class="form-control" placeholder="Jumlah Terjual"
                                                    name="qty_selling">
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
                        <?= form_error('qty_selling', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>

                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="table2">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga Jual</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Qty Terjual</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            (Qty Terjual) x (Harga Jual)</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">
                                            Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($selling_detail->result() as $sd): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $sd->product; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($sd->selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $sd->qty_selling; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($sd->total_selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <div class="btn-group w-100 w-lg-auto">
                                                    <a type="button" class="btn btn-primary btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalProductEdit<?= $sd->id_selling_detail; ?>"><i
                                                            class="fa fa-edit cursor-pointer"></i></a>
                                                    <a type="button" class="btn btn-danger btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalProductDelete<?= $sd->id_product; ?>"><i
                                                            class="fa fa-trash cursor-pointer"></i></a>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalProductEdit<?= $sd->id_selling_detail; ?>"
                                            tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form"
                                                        action="<?= base_url('penjualan/partner_detail_edit') ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" name="id_lab" value="<?= $lab ?>" readonly>
                                                            <input type="hidden" name="date_selling"
                                                                value="<?= $date_selling ?>" readonly>
                                                            <input type="hidden" name="id_selling_detail"
                                                                value="<?= $sd->id_selling_detail; ?>" readonly>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="mb-3">
                                                                        <select class="form-select"
                                                                            aria-label="Default select" name="id_product">
                                                                            <option value="<?= $sd->id_product ?>"><?=
                                                                                  $sd->product ?>
                                                                            </option>
                                                                            <?php foreach ($product->result() as $p): ?>
                                                                                <option value="<?= $p->id_product ?>"><?=
                                                                                      $p->product ?>
                                                                                </option>
                                                                            <?php endforeach; ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-12">
                                                                    <div class="mb-3">
                                                                        <label>Qty Terjual</label>
                                                                        <input type="number" class="form-control"
                                                                            placeholder="Jumlah Terjual" name="qty_selling"
                                                                            value="<?= $sd->qty_selling ?>">
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
                                        <div class="modal fade" id="modalProductDelete<?= $sd->id_product; ?>" tabindex="-1"
                                            aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form"
                                                        action="<?= base_url('penjualan/partner_detail_delete') ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="date_selling"
                                                                    value="<?= $sd->date_selling; ?>">
                                                                <input type="hidden" name="id_product"
                                                                    value="<?= $sd->id_product; ?>">
                                                                <input type="hidden" name="id_lab" value="<?= $lab; ?>">
                                                                <input type="hidden" name="qty_selling"
                                                                    value="<?= $sd->qty_selling; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus produk : <span
                                                                        class="text-bold">
                                                                        <?= $sd->product; ?>
                                                                    </span> dari list penjualan mitra!</p>
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


                                    <?php if ($total_selling_price->total_selling_price == NULL): ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="3"></td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">TOTAL</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($total_selling_price->total_selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="3"></td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Total
                                                    Setor <br> Laba Mitra</p>
                                                <p class="small font-weight-light mb-0 px-3">(85% Mitra)</p>
                                            </td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Total
                                                    Setor <br> Laba SPW</p>
                                                <p class="small font-weight-light mb-0 px-3">(15% Laba SPW)</p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="3"></td>
                                            <?php
                                            $laba_mitra = $total_selling_price->total_selling_price * 0.85;
                                            $laba_spw = $total_selling_price->total_selling_price * 0.15;
                                            ?>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($laba_mitra, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($laba_spw, 0, ',', '.'); ?>,-
                                                </p>
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