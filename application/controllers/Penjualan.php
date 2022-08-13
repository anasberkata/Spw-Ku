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

    public function selling_detail_add()
    {
        $this->form_validation->set_rules(
            'qty_selling',
            'Jumlah Terjual',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
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
        } else {
            $id_lab = $this->input->post('id_lab', true);
            $id_selling = $this->input->post('id_selling', true);
            $id_product = $this->input->post('id_product', true);
            $qty_selling = $this->input->post('qty_selling', true);

            $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

            $data = [
                'id_selling_detail' => NULL,
                'id_selling' => $id_selling,
                'id_product' => $id_product,
                'qty_selling' => $qty_selling,
                'total_basic_price' => $qty_selling * $d['p']['basic_price'],
                'total_selling_price' => $qty_selling * $d['p']['selling_price']
            ];


            $data_stock = [
                'qty' => $d['p']['qty'] - $qty_selling
            ];

            $this->penjualan->save_selling_detail($data);
            $this->penjualan->update_stock_product($data_stock, $id_product);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');

            redirect('penjualan/selling_detail/?id_selling=' . $id_selling . '&id_lab=' . $id_lab);
        }
    }

    public function selling_detail_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_selling = $this->input->post('id_selling', true);
        $id_selling_detail = $this->input->post('id_selling_detail', true);
        $id_product = $this->input->post('id_product', true);
        $qty_selling = $this->input->post('qty_selling', true);

        $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();
        $d['sd'] = $this->db->get_where('tbl_selling_detail', ['id_selling_detail' => $id_selling_detail])->row_array();

        if ($qty_selling > $d['sd']['qty_selling']) {
            $selisih = $qty_selling - $d['sd']['qty_selling'];
            $qty = $d['p']['qty'] - $selisih;
        } else if ($qty_selling < $d['sd']['qty_selling']) {
            $selisih = $d['sd']['qty_selling'] - $qty_selling;
            $qty = $d['p']['qty'] + $selisih;
        } else if ($qty_selling == $d['sd']['qty_selling']) {
            $qty = $d['p']['qty'];
        }

        $data = [
            'id_product' => $id_product,
            'qty_selling' => $qty_selling,
            'total_basic_price' => $qty_selling * $d['p']['basic_price'],
            'total_selling_price' => $qty_selling * $d['p']['selling_price']
        ];

        $data_stock = [
            'qty' => $qty
        ];

        $this->penjualan->update_selling_detail($data, $id_selling_detail);
        $this->penjualan->update_stock_product($data_stock, $id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');

        redirect('penjualan/selling_detail/?id_selling=' . $id_selling . '&id_lab=' . $id_lab);
    }

    public function selling_detail_delete()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_selling = $this->input->post('id_selling', true);
        $id_selling_detail = $this->input->post('id_selling_detail', true);
        $id_product = $this->input->post('id_product', true);
        $qty_selling = $this->input->post('qty_selling', true);

        $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

        $data_stock = [
            'qty' => $d['p']['qty'] + $qty_selling
        ];

        $this->penjualan->delete_selling_detail($id_selling_detail);
        $this->penjualan->update_stock_product($data_stock, $id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');

        redirect('penjualan/selling_detail/?id_selling=' . $id_selling . '&id_lab=' . $id_lab);
    }
}
