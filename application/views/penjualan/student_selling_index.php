<div class="row">
    <div class="col">
        <h6 class="text-white p-3">Pilih Lab</h6>
    </div>
</div>

<div class="row mb-5">
    <div class="col">
        <div class="row">
            <?php $i = 1; ?>
            <?php foreach ($lab->result() as $l) : ?>
                <div class="col-xl-6 mb-xl-0 mb-4">
                    <a href="<?= base_url('penjualan/student_selling/?id_lab=') . $l->id_lab; ?>">
                        <div class="card bg-transparent shadow-xl">
                            <div class="overflow-hidden position-relative border-radius-xl" style="
                      background-image: url('<?= base_url('assets/img/') . $l->photo_lab; ?>'); background-size: cover;
                    ">
                                <span class="mask bg-gradient-dark"></span>
                                <div class="card-body position-relative z-index-1 p-3">
                                    <i class="fas fa-wifi text-white p-2"></i>
                                    <h5 class="text-white mt-4 mb-5 pb-2 text-uppercase">
                                        <?= $l->lab; ?>
                                    </h5>
                                    <div class="d-flex">
                                        <div class="d-flex">
                                            <div class="me-4">
                                                <p class="text-white text-sm opacity-8 mb-0">
                                                    PJ. Produk
                                                </p>
                                                <h6 class="text-white mb-0"><?= $l->name; ?></h6>
                                            </div>
                                            <div>
                                                <p class="text-white text-sm opacity-8 mb-0">
                                                    PJ. Peralatan
                                                </p>
                                                <h6 class="text-white mb-0"><?= $l->equipment_in_charge; ?></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <?php $i++; ?>
            <?php endforeach; ?>
        </div>
    </div>

</div>