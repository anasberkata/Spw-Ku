<div class="row">

    <!-- ROLE -->
    <div class="col-12">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Daftar Pembelian Produk :</h6>
                        <p class="small">
                            <?= $purchase_detail->result()[0]->place . " // " . date('d F Y', strtotime($purchase["date_purchasing"])) . " // " . $purchase["supplier"] . " // SPW " . $lab; ?>
                        </p>
                    </div>
                    <div class="col">
                        <div class="btn-group float-end w-100 w-lg-auto">
                            <a href="<?= base_url('produk/purchase/?id_lab=') . $lab; ?>"
                                class="btn btn-primary btn-sm mb-3 ms-2 float-end">
                                Kembali
                            </a>
                            <button type="button" class="btn btn-dark btn-sm mb-3 float-end" data-bs-toggle="modal"
                                data-bs-target="#modalProductAdd">
                                Tambah
                            </button>
                            <a href="<?= base_url('produk/purchase_detail_excel/?id_purchase=' . $id_purchase . '&id_lab=' . $lab); ?>"
                                class="btn btn-success btn-sm mb-3 float-end">
                                Excel
                            </a>
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
                                    <form role="form" action="<?= base_url('produk/purchase_detail_add') ?>"
                                        method="POST">
                                        <div class="modal-body">
                                            <input type="hidden" name="id_lab" value="<?= $lab ?>" readonly>
                                            <input type="hidden" name="id_purchase" value="<?= $id_purchase ?>"
                                                readonly>

                                            <div class="row">
                                                <div class="col-12 col-lg-6">
                                                    <div class="mb-3">
                                                        <label>Pilih Produk</label>
                                                        <select onchange="get_price()" class="form-select"
                                                            aria-label="Default select" name="id_product"
                                                            id="id_product">
                                                            <option selected>Pilih Produk</option>
                                                            <?php foreach ($product->result() as $p): ?>
                                                                <option value="<?= $p->id_product ?>"><?= $p->product ?>
                                                                </option>
                                                            <?php endforeach; ?>
                                                        </select>

                                                        <script type="text/javascript">
                                                            function get_price() {
                                                                var id = $("#id_product").val();
                                                                $.ajax({
                                                                    url: '<?= base_url('autocomplete/ajax_produk/'); ?>',
                                                                    method: "GET",
                                                                    data: "id=" + id,
                                                                }).success(function (data) {
                                                                    var json = data,
                                                                        obj = JSON.parse(json);
                                                                    console.log(obj);
                                                                    $('#basic_price').val(obj.basic_price);
                                                                    $('#selling_price').val(obj.selling_price);
                                                                });
                                                            }
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class="mb-3">
                                                        <label>Qty Produk</label>
                                                        <input type="number" class="form-control"
                                                            placeholder="Jumlah Produk" name="qty_product">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class="mb-3">
                                                        <label>Harga Dasar (Rp.)</label>
                                                        <input type="number" class="form-control"
                                                            placeholder="Harga Dasar Produk" name="basic_price"
                                                            id="basic_price">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class="mb-3">
                                                        <label>Harga Jual (Rp.)</label>
                                                        <input type="number" class="form-control"
                                                            placeholder="Harga Jual Produk" name="selling_price"
                                                            id="selling_price">
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
                        <?= form_error('qty_product', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                        <?= form_error('price', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
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
                                            Qty Produk</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Harga </th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Total Harga</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center ">
                                            Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($purchase_detail->result() as $pd): ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $i; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $pd->product; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">
                                                    <?= $pd->qty_product; ?>
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($pd->basic_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($pd->total_price, 0, ',', '.'); ?>,-
                                                </p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <div class="btn-group w-100 w-lg-auto">
                                                    <button type="button" class="btn btn-primary btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalProductEdit<?= $pd->id_purchase_detail; ?>"><i
                                                            class="fa fa-edit cursor-pointer"></i></button>
                                                    <button type="button" class="btn btn-danger btn-sm px-3 py-2"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalProductDelete<?= $pd->id_purchase_detail; ?>"><i
                                                            class="fa fa-trash cursor-pointer"></i></button>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Modal Edit Role -->
                                        <div class="modal fade" id="modalProductEdit<?= $pd->id_purchase_detail; ?>"
                                            tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="EditModalLabel">Ubah Data Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form"
                                                        action="<?= base_url('produk/purchase_detail_edit') ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <input type="hidden" name="id_lab" value="<?= $lab ?>" readonly>
                                                            <input type="hidden" name="id_purchase"
                                                                value="<?= $id_purchase ?>" readonly>
                                                            <input type="hidden" name="id_purchase_detail"
                                                                value="<?= $pd->id_purchase_detail; ?>" readonly>

                                                            <div class="row">
                                                                <div class="col-12 col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label>Pilih Produk</label>
                                                                        <select class="form-select"
                                                                            aria-label="Default select" name="id_product">
                                                                            <option value="<?= $pd->id_product ?>"><?=
                                                                                  $pd->product ?></option>
                                                                            <?php foreach ($product->result() as $p): ?>
                                                                                <option value="<?= $p->id_product ?>"><?=
                                                                                      $p->product ?></option>
                                                                            <?php endforeach; ?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-12 col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label>Qty Produk</label>
                                                                        <input type="number" class="form-control"
                                                                            placeholder="Jumlah Produk" name="qty_product"
                                                                            value="<?= $pd->qty_product ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-12 col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label>Harga Dasar (Rp.)</label>
                                                                        <input type="number" class="form-control"
                                                                            placeholder="Harga Dasar Produk"
                                                                            name="basic_price"
                                                                            value="<?= $pd->basic_price ?>">
                                                                    </div>
                                                                </div>
                                                                <div class="col-12 col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label>Harga Jual (Rp.)</label>
                                                                        <input type="number" class="form-control"
                                                                            placeholder="Harga Jual Produk"
                                                                            name="selling_price"
                                                                            value="<?= $pd->selling_price ?>">
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
                                        <div class="modal fade" id="modalProductDelete<?= $pd->id_purchase_detail; ?>"
                                            tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="DeleteModalLabel">Hapus Produk</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <form role="form"
                                                        action="<?= base_url('produk/purchase_detail_delete') ?>"
                                                        method="POST">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="hidden" name="id_purchase"
                                                                    value="<?= $pd->id_purchase; ?>">
                                                                <input type="hidden" name="id_purchase_detail"
                                                                    value="<?= $pd->id_purchase_detail; ?>">
                                                                <input type="hidden" name="id_lab" value="<?= $lab; ?>">
                                                                <input type="hidden" name="id_product"
                                                                    value="<?= $pd->id_product; ?>">
                                                                <input type="hidden" name="qty_product"
                                                                    value="<?= $pd->qty_product; ?>">
                                                                <p class="text-sm mt-3">Yakin ingin menghapus produk : <span
                                                                        class="text-bold">
                                                                        <?= $pd->product; ?>
                                                                    </span> dari list pembelian produk!</p>
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


                                    <?php if ($total->total == NULL): ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="3"></td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">TOTAL</p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                                                    <?= number_format($total->total, 0, ',', '.'); ?>,-
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