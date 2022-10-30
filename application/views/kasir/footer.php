</div>
</main>

<!-- <script src="<?php echo base_url() ?>assets/cart/jquery/jquery-3.2.1.min.js"></script> -->
<!-- <script src="<?php echo base_url() ?>assets/cart/js/arf.js"></script> -->
<!-- <script src="<?php echo base_url() ?>assets/cart/js/prs.js"></script> -->
<!-- <script src="<?php echo base_url() ?>assets/cart/js/validation.js"></script> -->
<!-- <script src="<?php echo base_url() ?>assets/cart/jquery/jquery-ui.js"></script> -->
<!-- <script src="<?php echo base_url() ?>assets/cart/jquery/jquery.validate.min.js"></script> -->
<!-- <script>
    window.jQuery || document.write('<script src="<?php echo base_url() ?>assets/cart/vendor/jquery.min.js"><\/script>')
</script> -->











<!--   Core JS Files   -->
<!-- <script src="<?= base_url('assets/') ?>js/core/popper.min.js"></script> -->
<!-- <script src="<?= base_url('assets/') ?>js/core/bootstrap.min.js"></script> -->
<!-- <script src="<?= base_url('assets/') ?>js/plugins/perfect-scrollbar.min.js"></script> -->
<!-- <script src="<?= base_url('assets/') ?>js/plugins/smooth-scrollbar.min.js"></script> -->

<script src="<?= base_url('vendor/') ?>simple-datatables/simple-datatables.js"></script>
<script>
    let data = document.querySelector('#data-table');
    let dataTable = new simpleDatatables.DataTable(data);
</script>

<!-- AJAX GOOGLE -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->

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
<script src="<?= base_url('assets/') ?>js/spw-dashboard.min.js?v=2.0.2"></script>
</body>

</html>