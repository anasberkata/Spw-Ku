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
            <td width="10%"><img src="<?= base_url('assets/img/logos/logo-smkdaku.png'); ?>" alt="Logo SMK DAKU"
                    width="75"></td>
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

    <h6 class="text-xs">Lab : <b><i>
                <?="SPW " . $lab; ?>
            </i></b></h6>

    <table class="table align-items-center" cellpadding="7">
        <thead>
            <tr class="border-2">
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">NO.</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">NAMA PRODUK</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">HARGA DASAR</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">HARGA JUAL</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">QTY AWAL</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">QTY AKHIR</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">QTY TERJUAL</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">(QTY TERJUAL) x <br> (HARGA
                    DASAR)</td>
                <td class="border text-uppercase text-xs font-weight-bolder mb-0 px-3">(QTY TERJUAL) x <br> (HARGA JUAL)
                </td>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach ($student_selling_detail->result() as $fd): ?>
                <tr class="border height-100">
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3">
                            <?= $i; ?>
                        </p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">
                            <?= $fd->product; ?>
                        </p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($fd->basic_price, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($fd->selling_price, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3">
                            <?= $fd->qty_product; ?>
                        </p>
                    </td>
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3">
                            <?= $fd->qty_last; ?>
                        </p>
                    </td>
                    <td class="border text-center">
                        <p class="text-xs font-weight-bold mb-0 px-3">
                            <?= $fd->qty_selling; ?>
                        </p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($fd->total_basic_price, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($fd->total_selling_price, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                </tr>

                <?php $i++; ?>
            <?php endforeach; ?>

            <?php if ($total_basic_price_student_selling->total_basic_price_student_selling == NULL): ?>
            <?php else: ?>
                <tr class="border">
                    <td colspan="6"></td>
                    <td>
                        <p class="text-xs font-weight-bolder mb-0 px-3">TOTAL</p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                            <?= number_format($total_basic_price_student_selling->total_basic_price_student_selling, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                    <td class="border text-end">
                        <p class="text-xs font-weight-bolder mb-0 px-3">Rp.
                            <?= number_format($total_selling_price_student_selling->total_selling_price_student_selling, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>

    <table class="table align-items-center" cellpadding="7">
        <?php if ($total_basic_price_student_selling->total_basic_price_student_selling == NULL): ?>
        <?php else: ?>
            <thead>
                <tr class="border">
                    <td colspan="2">
                        <p class="text-xs font-weight-bold">Tanggal :
                            <?= date('d F Y', strtotime($student_selling["date_selling"])) ?>
                        </p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Tanda Tangan</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> Total Harga
                            <br> Dasar</p>
                        <p class="text-xs mb-0 px-3">(Disetorkan ke <br> pemilik produk)</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> 80% Laba <br>
                            Penjualan</p>
                        <p class="text-xs mb-0 px-3">(Disetorkan ke <br> SPW)</p>
                    </td>
                    <td class="border text-center">
                        <p class="text-uppercase text-xs font-weight-bolder mb-0 px-3 pt-5">Jumlah Setor <br> 20% laba <br>
                            Penjualan</p>
                        <p class="text-xs mb-0 px-3">(Untuk Siswa)</p>
                    </td>
                </tr>
            </thead>
            <tbody>
                <tr class="border">
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">Guru Pembimbing Praktik</p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">:
                            <?= $user["name"]; ?>
                        </p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3"></p>
                    </td>
                    <td class="border text-center" rowspan="3">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($total_basic_price_student_selling->total_basic_price_student_selling, 0, ',', '.'); ?>,-
                        </p>
                    </td>

                    <?php
                    $laba_spw = ($total_selling_price_student_selling->total_selling_price_student_selling - $total_basic_price_student_selling->total_basic_price_student_selling) * 0.2;

                    $laba_siswa = ($total_selling_price_student_selling->total_selling_price_student_selling - $total_basic_price_student_selling->total_basic_price_student_selling) * 0.8;
                    ?>

                    <td class="border text-center" rowspan="3">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($laba_spw, 0, ',', '.'); ?>,-
                        </p>
                    </td>
                    <td class="border text-center" rowspan="3">
                        <p class="text-xs font-weight-bold mb-0 px-3">Rp.
                            <?= number_format($laba_siswa, 0, ',', '.'); ?>,-
                        </p>
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
                <tr class="border">
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">Kelas</p>
                    </td>
                    <td class="border">
                        <p class="text-xs font-weight-bold mb-0 px-3">:
                            <?= $student_selling["class"]; ?>
                        </p>
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