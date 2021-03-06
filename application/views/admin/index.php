<div class="row">
    <div class="col-12 col-lg-6">
        <div class="row">
            <!-- <div class="col-xl-6 col-sm-6 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Uang Masuk</p>
                                    <h6 class="font-weight-bolder">
                                        Rp. 1.250.000
                                    </h6>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <div class="col-xl-6 col-sm-6 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Total Produk</p>
                                    <h6 class="font-weight-bolder">
                                        <?= $count_products; ?> Produk
                                    </h6>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-warning shadow-warning text-center rounded-circle">
                                    <i class="ni ni-app text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="col-xl-6 col-sm-6 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Stok Produk</p>
                                    <h6 class="font-weight-bolder">
                                        2,300
                                    </h6>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
                                    <i class="ni ni-box-2 text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <div class="col-xl-6 col-sm-6 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Pengurus</p>
                                    <h6 class="font-weight-bolder">
                                        <?= $count_users; ?> Pengguna
                                    </h6>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-success shadow-success text-center rounded-circle">
                                    <i class="ni ni-single-02 text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col mb-lg-0 mb-4">
                <div class="row">
                    <div class="col">
                        <div class="card card-carousel overflow-hidden h-100 p-0">
                            <div id="carouselCaptions" class="carousel slide h-100" data-bs-ride="carousel">
                                <div class="carousel-inner border-radius-lg h-100">

                                    <div class="carousel-item h-100 active" style="background-image: url('<?= base_url('assets/img/products/aice-melon.jpg'); ?>'); background-size: cover; background-position: center top; min-height: 400px">
                                        <div class="carousel-caption d-md-block bottom-0 text-start start-0 ms-5">
                                            <h5 class="text-white mb-1">Aice Milk melon</h5>
                                            <p>Rp. 5.000,-</p>
                                        </div>
                                    </div>

                                    <?php foreach ($item->result() as $i) : ?>
                                        <div class="carousel-item h-100" style="background-image: url('<?= base_url('assets/img/products/') . $i->image ?>'); background-size: cover; background-position: center top; min-height: 400px">
                                            <div class="carousel-caption d-md-block bottom-0 text-start start-0 ms-5">
                                                <h6 class="text-dark mb-1"><?= $i->product; ?></h6>
                                                <p class="text-dark">Rp. <?= number_format($i->selling_price, 0, ',', '.'); ?>,-</p>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>

                                </div>
                                <button class="carousel-control-prev w-5 me-3" type="button" data-bs-target="#carouselCaptions" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon text-dark" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next w-5 me-3" type="button" data-bs-target="#carouselCaptions" data-bs-slide="next">
                                    <span class="carousel-control-next-icon text-dark" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-12 col-lg-6">
        <div class="card ">
            <div class="card-header pb-0 p-3">
                <div class="d-flex justify-content-between">
                    <h6 class="mb-2">Produk Hampir Habis</h6>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center" id="table1">
                    <tbody>
                        <?php foreach ($product->result() as $p) : ?>
                            <tr>
                                <td class="w-30">
                                    <div class="d-flex px-2 py-1 align-items-center">
                                        <div>
                                            <p class="text-xs mb-0">Produk:</p>
                                            <h6 class="text-sm font-weight-bold mb-0"><?= $p->product; ?></h6>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <p class="text-xs mb-0">Stok:</p>
                                        <h6 class="text-sm font-weight-bold mb-0"><?= $p->qty; ?></h6>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <p class="text-xs mb-0">Lab SPW:</p>
                                        <h6 class="text-sm font-weight-bold mb-0"><?= $p->id_lab ?></h6>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>