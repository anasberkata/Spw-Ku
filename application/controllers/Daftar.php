<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Daftar extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Daftar_model', 'daftar');
        // $this->load->helper('date');
    }

    // LIST PRODUK
    public function index()
    {
        $data['title'] = "Daftar Harga";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();
        $data['product'] = $this->daftar->get_products();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('daftar/index', $data);
        $this->load->view('templates/footer');
    }

    public function daftar_search()
    {
        $data['title'] = "Daftar Harga";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $keyword = $this->input->post('product');
        $data['product'] = $this->daftar->get_products_by_search($keyword);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('daftar/index', $data);
        $this->load->view('templates/footer');
    }
}