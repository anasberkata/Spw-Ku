<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>KASIR</title>
    <link href="<?php echo base_url() ?>assets/cart/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>assets/cart/asie/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <link href="<?php echo base_url() ?>assets/cart/custom.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>assets/cart/jquery/jquery-ui.css" rel="stylesheet">

    <script src="<?php echo base_url() ?>assets/cart/asie/js/ie-emulation-modes-warning.js"></script>
</head>

<body>
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <div class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">SPW-KU</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="<?php echo base_url('dashboard') ?>">Dashboard</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <!-- Begin page content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="list-group">
                    <a href="<?php echo base_url() ?>kasir/tampil_cart" class="list-group-item"><strong><i class="glyphicon glyphicon-shopping-cart"></i> KERANJANG</strong></a>

                    <?php $cart = $this->cart->contents(); ?>

                    <?php if (empty($cart)) : ?>
                        <a class="list-group-item">Keranjang Kosong</a>
                    <?php else : ?>
                        <?php
                        $grand_total = 0;
                        foreach ($cart as $item) :
                            $grand_total += $item['subtotal'];
                        ?>
                            <a class="list-group-item">
                                <?php echo $item['name']; ?> (<?php echo $item['qty']; ?> x Rp. <?php echo number_format($item['price'], 0, ",", "."); ?>) = Rp. <?php echo number_format($item['subtotal'], 0, ",", "."); ?>
                            </a>
                        <?php
                        endforeach;
                        ?>

                    <?php endif; ?>
                </div>
            </div>

            <div class="col-lg-9">

                <div class="row">
                    <!-- TAMPIL CART -->
                    <h2>Daftar Belanja</h2>
                    <form action="<?php echo base_url() ?>kasir/ubah_cart" method="post" name="frmShopping" id="frmShopping" class="form-horizontal" enctype="multipart/form-data">
                        <?php
                        if ($cart = $this->cart->contents()) {
                        ?>


                            <table class="table">
                                <tr id="main_heading">
                                    <td width="2%">No</td>
                                    <td width="33%">Item</td>
                                    <td width="17%">Harga</td>
                                    <td width="8%">Qty</td>
                                    <td width="20%">Jumlah</td>
                                    <td width="10%">Hapus</td>
                                </tr>
                                <?php
                                // Create form and send all values in "shopping/update_cart" function.
                                $grand_total = 0;
                                $i = 1;

                                foreach ($cart as $item) :
                                    $grand_total = $grand_total + $item['subtotal'];
                                ?>
                                    <input type="hidden" name="cart[<?php echo $item['id']; ?>][id]" value="<?php echo $item['id']; ?>" />
                                    <input type="hidden" name="cart[<?php echo $item['id']; ?>][rowid]" value="<?php echo $item['rowid']; ?>" />
                                    <input type="hidden" name="cart[<?php echo $item['id']; ?>][name]" value="<?php echo $item['name']; ?>" />
                                    <input type="hidden" name="cart[<?php echo $item['id']; ?>][price]" value="<?php echo $item['price']; ?>" />
                                    <input type="hidden" name="cart[<?php echo $item['id']; ?>][qty]" value="<?php echo $item['qty']; ?>" />

                                    <tr>
                                        <td><?php echo $i++; ?></td>
                                        <td><?php echo $item['name']; ?></td>
                                        <td><?php echo number_format($item['price'], 0, ",", "."); ?></td>
                                        <td><input type="text" class="form-control input-sm" name="cart[<?php echo $item['id']; ?>][qty]" value="<?php echo $item['qty']; ?>" /></td>
                                        <td><?php echo number_format($item['subtotal'], 0, ",", ".") ?></td>
                                        <td><a href="<?php echo base_url() ?>kasir/hapus/<?php echo $item['rowid']; ?>" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a></td>
                                    <?php endforeach; ?>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><b>Order Total: Rp <?php echo number_format($grand_total, 0, ",", "."); ?></b></td>
                                        <td colspan="4" align="right">
                                            <a data-toggle="modal" data-target="#myModal" class='btn btn-sm btn-danger' rel="noopener noreferrer">Kosongkan Cart</a>
                                            <button class='btn btn-sm btn-success' type="submit">Update Cart</button>
                                            <a href="<?php echo base_url() ?>kasir/proses_order" class='btn btn-sm btn-primary'>Check Out</a>
                                    </tr>

                            </table>
                        <?php
                        } else {
                            echo "<h3>Keranjang Belanja masih kosong</h3>";
                        }
                        ?>
                    </form>

                    <!-- Modal Penilai -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-md">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <form method="post" action="<?php echo base_url() ?>kasir/hapus/all">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&amp;amp;times;</button>
                                        <h4 class="modal-title">Konfirmasi</h4>
                                    </div>
                                    <div class="modal-body">
                                        Anda yakin mau mengosongkan Shopping Cart?

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal">Tidak</button>
                                        <button type="submit" class="btn btn-sm btn-default">Ya</button>
                                    </div>

                                </form>
                            </div>

                        </div>
                    </div>
                    <!--End Modal-->






                    <h2>Daftar Produk</h2>
                    <?php
                    foreach ($product->result() as $row) {
                    ?>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="kotak">
                                <form method="post" action="<?= base_url('kasir/tambah'); ?>" method="post" accept-charset="utf-8">
                                    <a href="#"><img class="img-thumbnail" src="<?php echo base_url('assets/img/products/') . $row->image; ?>" /></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="#"><?= $row->product; ?></a>
                                        </h4>
                                        <h5>Rp. <?= number_format($row->selling_price, 0, ",", "."); ?></h5>
                                    </div>
                                    <div class="card-footer">
                                        <input type="hidden" name="id_lab" value="<?= $lab; ?>" />
                                        <input type="hidden" name="id_product" value="<?= $row->id_product; ?>" />
                                        <input type="hidden" name="product" value="<?= $row->product; ?>" />
                                        <input type="hidden" name="selling_price" value="<?= $row->selling_price; ?>" />
                                        <input type="hidden" name="image" value="<?= $row->image; ?>" />
                                        <input type="hidden" name="qty_selling" value="1" />
                                        <button type="submit" class="btn btn-sm btn-success"><i class="glyphicon glyphicon-shopping-cart"></i> Tambah</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.col-lg-9 -->


        </div>
        <!-- /.row -->

    </div>
    <footer class="footer">
        <div class="container">
            <p class="text-muted">
                <center>Contoh Shopping Cart dengan CodeIgniter dan Bootstrap. By:<a href="http://www.komang.my.id"> Komang.My.ID</a></center>
            </p>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?php echo base_url() ?>assets/cart/jquery/jquery-3.2.1.min.js"></script>
    <script src="<?php echo base_url() ?>assets/cart/js/arf.js"></script>
    <script src="<?php echo base_url() ?>assets/cart/js/prs.js"></script>
    <script src="<?php echo base_url() ?>assets/cart/js/validation.js"></script>
    <script src="<?php echo base_url() ?>assets/cart/jquery/jquery-ui.js"></script>
    <script src="<?php echo base_url() ?>assets/cart/jquery/jquery.validate.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="<?php echo base_url() ?>assets/cart/vendor/jquery.min.js"><\/script>')
    </script>
    <script src="<?php echo base_url() ?>assets/cart/bootstrap/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<?php echo base_url() ?>assets/cart/asie/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>