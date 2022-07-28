<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Pembelian extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Pembelian_model', 'pembelian');
        // $this->load->helper('date');
    }

    // LAB
    public function index()
    {
        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->pembelian->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pembelian/index', $data);
        $this->load->view('templates/footer');
    }

    // PEMBELIAN
    public function purchase()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['purchase'] = $this->pembelian->get_purchase($id_lab);
        $data['lab'] = $id_lab;

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pembelian/purchase', $data);
        $this->load->view('templates/footer');
    }

    public function purchase_cart()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['purchase_cart'] = $this->pembelian->get_purchase_cart();
        $data['supplier'] = $this->pembelian->get_supplier();
        $data['product'] = $this->pembelian->get_product($id_lab);
        $data['lab'] = $id_lab;

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pembelian/purchase_cart', $data);
        $this->load->view('templates/footer');
    }

    public function purchase_cart_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $date_purchasing = $this->input->post('date_purchasing', true);
        $id_supplier = $this->input->post('id_supplier', true);
        $id_product = $this->input->post('id_product', true);
        $qty_product = $this->input->post('qty_product', true);
        $price = $this->input->post('price', true);

        $data = [
            'id_cart' => NULL,
            'id_supplier' => $id_supplier,
            'id_product' => $id_product,
            'qty_product' => $qty_product,
            'price' => $price,
            'total_price' => $qty_product * $price,
            'date_purchasing' => $date_purchasing
        ];

        $this->pembelian->save_purchase_cart($data);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan</div>');
        redirect('pembelian/purchase_cart/?id_lab=' . $id_lab);
    }











    // SUPPLIER
    public function supplier()
    {
        $data['title'] = "Data Supplier";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['supplier'] = $this->pembelian->get_supplier();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pembelian/supplier', $data);
        $this->load->view('templates/footer');
    }

    public function supplier_add()
    {
        $this->form_validation->set_rules(
            'supplier',
            'Supplier',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data Supplier";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['supplier'] = $this->pembelian->get_supplier();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('pembelian/supplier', $data);
            $this->load->view('templates/footer');
        } else {
            $supplier = $this->input->post('supplier', true);
            $address = $this->input->post('address', true);
            $phone = $this->input->post('phone', true);

            $data = [
                'id_supplier' => NULL,
                'supplier' => $supplier,
                'address' => $address,
                'phone' => $phone
            ];

            $this->pembelian->save_supplier($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Supplier berhasil ditambahkan!</div>');
            redirect('pembelian/supplier');
        }
    }

    public function supplier_edit()
    {
        $id_supplier = $this->input->post('id_supplier', true);
        $supplier = $this->input->post('supplier', true);
        $address = $this->input->post('address', true);
        $phone = $this->input->post('phone', true);

        $data = [
            'supplier' => $supplier,
            'address' => $address,
            'phone' => $phone
        ];

        $this->pembelian->update_supplier($data, $id_supplier);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pupplier berhasil diubah!</div>');
        redirect('pembelian/supplier');
    }

    public function supplier_delete()
    {
        $id_supplier = $this->input->post('id_supplier', true);

        $this->pembelian->delete_supplier($id_supplier);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">SUpplier berhasil dihapus!</div>');
        redirect('pembelian/supplier');
    }
}
