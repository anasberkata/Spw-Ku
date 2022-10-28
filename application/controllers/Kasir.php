<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Kasir extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Kasir_model', 'kasir');
        $this->load->helper('date');
    }

    // LAB
    public function index()
    {
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->kasir->get_lab();

        // $this->load->view('kasir/header', $data);
        $this->load->view('kasir/index', $data);
        // $this->load->view('kasir/footer');
    }

    // KASIR
    public function cashier()
    {
        $id_lab = $this->input->get('id_lab', true);
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['product'] = $this->kasir->get_product($id_lab);

        // $this->load->view('kasir/header', $data);
        // $this->load->view('kasir/cashier', $data);
        // $this->load->view('kasir/footer');

        $this->load->view('kasir/kasir', $data);
    }

    function cashier_cart_add()
    { //fungsi Add To Cart
        $data = array(
            'id' => $this->input->post('product_id'),
            'name' => $this->input->post('product_name'),
            'price' => $this->input->post('product_price'),
            'qty' => $this->input->post('quantity'),
        );
        $this->cart->insert($data);
        echo $this->show_cart(); //tampilkan cart setelah added
    }

    function show_cart()
    { //Fungsi untuk menampilkan Cart
        $output = '
            <h5 class="text-bolder">TOTAL PEMBAYARAN : </h5>

            <div class="row">
                <div class="col-8">
                    <h1 class="text-danger mt-3" style="font-size: 60px;">Rp. ' . number_format($this->cart->total()) . '</h1>
                </div>
                <div class="col-4">
                    <button type="submit" class="btn btn-warning w-100" style="height: 100px;">Bayar</button>
                </div>
            </div>
            <div class="table-responsive p-0 mb-3">
                <table class="table align-items-center mb-0" id="table1">
                    <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-start">Produk</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Qty</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Subtotal</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
                        </tr>
                    </thead>
                    <tbody>
        ';
        $no = 0;
        foreach ($this->cart->contents() as $items) {
            $no++;
            $output .= '
                        <tr>
                            <td><p class="text-xs font-weight-bold mb-0 px-3 text-start">' . $items['name'] . '</p></td>
                            <td><p class="text-xs font-weight-bold mb-0 px-3 text-end">Rp. ' . number_format($items['price']) . '</p></td>
                            <td><p class="text-xs font-weight-bold mb-0 px-3 text-end">' . $items['qty'] . '</p></td>
                            <td><p class="text-xs font-weight-bold mb-0 px-3 text-end">Rp. ' . number_format($items['subtotal']) . '</p></td>
                            <td><p class="text-xs font-weight-bold mb-0 px-3 text-end"><button type="button" id="' . $items['rowid'] . '" class="hapus_cart btn btn-danger btn-xs mt-3">Batal</button></p></td>
                        </tr>
			';
        }
        $output .= '
                    </tbody>
                </table>
            </div>
		';
        return $output;
    }

    function cashier_cart_load()
    { //load data cart
        echo $this->show_cart();
    }

    function cashier_cart_delete()
    { //fungsi untuk menghapus item cart
        $data = array(
            'rowid' => $this->input->post('row_id'),
            'qty' => 0,
        );
        $this->cart->update($data);
        echo $this->show_cart();
    }
}
