<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col-12 col-sm-8 col-lg-6">
                        <h6>Daftar Penjualan Produk Titipan :</h6>
                        <p class="small">
                            <?= date('d F Y', strtotime($selling["date_selling"])) . " // SPW " . $lab . " // Guru Piket : " . $user["name"]; ?>
                        </p>
                    </div>
                    <div class="col-12 col-sm-4 col-lg-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="btn-group float-end w-100 w-lg-auto">
                                    <a href="<?= base_url('kasir/selling_franchise/?id_lab=') . $lab; ?>"
                                        class="btn btn-primary btn-sm mb-3">
                                        Kembali
                                    </a>
                                    <!-- <button type="button" class="btn btn-dark btn-sm mb-3" data-bs-toggle="modal" data-bs-target="#modalProductAdd">
                                        Tambah
                                    </button> -->
                                    <a href="<?= base_url('kasir/printPDF_franchise/?date_selling=' . $selling["date_selling"] . '&id_lab=' . $lab . '&id_franchisor=' . $id_franchisor) ?>"
                                        class="btn btn-warning btn-sm mb-3" target="_blank">
                                        <i class="fa fa-download"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row justify-content-end">
                    <div class="col-12 col-lg-6">
                        <form role="form" action="<?= base_url('kasir/selling_franchise_detail_search') ?>"
                            method="GET">
                            <div class="row">
                                <input type="hidden" name="id_lab" value="<?= $lab ?>">
                                <input type="hidden" name="date_selling" value="<?= $selling["date_selling"] ?>">

                                <div class="col-12 col-sm-2 col-lg-4 my-2">
                                    <label class="col-form-label text-sm">Pemilik Produk</label>
                                </div>
                                <div class="col-12 col-sm-8 col-lg-6 my-2">
                                    <select class="form-select" aria-label="Default select" name="id_franchisor">
                                        <option>Pilih Pemilik Produk</option>
                                        <option value="0">Semua</option>
                                        <?php foreach ($franchisor->result() as $f): ?>
                                            <option value="<?= $f->id_user ?>"><?= $f->name ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <div class="col-12 col-sm-2 col-lg-2 my-2">
                                    <button type="submit" class="btn btn-primary w-100"><i
                                            class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="row">
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0" id="data-table-02">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"
                                            width="7%">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Nama Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga Dasar</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga Jual</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Qty Awal</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Qty Akhir</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Qty Terjual</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            (Qty Terjual) x <br> (Harga Dasar)</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            (Qty Terjual) x <br> (Harga Jual)</th>
                                        <!-- <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">Action</th> -->
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
                                                    <?= number_format($sd->basic_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($sd->selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $sd->qty_shop + $sd->qty_selling; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $sd->qty_shop; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $sd->qty_selling; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($sd->total_basic_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($sd->total_selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <!-- <td class="align-middle text-center text-sm">
                                                                                                            <a type="button" class="badge bg-primary btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalProductEdit<?= $sd->id_selling_detail; ?>"><i class="fa fa-edit cursor-pointer"></i></a>
                                                                                                            |
                                                                                                            <a type="button" class="badge bg-danger btn-sm px-3 py-2 rounded-pill" data-bs-toggle="modal" data-bs-target="#modalProductDelete<?= $sd->id_selling_detail; ?>"><i class="fa fa-trash cursor-pointer"></i></a>
                                                                                                        </td> -->
                                        </tr>

                                        <?php $i++; ?>
                                    <?php endforeach; ?>


                                    <?php if ($total_selling_price->total_selling_price == NULL): ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="6"></td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">TOTAL</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($total_basic_price->total_basic_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($total_selling_price->total_selling_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="6"></td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Total
                                                    Setor <br> Harga Dasar</p>
                                                <p class="small font-weight-light mb-0 px-3">(Pemilik Produk)</p>
                                            </td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Total
                                                    Setor <br> Laba SPW</p>
                                                <p class="small font-weight-light mb-0 px-3">(80% Laba SPW)</p>
                                            </td>
                                            <td>
                                                <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Total
                                                    Setor <br> Laba Siswa</p>
                                                <p class="small font-weight-light mb-0 px-3">(20% Laba Siswa)</p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="6"></td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($total_basic_price->total_basic_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>

                                            <?php
                                            $laba_spw = ($total_selling_price->total_selling_price - $total_basic_price->total_basic_price) * 0.80;

                                            $laba_siswa = ($total_selling_price->total_selling_price - $total_basic_price->total_basic_price) * 0.20;
                                            ?>

                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($laba_spw, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                                                    <?= number_format($laba_siswa, 0, ',', '.'); ?>,-
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