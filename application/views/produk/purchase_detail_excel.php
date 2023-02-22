<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Pembelian Produk " . $purchase_detail->result()[0]->place . " Lab " . $lab . ".xls");
?>
<!DOCTYPE html>
<html>

<head>
    <title>Data Pembelian Produk </title>
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
                Data Pembelian Produk :
                <?= $purchase_detail->result()[0]->place; ?> | Supplier :
                <?= $purchase["supplier"] ?> | Tanggal :
                <?= date('d F Y', strtotime($purchase["date_purchasing"])); ?> | Lab : SPW
                <?= $lab ?>
            </td>
        </tr>
        <tr>
            <th>NO.</th>
            <th colspan="5">NAMA PRODUK</th>
            <th>QTY</th>
            <th>HARGA DASAR</th>
            <th>HARGA JUAL</th>
            <th>TOTAL HARGA DASAR</th>
            <th>TOTAL HARGA JUAL</th>
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
                        <?= $pd->product; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->qty_product; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->basic_price; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->selling_price; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->total_basic_price; ?>
                    </p>
                </td>
                <td style="text-align: right;">
                    <p>
                        <?= $pd->total_selling_price; ?>
                    </p>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>

        <?php if ($total_basic_price->total == NULL): ?>
        <?php else: ?>
            <tr>
                <th colspan="9" style="text-align: right;"> TOTAL</th>
                <td>
                    <?= $total_basic_price->total; ?>
                </td>
                <td>
                    <?= $total_selling_price->total; ?>
                </td>
            </tr>
        <?php endif; ?>
    </table>


</body>

</html>