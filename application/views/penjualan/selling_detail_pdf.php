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
            <td style="text-align: center;">
                <p class="head-desc">SEKOLAH PENCETAK WIRAUSAHA (SPW)
                    <br>SMK NEGERI 2 CILAKU CIANJUR
                    <br>SMKDA ENTREPRENEUR SCHOOL (SES)
                    <br>Jl. Perintis Kemerdekaan No. 02 Kab Cianjur Prov. Jawa Barat 43285
                </p>
            </td>
        </tr>
    </table>
    <!-- END HEADER -->

    <hr>

    <h6 class="text-xs">Lab : <b><i><?= "SPW " . $lab; ?></i></b></h6>

    <table class="table align-items-center" cellpadding="10">
        <thead>
            <tr class="border-2">
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">NO.</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">NAMA PRODUK</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">HARGA DASAR</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">HARGA JUAL</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">QTY AKHIR</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">QTY TERJUAL</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">(QTY TERJUAL) x <br> (HARGA DASAR)</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">(QTY TERJUAL) x <br> (HARGA JUAL)</td>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach ($selling_detail->result() as $sd) : ?>
                <tr class="border height-100">
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $sd->product; ?></p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($sd->basic_price, 0, ',', '.'); ?>,-</p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($sd->selling_price, 0, ',', '.'); ?>,-</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $sd->qty; ?></p>
                    </td>
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3"><?= $sd->qty_selling; ?></p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($sd->total_basic_price, 0, ',', '.'); ?>,-</p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($sd->total_selling_price, 0, ',', '.'); ?>,-</p>
                    </td>
                </tr>

                <?php $i++; ?>
            <?php endforeach; ?>

            <?php if ($total_basic_price->total_basic_price == NULL) : ?>
            <?php else : ?>
                <tr class="border">
                    <td colspan="5"></td>
                    <td>
                        <p class="text-xs font-weight-bolder mb-0 px-3">TOTAL</p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($total_basic_price->total_basic_price, 0, ',', '.'); ?>,-</p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bolder mb-0 px-3">Rp. <?= number_format($total_selling_price->total_selling_price, 0, ',', '.'); ?>,-</p>
                    </td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>

    <table class="table align-items-center" cellpadding="10">
        <?php if ($total_basic_price->total_basic_price == NULL) : ?>
        <?php else : ?>
            <thead>
                <tr class="border">
                    <td colspan="2">
                        <p class="text-xs font-weight-bold">Tanggal : <?= date('d F Y', strtotime($selling["date_selling"])) ?></p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Tanda Tangan</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> Total Harga <br> Dasar</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> Total Harga <br> Penjualan</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> Total Laba</p>
                    </td>
                </tr>
            </thead>
            <tbody>
                <tr class="border">
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">Guru Pembimbing Praktik</p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">: <?= $user["name"]; ?></p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"></p>
                    </td>
                    <td class="border text-center" rowspan="2">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($total_basic_price->total_basic_price, 0, ',', '.'); ?>,-</p>
                    </td>
                    <td class="border text-center" rowspan="2">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($total_selling_price->total_selling_price, 0, ',', '.'); ?>,-</p>
                    </td>

                    <?php $laba = $total_selling_price->total_selling_price - $total_basic_price->total_basic_price; ?>

                    <td class="border text-center" rowspan="2">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp. <?= number_format($laba, 0, ',', '.'); ?>,-</p>
                    </td>
                </tr>
                <tr class="border">
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">Kepala Lab SPW</p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">: </p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"></p>
                    </td>
                </tr>
            </tbody>
        <?php endif; ?>
    </table>

</body>

</html>