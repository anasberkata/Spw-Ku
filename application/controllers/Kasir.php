<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Kasir extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Kasir_model', 'k');
        $this->load->helper('date');
    }

    // LAB
    public function index()
    {
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->k->get_lab();

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
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_product_all($id_lab);

        $this->load->view('keranjang/header', $data);
        $this->load->view('kasir/cashier', $data);
        $this->load->view('keranjang/footer');
    }

    public function search()
    {
        $id_lab = $this->input->post('id_lab');
        $keyword = $this->input->post('keyword');

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->search($keyword, $id_lab);

        $this->load->view('keranjang/header', $data);
        $this->load->view('kasir/cashier', $data);
        $this->load->view('keranjang/footer');

        // $callback = array('hasil' => $hasil,);
        // echo json_encode($callback);
    }

    public function show_cart()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_product_all($id_lab);

        $this->load->view('keranjang/header', $data);
        $this->load->view('kasir/cashier', $data);
        $this->load->view('keranjang/footer');
    }

    function add()
    {
        $id_lab = $this->input->post('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_product_all($id_lab);

        $data_produk = array(
            'id' => $this->input->post('id'),
            'name' => $this->input->post('nama'),
            'price' => $this->input->post('harga'),
            'gambar' => $this->input->post('gambar'),
            'qty' => $this->input->post('qty')
        );
        $this->cart->insert($data_produk);
        redirect('kasir/cashier/?id_lab=' . $id_lab);
    }

    function add_by_barcode()
    {
        $id_lab = $this->input->post('lab_id', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['count_products'] = $this->k->count_products($id_lab);
        $data['produk'] = $this->k->get_product_all($id_lab);

        $data_produk = array(
            'id' => $this->input->post('product_id'),
            'name' => $this->input->post('product_name'),
            'price' => $this->input->post('selling_price'),
            'gambar' => $this->input->post('gambar'),
            'qty' => $this->input->post('quantity')
        );
        $this->cart->insert($data_produk);
        redirect('kasir/cashier/?id_lab=' . $id_lab);
    }

    function delete()
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
        redirect('kasir/cashier/?id_lab=' . $id_lab);
    }

    function update_cart()
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
        redirect('kasir/cashier/?id_lab=' . $id_lab);
    }

    public function order()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        //-------------------------Input data order------------------------------
        $data_order = array(
            'date_order' => date('Y-m-d'),
            'id_lab' => $id_lab
        );
        $id_order = $this->k->add_order($data_order);
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
                $proses = $this->k->add_detail_order($data_detail);
            }
        }
        //-------------------------Hapus shopping cart--------------------------
        $this->cart->destroy();

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembayaran berhasil diinput! Silahkan untuk melanjutkan</div>');
        redirect('kasir/cashier/?id_lab=' . $id_lab);
    }
}
