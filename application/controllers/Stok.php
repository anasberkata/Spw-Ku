<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Stok extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Stok_model', 'stok');
        $this->load->helper('date');
    }

    // PRODUK
    public function index()
    {
        $data['title'] = "Stok Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->stok->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('stok/index', $data);
        $this->load->view('templates/footer');
    }

    public function stock()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Stok Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['product'] = $this->stok->get_products($id_lab);
        $data['place'] = $this->stok->get_places();
        $data['lab'] = $id_lab;

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('stok/stock', $data);
        $this->load->view('templates/footer');
    }

    public function stock_excel()
    {
        $id_lab = $this->input->get('id_lab', true);
        $id_place = $this->input->get('id_place', true);

        $data['title'] = "Stok Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['product'] = $this->stok->get_products_to_excel($id_lab, $id_place);
        $data['place'] = $this->db->get_where('tbl_product_place', ['id_place' => $id_place])->row_array();
        $data['lab'] = $id_lab;

        $today = date("Y-m-d");
        $data['schedule'] = $this->stok->get_schedule($today);

        $this->load->view('stok/stock_excel.php', $data);
    }
}
