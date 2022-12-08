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

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier', $data);
        $this->load->view('kasir/footer');
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

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier', $data);
        $this->load->view('kasir/footer');

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

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier', $data);
        $this->load->view('kasir/footer');
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
            'qty' => $this->input->post('qty'),
            'basic_price' => $this->input->post('harga_dasar'),
            'first_qty' => $this->input->post('stok_awal')
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
            'qty' => $this->input->post('quantity'),
            'basic_price' => $this->input->post('basic_price'),
            'first_qty' => $this->input->post('first_qty')
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
        $today = date("Y-m-d");
        $guru_piket = $this->k->get_schedule($today);

        $format = "%Y-%m-%d";
        $data_order = array(
            'date_selling' => mdate($format),
            'id_user' => $guru_piket['id_user'],
            'id_class' => $guru_piket['id_class'],
            'id_lab' => $id_lab
        );
        $id_selling = $this->k->add_order($data_order);
        //-------------------------Input data detail order-----------------------
        if ($cart = $this->cart->contents()) {
            foreach ($cart as $item) {
                $id = $item['id'];
                $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id])->row_array();

                $data_detail = array(
                    'id_selling' => $id_selling,
                    'id_product' => $item['id'],
                    'qty_selling' => $item['qty'],
                    'total_basic_price' => $item['basic_price'] * $item['qty'],
                    'total_selling_price' => $item['price'] * $item['qty'],
                    'date_selling' => mdate($format),
                    'id_lab' => $id_lab
                );

                $proses = $this->k->add_detail_order($data_detail);

                $data_stock_update = array(
                    'qty' => $d['p']['qty'] - $item['qty']
                );

                $update_stok = $this->k->update_stock_product($data_stock_update, $id);
            }
        }
        //-------------------------Hapus shopping cart--------------------------
        $this->cart->destroy();

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembayaran berhasil diinput! Silahkan untuk melanjutkan</div>');
        redirect('kasir/cashier/?id_lab=' . $id_lab);
    }


    // PENJUALAN
    public function selling()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['selling'] = $this->k->get_selling($id_lab);

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier_selling', $data);
        $this->load->view('kasir/footer');
    }

    public function selling_detail()
    {
        $date_selling = $this->input->get('date_selling', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['date_selling'] = $date_selling;
        $data['lab'] = $id_lab;
        // $data['produk'] = $this->k->get_product_selling($id_lab);
        $data['place'] = $this->k->get_place();

        $data['selling'] = $this->db->get_where('tbl_selling', ['date_selling' => $date_selling])->row_array();
        $data['selling_detail'] = $this->k->get_selling_detail($date_selling, $id_lab);

        $data['total_basic_price'] = $this->k->sum_total_basic_price($date_selling, $id_lab);
        $data['total_selling_price'] = $this->k->sum_total_selling_price($date_selling, $id_lab);

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier_selling_detail', $data);
        $this->load->view('kasir/footer');
    }

    public function selling_detail_search()
    {
        $date_selling = $this->input->get('date_selling', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_place = $this->input->get('id_place', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['date_selling'] = $date_selling;
        $data['lab'] = $id_lab;
        $data['id_place'] = $id_place;
        $data['produk'] = $this->k->get_product_all($id_lab);
        $data['place'] = $this->k->get_place();
        $data['franchisor'] = $this->k->get_franchisor();

        if ($id_place == 0) {
            redirect('kasir/selling_detail/?date_selling=' . $date_selling . '&id_lab=' . $id_lab);
        } else {
            $data['selling'] = $this->db->get_where('tbl_selling', ['date_selling' => $date_selling])->row_array();
            $data['selling_detail'] = $this->k->search_selling_detail($date_selling, $id_lab, $id_place);

            $data['total_basic_price'] = $this->k->search_sum_total_basic_price($date_selling, $id_lab, $id_place);
            $data['total_selling_price'] = $this->k->search_sum_total_selling_price($date_selling, $id_lab, $id_place);
        }

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier_selling_detail_search', $data);
        $this->load->view('kasir/footer');
    }

    public function printPDF()
    {
        $date_selling = $this->input->get('date_selling', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_place = $this->input->get('id_place', true);

        $data['title'] = "Data Penjualan SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['date_selling'] = $date_selling;
        $data['lab'] = $id_lab;
        $data['id_place'] = $id_place;
        $data['produk'] = $this->k->get_product_all($id_lab);
        $data['place'] = $this->k->get_place();

        $data['selling'] = $this->db->get_where('tbl_selling', ['date_selling' => $date_selling])->row_array();

        if (!isset($id_place)) {
            $data['selling_detail'] = $this->k->get_selling_detail($date_selling, $id_lab);
            $data['total_basic_price'] = $this->k->sum_total_basic_price($date_selling, $id_lab);
            $data['total_selling_price'] = $this->k->sum_total_selling_price($date_selling, $id_lab);
        } else {
            $data['selling_detail'] = $this->k->search_selling_detail($date_selling, $id_lab, $id_place);
            $data['total_basic_price'] = $this->k->search_sum_total_basic_price($date_selling, $id_lab, $id_place);
            $data['total_selling_price'] = $this->k->search_sum_total_selling_price($date_selling, $id_lab, $id_place);
        }

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L', 'setAutoTopMargin' => 'stretch']);
        $page = $this->load->view('kasir/cashier_selling_detail_pdf', $data, TRUE);
        $mpdf->WriteHTML($page);
        $mpdf->Output('Laporan SPW ' . $date_selling . '.pdf', 'I');
    }


    // PENJUALAN TITIPAN
    public function selling_franchise()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['produk'] = $this->k->get_product_all($id_lab);
        $data['selling'] = $this->k->get_selling($id_lab);

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/cashier_selling', $data);
        $this->load->view('kasir/footer');
    }
}
