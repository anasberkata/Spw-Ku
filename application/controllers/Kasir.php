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
        // $this->load->view('templates/aside', $data);
        // $this->load->view('templates/topbar', $data);
        $this->load->view('kasir/index', $data);
        $this->load->view('kasir/footer');
    }
}
