<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Mutasi Produk " . $mutation["date_mutation"] . " Lab " . $lab . ".xls");
?>
<!DOCTYPE html>
<html>

<head>
    <title>Data Mutasi Produk </title>
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
                Data Mutasi Produk :
                Tanggal :
                <?= date('d F Y', strtotime($mutation["date_mutation"])); ?> | Lab : SPW
                <?= $lab ?>
            </td>
        </tr>
        <tr>
            <th>NO.</th>
            <th colspan="5">NAMA PRODUK</th>
            <th>QTY GUDANG</th>
            <th>QTY MUTASI</th>
            <th>QTY SPW</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($mutation_detail->result() as $pd): ?>
            <tr>
                <td style="text-align: center;">
                    <p>
                        <?= $i; ?>
                    </p>
                </td>
                <td colspan="5">
                    <p>
                        <?= $pd->product; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->qty; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->qty_mutation; ?>
                    </p>
                </td>
                <td style="text-align: center;">
                    <p>
                        <?= $pd->qty_shop; ?>
                    </p>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>
    </table>


</body>

</html>