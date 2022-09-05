<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=F1 Produk " . $place["place"] . " Lab " . $lab . ".xls");
?>
<!DOCTYPE html>
<html>

<head>
    <title>F1 - Data Produk </title>
</head>

<body>
    <style type="text/css">
        body {
            font-family: sans-serif;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
        }

        table th,
        table td {
            border: 1px solid #3c3c3c;
            padding: 8px;
            font-size: 12pt;
        }

        a {
            background: blue;
            color: #fff;
            padding: 8px 10px;
            text-decoration: none;
            border-radius: 2px;
        }
    </style>

    <center>
        <h4>
            SEKOLAH PENCETAK WIRAUSAHA
            <br />SMK NEGERI 2 CILAKU CIANJUR
            <br />SMKDA ENTREPRENEUR SCHOOL (SES)
            <br />Jl. Perintis Kemerdekaan No. 02 Kab. Cianjur Prov. Jawa Barat 43285
        </h4>
    </center>

    <table border="1">
        <tr>
            <td colspan="9"> Lab : SPW <?= $lab ?></td>
        </tr>
        <tr>
            <th>NO.</th>
            <th>NAMA PRODUK</th>
            <th>HARGA DASAR</th>
            <th>HARGA JUAL</th>
            <th>QTY AWAL</th>
            <th>QTY AKHIR</th>
            <th>QTY TERJUAL</th>
            <th>(QTY TERJUAL) x <br />(HARGA DASAR)</th>
            <th>(QTY TERJUAL) x <br />(HARGA JUAL)</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($product->result() as $p) : ?>
            <tr>
                <td style="text-align: center;">
                    <p><?= $i; ?></p>
                </td>
                <td>
                    <p><?= $p->product; ?></p>
                </td>
                <td style="text-align: right;">
                    <p>Rp. <?= $p->basic_price; ?></p>
                </td>
                <td style="text-align: right;">
                    <p>Rp. <?= $p->selling_price; ?></p>
                </td>
                <td style="text-align: center;">
                    <p><?= $p->qty; ?></p>
                </td>
                <td>
                    <p></p>
                </td>
                <td>
                    <p></p>
                </td>
                <td>
                    <p></p>
                </td>
                <td>
                    <p></p>
                </td>
            </tr>

            <?php $i++; ?>
        <?php endforeach; ?>

        <tr>
            <th colspan="7" style="text-align: right;"> TOTAL</th>
            <td></td>
            <td></td>
        </tr>
        <tr></tr>
        <tr>
            <th colspan="4">Tanggal: <?= date("d M Y"); ?></th>
            <th colspan="2">TANDA TANGAN</th>
            <th>JUMLAH SETOR <br />TOTAL HARGA <br />DASAR</th>
            <th>JUMLAH SETOR <br />TOTAL HARGA <br />PENJUALAN</th>
            <th>JUMLAH SETOR <br />TOTAL LABA</th>
        </tr>
        <tr>
            <td colspan="2">Guru Pembimbing Praktek</td>
            <td colspan="2">:</td>
            <td colspan="2"></td>
            <td rowspan="2"></td>
            <td rowspan="2"></td>
            <td rowspan="2"></td>
        </tr>
        <tr>
            <td colspan="2">Kepala Lab SPW</td>
            <td colspan="2">:</td>
            <td colspan="2"></td>
        </tr>

    </table>


</body>

</html>