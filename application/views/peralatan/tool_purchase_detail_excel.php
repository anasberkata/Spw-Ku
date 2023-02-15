<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Pembelian " . $purchase["date_purchasing"] . " Lab " . $lab . ".xls");
?>
<!DOCTYPE html>
<html>

<head>
    <title>Data Pembelian Peralatan / Set</title>
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
            <td colspan="9">
                Data Pembelian Peralatan / Aset : Nama Toko :
                <?= $purchase["shop"] ?> | Tanggal :
                <?= date('d F Y', strtotime($purchase["date_purchasing"])); ?> | Lab : SPW
                <?= $lab ?>
            </td>
        </tr>
        <tr>
            <th>NO.</th>
            <th colspan="5">NAMA ASET</th>
            <th>QTY ASET</th>
            <th>HARGA SATUAN</th>
            <th>TOTAL HARGA</th>
            <th>KONDISI</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($purchase_detail->result() as $pd): ?>
            <tr>
                <td style="text-align: center;">
                    <p>
                        <?= $i; ?>
                    </p>
                </td>
                <td colspan="5">
                    <p>
                        <?= $pd->tool; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->qty_purchase; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->price_purchase; ?>
                    </p>
                </td>
                <td style="text-align: center;">
                    <p>
                        <?= $pd->total_price_purchase; ?>
                    </p>
                </td>
                <td style="text-align: center;">
                    <p>
                        <?= $pd->condition_purchase; ?>
                    </p>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>

        <?php if ($total->total == NULL): ?>
        <?php else: ?>
            <tr>
                <th colspan="8" style="text-align: right;"> TOTAL</th>
                <td>
                    <?= $total->total; ?>
                </td>
            </tr>
        <?php endif; ?>
    </table>


</body>

</html>