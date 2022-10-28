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

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/index', $data);
        $this->load->view('kasir/footer');
    }

    // KASIR
    public function cashier()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['product'] = $this->kasir->get_product($id_lab);

        $this->load->view('kasir/kasir', $data);
    }

    public function tampil_cart()
    {
        $data['product'] = $this->kasir->get_product();
        $this->load->view('kasir/kasir', $data);
    }

    function tambah()
    {
        $data_produk = array(
            'id' => $this->input->post('id'),
            'name' => $this->input->post('nama'),
            'price' => $this->input->post('harga'),
            'gambar' => $this->input->post('gambar'),
            'qty' => $this->input->post('qty')
        );
        $this->cart->insert($data_produk);
        redirect('kasir/cashier/?id_lab=');
    }

    public function check_out()
    {
        $data['product'] = $this->kasir->get_product();
        $this->load->view('kasir/kasir', $data);
    }



    function hapus($rowid)
    {
        if ($rowid == "all") {
            $this->cart->destroy();
        } else {
            $data = array(
                'rowid' => $rowid,
                'qty' => 0
            );
            $this->cart->update($data);
        }
        redirect('keranjang/tampil_cart');
    }

    function ubah_cart()
    {
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
        redirect('keranjang/tampil_cart');
    }

    public function proses_order()
    {
        //-------------------------Input data order------------------------------
        $data_order = array(
            'date_order' => date('Y-m-d'),
            'id_lab' => 1
        );
        $id_order = $this->kasir->order_add($data_order);
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
                $proses = $this->kasir->order_detail_add($data_detail);
            }
        }
        //-------------------------Hapus shopping cart--------------------------
        $this->cart->destroy();

        $data['product'] = $this->kasir->get_product();
        $this->load->view('keranjang/header', $data);
        $this->load->view('keranjang/index', $data);
        $this->load->view('keranjang/footer');
    }
}
