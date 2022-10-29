<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Keranjang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Keranjang_model', 'k');
    }

    public function index()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_produk_all($id_lab);

        $this->load->view('keranjang/header', $data);
        $this->load->view('keranjang/index', $data);
        $this->load->view('keranjang/footer');
    }

    public function tampil_cart()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_produk_all($id_lab);

        $this->load->view('keranjang/header', $data);
        $this->load->view('keranjang/index', $data);
        $this->load->view('keranjang/footer');
    }

    public function check_out()
    {
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();
        $data['produk'] = $this->k->get_produk_all();
        $this->load->view('keranjang/header', $data);
        $this->load->view('keranjang/check_out', $data);
        $this->load->view('keranjang/footer');
    }

    function tambah()
    {
        $id_lab = $this->input->post('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_produk_all($id_lab);

        $data_produk = array(
            'id' => $this->input->post('id'),
            'name' => $this->input->post('nama'),
            'price' => $this->input->post('harga'),
            'gambar' => $this->input->post('gambar'),
            'qty' => $this->input->post('qty')
        );
        $this->cart->insert($data_produk);
        redirect('keranjang/?id_lab=' . $id_lab);
    }

    function hapus()
    {
        $id_lab = $this->input->get('id_lab', true);
        $rowid = $this->input->get('rowid', true);

        if ($rowid == "all") {
            $this->cart->destroy();
        } else {
            $data = array(
                'rowid' => $rowid,
                'qty' => 0
            );
            $this->cart->update($data);
        }
        redirect('keranjang/?id_lab=' . $id_lab);
    }

    function ubah_cart()
    {
        $id_lab = $this->input->post('id_lab', true);

        $cart_info = $_POST['cart'];
        foreach ($cart_info as $id => $cart) {
            $rowid = $cart['rowid'];
            $price = $cart['price'];
            $gambar = $cart['gambar'];
            $amount = $price * $cart['qty'];
            $qty = $cart['qty'];
            $data = array(
                'rowid' => $rowid,
                'price' => $price,
                'gambar' => $gambar,
                'amount' => $amount,
                'qty' => $qty
            );
            $this->cart->update($data);
        }
        redirect('keranjang/?id_lab=' . $id_lab);
    }

    public function proses_order()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        //-------------------------Input data order------------------------------
        $data_order = array(
            'date_order' => date('Y-m-d'),
            'id_lab' => $id_lab
        );
        $id_order = $this->k->tambah_order($data_order);
        //-------------------------Input data detail order-----------------------
        if ($cart = $this->cart->contents()) {
            foreach ($cart as $item) {
                $data_detail = array(
                    'id_order' => $id_order,
                    'id_product' => $item['id'],
                    'qty_selling' => $item['qty'],
                    'total_basic_price' => 0,
                    'total_selling_price' => $item['price']
                );
                $proses = $this->k->tambah_detail_order($data_detail);
            }
        }
        //-------------------------Hapus shopping cart--------------------------
        $this->cart->destroy();

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembayaran berhasil diinput! Silahkan untuk melanjutkan</div>');
        redirect('keranjang/?id_lab=' . $id_lab);
    }
}
