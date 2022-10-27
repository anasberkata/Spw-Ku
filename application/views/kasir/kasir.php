<!DOCTYPE html>
<html>

<head>
    <title>KASIR SPW</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/casheer/css/bootstrap.css' ?>">
</head>

<body>
    <div class="container"><br />
        <h2>KASIR SPW</h2>
        <hr />
        <div class="row">
            <div class="col-md-8">
                <h4>Produk</h4>
                <div class="row">
                    <?php foreach ($product->result() as $row) : ?>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img width="200" src="<?php echo base_url() . 'assets/img/products/' . $row->image; ?>">
                                <div class="caption">
                                    <h4><?php echo $row->product; ?></h4>
                                    <div class="row">
                                        <div class="col-md-7">
                                            <h4><?php echo 'Rp ' . number_format($row->selling_price); ?></h4>
                                        </div>
                                        <div class="col-md-5">
                                            <input type="number" name="quantity" id="<?php echo $row->id_product; ?>" value="1" class="quantity form-control">
                                        </div>
                                    </div>
                                    <button class="add_cart btn btn-success btn-block" data-productid="<?php echo $row->id_product; ?>" data-productname="<?php echo $row->product; ?>" data-productprice="<?php echo $row->selling_price; ?>">Add To Cart</button>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>

                </div>

            </div>
            <div class="col-md-4">
                <h4>Keranjang Belanja</h4>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Produk</th>
                            <th>Harga</th>
                            <th>Qty</th>
                            <th>Subtotal</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="detail_cart">

                    </tbody>

                </table>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/js/jquery-2.2.3.min.js' ?>"></script>
    <script type="text/javascript" src="<?php echo base_url() . 'assets/casheer/js/bootstrap.js' ?>"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.add_cart').click(function() {
                var product_id = $(this).data("productid");
                var product_name = $(this).data("productname");
                var product_price = $(this).data("productprice");
                var quantity = $('#' + product_id).val();
                $.ajax({
                    url: "<?php echo base_url(); ?>kasir/cashier_cart_add",
                    method: "POST",
                    data: {
                        product_id: product_id,
                        product_name: product_name,
                        product_price: product_price,
                        quantity: quantity
                    },
                    success: function(data) {
                        $('#detail_cart').html(data);
                    }
                });
            });

            // Load shopping cart
            $('#detail_cart').load("<?php echo base_url(); ?>kasir/cashier_cart_load");

            //Hapus Item Cart
            $(document).on('click', '.hapus_cart', function() {
                var row_id = $(this).attr("id"); //mengambil row_id dari artibut id
                $.ajax({
                    url: "<?php echo base_url(); ?>kasir/cashier_cart_delete",
                    method: "POST",
                    data: {
                        row_id: row_id
                    },
                    success: function(data) {
                        $('#detail_cart').html(data);
                    }
                });
            });
        });
    </script>
</body>

</html>