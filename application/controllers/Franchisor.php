<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Franchisor extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Penjualan_model', 'penjualan');
        // $this->load->helper('date');
    }

    // DATA KHUSUS FRANCHISOR
    public function data_franchisor()
    {
        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['franchise'] = $this->penjualan->get_franchise();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('franchisor/data_franchisor', $data);
        $this->load->view('templates/footer');
    }

    public function data_franchisor_detail()
    {
        $id_franchise = $this->input->get('id_franchise', true);

        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_franchise'] = $id_franchise;
        $data['franchisor'] = $this->penjualan->get_franchisor();

        $data['franchise'] = $this->db->get_where('tbl_franchise', ['id_franchise' => $id_franchise])->row_array();
        $data['franchise_detail'] = $this->penjualan->get_franchise_detail($id_franchise);

        $data['total_basic_price_franchise'] = $this->penjualan->sum_total_basic_price_franchise($id_franchise);
        $data['total_selling_price_franchise'] = $this->penjualan->sum_total_selling_price_franchise($id_franchise);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('franchisor/data_franchisor_detail', $data);
        $this->load->view('templates/footer');
    }
}
