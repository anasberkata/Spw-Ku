<div class="position-absolute w-100 min-height-300 top-0" style="background-image: url('assets/img/bg-profile.jpg'); background-position-y: 50%; background-repeat: no-repeat; background-size: cover;">
    <span class="mask bg-primary opacity-6"></span>
</div>
<div class="main-content position-relative max-height-vh-100 h-100">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg bg-transparent shadow-none px-4 w-100 z-index-2 mt-4">
        <div class="container-fluid py-1">
            <nav aria-label="breadcrumb">
                <h6 class="text-white font-weight-bolder ms-2">Profile SPW-KU</h6>
            </nav>
            <div class="collapse navbar-collapse me-md-0 me-sm-4 mt-sm-0 mt-2 justify-content-end" id="navbar">
                <ul class="navbar-nav justify-content-end">
                    <li class="nav-item d-flex align-items-center">
                        <a href="<?= base_url('auth') ?>" class="nav-link text-white font-weight-bold px-0">
                            <i class="fa fa-user me-sm-1"></i>
                            <span class="d-sm-inline">Sign In</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header pb-0">
                        <div class="d-flex align-items-center">
                            <p class="mb-0 text-uppercase">Tentang SPW-KU</p>
                        </div>
                    </div>
                    <div class="card-body">
                        <p class="text-sm">Kewirausahaaan merupakan salah satu program nasional yang penting. Berbagai departemen, instansi pemerintah maupun
                            swasta hingga lembaga swadaya masyarakat mengadakan berbagai program kewirausahaan untuk mendukung program nasional
                            tersebut. Selaras dengan dengan hal tersebut, untuk meningkatakan jumlah lulusan SMK yang dapat berwirausaha, diperlukan
                            upaya peningkatan jiwa dan semangat berwirausaha di kalangan siswa SMK. Beberapa teori menyatakan bahwa berwirausaha
                            adalah bakat sejak lahir, akan tetapi berwirausaha juga dapat dipelajari, dilatihkan secara strategik dan
                            berkesinambungan. Peran sekolah sangat dibutuhkan dalam upaya menumbuhkembangkan jiwa kewirausahaan bagi siswanya sejak
                            dini. Selaras dengan hal ini, maka Program SPW-KU merupakan salah satu bentuk komitmen sekolah dalam memberikan ruang
                            kepada siswa untuk menumbuhkembangkan jiwa dan semangat berwirausaha sebagai salah satu bekal mencapai kemandirian
                            mental dan finansial.</p>
                        <p class="text-sm">Program SEKOLAH PENCETAK WIRASAHA (SPW-KU), merupakan salah satu pilar yang mendukung kegiatan kewirausahaan di SMK N
                            2 Cilaku Cianjur. Program ini merupakan integrasi dari mata pelajaran Produk Kreatif Kewirausahaan dan mata pelajaran produktif.</p>
                        <p class="text-sm">Program SPW-KU diselenggarakan sekolah sebagai wadah bagi para siswa yang memilki talenta bisnis dan ketertarikan minat berwirausaha yang berkaitan dengan jurusan maupun di luar jurusannya sesuai peluang yang ada untuk mengembangakan bakat mereka. Dengan program ini diharapkan siswa yang berbakat/bertalenta bisnis dan memiliki ketertarikan bisnis akan mendapatkan dukungan dan ruang yang lebih representatif untuk menyalurkan bakat mereka agar dapat dikembangkan.</p>

                        <hr class="horizontal dark">
                        <p class="text-uppercase text-sm">Visi & Misi</p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card card-carousel overflow-hidden h-100 p-0">
                    <div id="carouselExampleCaptions" class="carousel slide h-100" data-bs-ride="carousel">
                        <div class="carousel-inner border-radius-lg h-100">

                            <div class="carousel-item h-100 active" style="background-image: url('assets/img/carousel-2.jpg'); background-size: cover; background-position: center;">
                                <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                                        <i class="ni ni-camera-compact text-dark opacity-10"></i>
                                    </div>
                                    <h5 class="text-white mb-1">Ira Akhira Dewi, S.Pd.</h5>
                                    <p>Koordinator SPW-KU</p>
                                    <div class="d-flex justify-content-start">
                                        <div class="d-grid text-center">
                                            <a href="">
                                                <span class="text-white opacity-8"><i class="fa fa-facebook"></i></span>
                                            </a>
                                        </div>
                                        <div class="d-grid text-center mx-4">
                                            <a href="">
                                                <span class="text-white opacity-8"><i class="fa fa-instagram"></i></span>
                                            </a>
                                        </div>
                                        <div class="d-grid text-center">
                                            <a href="">
                                                <span class="text-white opacity-8"><i class="fa fa-whatsapp"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <?php foreach ($users->result() as $u) : ?>
                                <div class="carousel-item h-100" style="background-image: url('<?= base_url('assets/img/users/') . $u->image; ?>'); background-size: cover; background-position: center;">
                                    <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                                        <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                                            <i class="ni ni-trophy text-dark opacity-10"></i>
                                        </div>
                                        <h5 class="text-white mb-1"><?= $u->name; ?></h5>
                                        <p><?= $u->role; ?></p>
                                        <div class="d-flex justify-content-start">
                                            <div class="d-grid text-center">
                                                <a href="https://www.facebook.com/<?= $u->facebook; ?>">
                                                    <span class="text-white opacity-8"><i class="fa fa-facebook"></i></span>
                                                </a>
                                            </div>
                                            <div class="d-grid text-center mx-4">
                                                <a href="https://www.instagram.com/<?= $u->instagram; ?>">
                                                    <span class="text-white opacity-8"><i class="fa fa-instagram"></i></span>
                                                </a>
                                            </div>
                                            <div class="d-grid text-center">
                                                <a href="">
                                                    <span class="text-white opacity-8"><i class="fa fa-whatsapp"></i></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>

                        </div>
                        <button class="carousel-control-prev w-5 me-3" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next w-5 me-3" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- <footer class="footer pt-3 mt-2">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-lg-between">
                    <div class="col-lg-6 mb-lg-0 mb-4">
                        <div class="copyright text-center text-sm text-muted text-lg-start">
                            © <script>
                                document.write(new Date().getFullYear())
                            </script>,
                            Dev by
                            <a href="https://www.instagram.com/anasberkata" class="font-weight-bold" target="_blank">Anas Berkata</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                            <li class="nav-item">
                                <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                            </li>
                            <li class="nav-item">
                                <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                            </li>
                            <li class="nav-item">
                                <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                            </li>
                            <li class="nav-item">
                                <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div> -->