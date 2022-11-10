<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url('assets/') ?>img/apple-icon.png">
    <link rel="icon" type="image/png" href="<?= base_url('assets/') ?>img/favicon.png">

    <title>
        <?= $title; ?>
    </title>

    <!-- Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />

    <!-- Nucleo Icons -->
    <link href="<?= base_url('assets/') ?>css/nucleo-icons.css" rel="stylesheet" />
    <link href="<?= base_url('assets/') ?>css/nucleo-svg.css" rel="stylesheet" />

    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="<?= base_url('assets/') ?>css/nucleo-svg.css" rel="stylesheet" />

    <!-- Datatables -->
    <link rel="stylesheet" href="<?= base_url('vendor/') ?>simple-datatables/style.css">
    <!-- CSS Files -->
    <link id="pagestyle" href="<?= base_url('assets/') ?>css/spw-dashboard.css?v=2.0.2" rel="stylesheet" />
</head>

<body>

    <!-- HEADER -->
    <table cellpadding="10" width="100%">
        <tr>
            <td width="25%"></td>
            <td width="10%"><img src="<?= base_url('assets/img/logos/logo-smkdaku.png'); ?>" alt="Logo SMK DAKU" width="75"></td>
            <td width="30%" style="text-align: center;">
                <p class="text-xs">SEKOLAH PENCETAK WIRAUSAHA (SPW)
                    <br>SMK NEGERI 2 CILAKU CIANJUR
                    <br>SMKDA ENTREPRENEUR SCHOOL (SES)
                    <br>Jl. Perintis Kemerdekaan No. 02 Kab Cianjur Prov. Jawa Barat 43285
                </p>
            </td>
            <td width="20%"></td>
            <td width="15%"></td>
        </tr>
    </table>
    <!-- END HEADER -->

    <hr>

    <h6 class="text-xs">Data Peralatan Lab : <b><i><?= "SPW " . $lab; ?></i></b></h6>

    <table class="table align-items-center" cellpadding="7">
        <thead>
            <tr class="border-2">
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3 text-center">No.</th>
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">Nama Peralatan</th>
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">Spesifikasi / Merk</th>
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3 text-center">Qty</th>
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">Kondisi</th>
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">Keterangan</th>
                <th class="border text-uppercase text-xs font-weight-bolder mb-0 px-3 text-end">Harga</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach ($tool->result() as $t) : ?>
                <tr class="border height-100">
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->tool; ?></p>
                    </td>
                    <td class="border">
                        <p class=" text-xs font-weight-bold mb-0 px-3"><?= $t->brand; ?></p>
                    </td>
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->qty; ?></p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->condition; ?></p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $t->description; ?></p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($t->price, 0, ',', '.'); ?>,-</p>
                    </td>
                </tr>
                <?php $i++; ?>
            <?php endforeach; ?>

            <?php if ($total_price->total_price == NULL) : ?>
            <?php else : ?>
                <tr class="border height-100">
                    <td class="border text-end" colspan="6">
                        <p class="text-xs font-weight-bolder mb-0 px-3">TOTAL</p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($total_price->total_price, 0, ',', '.'); ?>,-</p>
                    </td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
</body>

</html>