<?php
// Koneksi
$config = mysqli_connect("localhost", "root", "", "db_spw");
$product = mysqli_fetch_array(mysqli_query($config, "SELECT * FROM tbl_product WHERE id_product = '$_GET[id]'"));
$data_product = [
    'basic_price' => $product['basic_price'],
    'selling_price' => $product['selling_price']
];

echo json_encode($data_product);
