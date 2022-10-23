<!-- SELAMAT DATANG -->
<div class="row">
    <div class="col-xl-9 col-sm-8 col-8 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-xl-7 col-sm-12">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-uppercase font-weight-bolder">Welcome!</p>
                            <p>
                                Selamat datang <b><?= $user["name"]; ?></b>, jangan lupa mengucap <b><i>"Bismillah"</i></b> sebelum memulai aktivitas. Semoga aktifitas hari ini berjalan lancar. Aamiin
                            </p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-12 text-end">
                        <div class="icon icon-shape shadow-primary text-center rounded-circle">
                            <i class="ni ni-calendar-grid-58 text-lg opacity-10 text-dark" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-12 text-end">
                        <div class="font-weight-bolder">
                            <script>
                                var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
                                var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum&#39;at', 'Sabtu'];
                                var date = new Date();
                                var day = date.getDate();
                                var month = date.getMonth();
                                var thisDay = date.getDay(),

                                    thisDay = myDays[thisDay];

                                var yy = date.getYear();
                                var year = (yy < 1000) ? yy + 1900 : yy;

                                document.write(thisDay + ', ' + day + ' ' + months[month] + ' ' + year);
                            </script>
                        </div>
                        <div id="clock"></div>

                        <script>
                            setInterval(() => {
                                let date = new Date()
                                let clock = document.getElementById('clock')
                                clock.innerHTML =
                                    date.getHours() + ":" +
                                    date.getMinutes() + ":" +
                                    date.getSeconds() + " WIB"
                            }, 1000);
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-4 col-4 mb-4">
        <a href="<?= base_url("kasir"); ?>">
            <div class="card text-white" style="
                      background-image: url('<?= base_url('assets/img/foto-lab-1.jpg'); ?>'); background-size: cover; background-position: center top; height: 100%;
                    ">
                <div class="card-body p-3">
                    <div class="row">
                        <div class="col-12 col-sm-8">
                            <div class="numbers">
                                <p class="text-sm mb-0 text-uppercase font-weight-bold">Masuk Kasir</p>
                                <h6 class="font-weight-bolder text-white">
                                    APPLIKASI KASIR
                                </h6>
                            </div>
                        </div>
                        <div class="col-12 col-sm-4">

                            <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                                <i class="ni ni-bold-right text-lg opacity-10" aria-hidden="true"></i>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>

<!-- INFO 4 PANEL -->
<div class="row">
    <div class="col-xl-3 col-sm-6 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-uppercase font-weight-bold">Jumlah Kelas</p>
                            <h6 class="font-weight-bolder">
                                <?= $count_class; ?> Kelas
                            </h6>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                            <i class="ni ni-trophy text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-4">
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
    <div class="col-xl-3 col-sm-6 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-uppercase font-weight-bold">Franchisor</p>
                            <h6 class="font-weight-bolder">
                                <?= $count_franchisor; ?> Franchisor
                            </h6>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
                            <i class="ni ni-single-02 text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-4">
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

<!-- INFO JADWAL GURU & PRODUK RANDOM -->
<div class="row">
    <div class="col-12 col-lg-7 mb-lg-3 mb-4">
        <div class="card">
            <div class="card-header pb-0 p-3">
                <div class="d-flex justify-content-between">
                    <h6 class="mb-2">Jadwal Guru Piket</h6>
                </div>
            </div>
            <div class="table-responsive mb-4">
                <table class="table align-items-center">
                    <tbody>
                        <?php foreach ($schedule->result() as $s) : ?>
                            <tr>
                                <td class="w-30">
                                    <div class="d-flex px-2 py-1 align-items-center">
                                        <div>
                                            <p class="text-xs mb-0">Guru:</p>
                                            <?php if ($s->picket_schedule == date("Y-m-d")) : ?>
                                                <p class="badge bg-success text-sm font-weight-bold mb-0 mt-2"><?= $s->name; ?></p>
                                            <?php else : ?>
                                                <p class="text-sm mb-0"><?= $s->name; ?></p>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <p class="text-xs mb-0">Kelas:</p>
                                        <?php if ($s->picket_schedule == date("Y-m-d")) : ?>
                                            <p class="badge bg-info text-sm font-weight-bold mb-0 mt-2"><?= $s->class; ?></p>
                                        <?php else : ?>
                                            <p class="text-sm mb-0"><?= $s->class; ?></p>
                                        <?php endif; ?>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <p class="text-xs mb-0">Tanggal:</p>
                                        <?php if ($s->picket_schedule == date("Y-m-d")) : ?>
                                            <p class="badge bg-warning text-sm font-weight-bold mb-0 mt-2"><?= date('d M Y', strtotime($s->picket_schedule)); ?></p>
                                        <?php else : ?>
                                            <p class="text-sm mb-0"><?= date('d M Y', strtotime($s->picket_schedule)); ?></p>
                                        <?php endif; ?>
                                    </div>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="col-12 col-lg-5 mb-lg-3 mb-4">
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

<!-- PRODUK HABIS & DAFTAR FRANCHISOR -->
<div class="row">
    <div class="col-12 col-lg-7 mb-4">
        <div class="card ">
            <div class="card-header pb-0 p-3">
                <div class="d-flex justify-content-between">
                    <h6 class="mb-2">Produk Hampir Habis</h6>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center" id="data-table">
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

    <div class="col-12 col-lg-5">
        <div class="card ">
            <div class="card-header pb-0 p-3">
                <div class="d-flex justify-content-between">
                    <h6 class="mb-2">Daftar Franchisor</h6>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center mb-0" id="table1">
                    <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" width="7%">No.</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No. Whatsapp</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($franchisor->result() as $f) : ?>
                            <tr>
                                <td>
                                    <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                </td>
                                <td>
                                    <p class="text-xs font-weight-bold mb-0 px-3"><?= $f->name; ?></p>
                                </td>
                                <td>
                                    <p class="text-xs font-weight-bold mb-0 px-3"><a href="https://wa.me/62<?= $f->whatsapp; ?>" target="blank" class="badge bg-success btn-sm px-3 py-2 rounded-pill"><i class="fa fa-whatsapp"></i></a></p>
                                </td>
                            </tr>
                            <?php $i++; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>