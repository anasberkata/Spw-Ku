<div class="container position-sticky z-index-sticky top-0">
    <div class="row">
        <div class="col-12">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg blur border-radius-lg top-0 z-index-3 shadow position-absolute mt-4 py-2 start-0 end-0 mx-4">
                <div class="container-fluid">
                    <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="#">
                        SPW SMK NEGERI 2 CILAKU
                    </a>
                    <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon mt-2">
                            <span class="navbar-toggler-bar bar1"></span>
                            <span class="navbar-toggler-bar bar2"></span>
                            <span class="navbar-toggler-bar bar3"></span>
                        </span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link me-2" href="https://smkn2cilakucianjur.sch.id/">
                                    <i class="fas fa-school opacity-6 text-dark me-1"></i>
                                    Profile SMK Negeri 2 Cilaku
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link me-2" href="<?= base_url('spw_ku') ?>">
                                    <i class="fas fa-user-circle opacity-6 text-dark me-1"></i>
                                    Tentang SPW-KU
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
        </div>
    </div>
</div>
<main class="main-content  mt-0">
    <section>
        <div class="page-header min-vh-100">
            <div class="container">
                <div class="row">
                    <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
                        <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden" style="background-image: url('assets/img/bg-login.jpg'); background-size: cover;">
                            <!-- <span class="mask bg-gradient-primary opacity-6"></span> -->
                            <h4 class="mt-5 text-white font-weight-bolder font-italic position-relative">"Sekolah Pencetak Wirausaha"</h4>
                            <p class="text-white position-relative">Belajar tanpa berpikir itu tidaklah berguna, tapi berpikir tanpa belajar itu sangatlah berbahaya!</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
                        <div class="card card-plain">
                            <div class="card-header pb-0 text-center">
                                <!-- <img src="assets/img/logos/logo-smkdaku.png" alt="Logo SMKN 2 Cilaku" width="30%" class="mb-3"> -->
                                <h4 class="font-weight-bolder">Login - Lab SPW</h4>
                            </div>
                            <div class="card-body">

                                <?= $this->session->flashdata('message'); ?>

                                <form role="form" action="<?= base_url('auth') ?>" method="POST">
                                    <div class="mb-3">
                                        <input type="email" class="form-control form-control-lg" placeholder="Email" aria-label="Email" name="email" id="email" value="<?= set_value('email'); ?>">
                                        <?= form_error('email', '<small class"text-danger pl-3">', '</small>') ?>
                                    </div>
                                    <div class="mb-3">
                                        <div class="input-group">
                                            <input type="password" class="form-control form-control-lg" placeholder="Password" aria-label="Password" name="password" id="password">

                                            <span id="openPass" onclick="openPass()" class="input-group-text">
                                                <i class="fas fa-eye"></i>
                                            </span>

                                            <script>
                                                function openPass() {
                                                    var x = document.getElementById('password').type;
                                                    if (x == 'password') {
                                                        document.getElementById('password').type = 'text';
                                                        document.getElementById('openPass').innerHTML = `<i class="fas fa-eye-slash"></i>`;
                                                    } else {
                                                        document.getElementById('password').type = 'password';
                                                        document.getElementById('openPass').innerHTML = `<i class="fas fa-eye"></i>`;
                                                    }
                                                }
                                            </script>


                                            <?= form_error('password', '<small class"text-danger pl-3">', '</small>') ?>
                                        </div>

                                    </div>
                                    <!-- <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" id="rememberMe">
                                        <label class="form-check-label" for="rememberMe">Remember me</label>
                                    </div> -->
                                    <div class="text-center">
                                        <button type="submit" name="submit" class="btn btn-lg btn-primary btn-lg w-100 mb-0">Sign in</button>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer text-center pt-0 px-lg-2 px-1">
                                <!-- <p class="mb-4 text-sm mx-auto">
                                    Don't have an account?
                                    <a href="javascript:;" class="text-primary text-gradient font-weight-bold">Sign up</a>
                                </p> -->
                                <p class="mb-4 text-sm mx-auto">
                                    Lupa Password? Klik
                                    <a href="https://wa.me/message/3KL7OTZRYNCGC1" target="blank" class="text-primary text-gradient font-weight-bold">di Sini</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>