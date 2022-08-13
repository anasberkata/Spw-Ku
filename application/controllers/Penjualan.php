<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Penjualan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Penjualan_model', 'penjualan');
        // $this->load->helper('date');
    }

    // LAB
    public function index()
    {
        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->penjualan->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/index', $data);
        $this->load->view('templates/footer');
    }

    // PENJUALAN
    public function selling()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;

        $data['selling'] = $this->penjualan->get_selling($id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/selling', $data);
        $this->load->view('templates/footer');
    }

    public function selling_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_user = $this->input->post('id_user', true);
        $date_selling = $this->input->post('date_selling', true);

        $data = [
            'id_selling' => NULL,
            'date_selling' => $date_selling,
            'id_user' => $id_user,
            'id_lab' => $id_lab
        ];

        $this->penjualan->save_selling($data);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Penjualan berhasil ditambahkan! Silahkan isi Produk</div>');

        redirect('penjualan/selling/?id_lab=' . $id_lab);
    }

    public function selling_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_selling = $this->input->post('id_selling', true);
        $id_user = $this->input->post('id_user', true);
        $date_selling = $this->input->post('date_selling', true);

        $data = [
            'date_selling' => $date_selling,
            'id_user' => $id_user
        ];

        $this->penjualan->update_selling($data, $id_selling);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Penjualan berhasil diubah!</div>');

        redirect('penjualan/selling/?id_lab=' . $id_lab);
    }




    public function selling_detail()
    {
        $id_selling = $this->input->get('id_selling', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_selling'] = $id_selling;
        $data['lab'] = $id_lab;
        $data['product'] = $this->penjualan->get_product($id_lab);

        $data['selling'] = $this->db->get_where('tbl_selling', ['id_selling' => $id_selling])->row_array();
        $data['selling_detail'] = $this->penjualan->get_selling_detail($id_selling);

        $data['total_basic_price'] = $this->penjualan->sum_total_basic_price($id_selling);
        $data['total_selling_price'] = $this->penjualan->sum_total_selling_price($id_selling);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/selling_detail', $data);
        $this->load->view('templates/footer');
    }
}
