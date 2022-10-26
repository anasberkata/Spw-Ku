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

    public function casheer()
    {
        $id_lab = $this->input->get('id_lab', true);
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['product'] = $this->kasir->get_product($id_lab);

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/casheer', $data);
        $this->load->view('kasir/footer');
    }
}
