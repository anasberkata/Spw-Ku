<footer class="footer pt-3  ">
    <div class="container-fluid">
        <div class="row align-items-center justify-content-lg-between">
            <div class="col mb-lg-0 mb-4">
                <div class="copyright text-center text-sm text-muted text-lg-start">
                    © <script>
                        document.write(new Date().getFullYear())
                    </script>.
                    Dev by
                    <a href="https://www.instagram.com/anasberkata" class="font-weight-bold" target="_blank">TIM SPW SMK NEGERI 2 CILAKU CIANJUR</a>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
</main>

<!-- Modal Logout -->
<div class="modal fade" id="modalLogout" tabindex="-1" aria-labelledby="LogoutModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="LogoutModalLabel">Logout</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <h4 class="text-sm mt-3">Yakin ingin keluar?</h4>
                    <p class="small">Jangan lupa ucapkan <b><i>"Alhamdulillah"</i></b>, pekerjaan sudah beres, silahkan klik "Logout" untuk keluar.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Batal</button>
                <a class="btn btn-danger btn-sm" href="<?= base_url('auth/logout'); ?>">Logout</a>
            </div>
        </div>
    </div>
</div>

<!--   Core JS Files   -->
<script src="<?= base_url('assets/') ?>js/core/popper.min.js"></script>
<script src="<?= base_url('assets/') ?>js/core/bootstrap.min.js"></script>
<script src="<?= base_url('assets/') ?>js/plugins/perfect-scrollbar.min.js"></script>
<script src="<?= base_url('assets/') ?>js/plugins/smooth-scrollbar.min.js"></script>
<script src="<?= base_url('assets/') ?>js/plugins/chartjs.min.js"></script>

<script src="<?= base_url('vendor/') ?>simple-datatables/simple-datatables.js"></script>
<script>
    let data = document.querySelector('#data-table');
    let dataTable = new simpleDatatables.DataTable(data);
</script>

<!-- AJAX GOOGLE -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript">
    window.setTimeout(function() {
        $(".alert").fadeTo(500, 0).slideUp(500, function() {
            $(this).remove();
        });
    }, 4000);
</script>

<!-- <script src="<?= base_url('assets/js/jquery.min.js'); ?>"></script> -->

<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="<?= base_url('assets/') ?>js/spw-dashboard.min.js?v=2.0.2"></script>
</body>

</html>