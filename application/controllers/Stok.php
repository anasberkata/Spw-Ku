<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Stok extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Stok_model', 'stok');
        // $this->load->helper('date');
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

        $data['title'] = "Data Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['product'] = $this->stok->get_products($id_lab);
        $data['lab'] = $id_lab;

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('stok/stock', $data);
        $this->load->view('templates/footer');
    }
}
