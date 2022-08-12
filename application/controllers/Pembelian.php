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

        $data['supplier'] = $this->pembelian->get_supplier();
        $data['lab'] = $id_lab;

        $data['purchase'] = $this->pembelian->get_purchase($id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pembelian/purchase', $data);
        $this->load->view('templates/footer');
    }

    // public function purchase_cart()
    // {
    //     $id_lab = $this->input->get('id_lab', true);

    //     $data['title'] = "Data Pembelian";
    //     $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

    //     $data['purchase_cart'] = $this->pembelian->get_purchase_cart();
    //     $data['supplier'] = $this->pembelian->get_supplier();
    //     $data['product'] = $this->pembelian->get_product($id_lab);
    //     $data['lab'] = $id_lab;

    //     $this->load->view('templates/header', $data);
    //     $this->load->view('templates/aside', $data);
    //     $this->load->view('templates/topbar', $data);
    //     $this->load->view('pembelian/purchase_cart', $data);
    //     $this->load->view('templates/footer');
    // }

    // public function purchase_cart_add()
    // {
    //     $this->form_validation->set_rules(
    //         'date_purchasing',
    //         'Tanggal Pembelian',
    //         'required',
    //         array(
    //             'required' => '{field} wajib diisi'
    //         )
    //     );

    //     $this->form_validation->set_rules(
    //         'id_supplier',
    //         'Supplier',
    //         'required',
    //         array(
    //             'required' => '{field} wajib diisi'
    //         )
    //     );

    //     $this->form_validation->set_rules(
    //         'id_product',
    //         'Produk',
    //         'required',
    //         array(
    //             'required' => '{field} wajib diisi'
    //         )
    //     );

    //     $this->form_validation->set_rules(
    //         'qty_product',
    //         'Jumlah Produk',
    //         'required',
    //         array(
    //             'required' => '{field} wajib diisi'
    //         )
    //     );

    //     $this->form_validation->set_rules(
    //         'price',
    //         'Harga Produk',
    //         'required',
    //         array(
    //             'required' => '{field} wajib diisi'
    //         )
    //     );


    //     if ($this->form_validation->run() == false) {
    //         $id_lab = $this->input->get('id_lab', true);

    //         $data['title'] = "Data Pembelian";
    //         $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

    //         $data['purchase_cart'] = $this->pembelian->get_purchase_cart();
    //         $data['supplier'] = $this->pembelian->get_supplier();
    //         $data['product'] = $this->pembelian->get_product($id_lab);
    //         $data['lab'] = $id_lab;

    //         $this->load->view('templates/header', $data);
    //         $this->load->view('templates/aside', $data);
    //         $this->load->view('templates/topbar', $data);
    //         $this->load->view('pembelian/purchase_cart', $data);
    //         $this->load->view('templates/footer');
    //     } else {
    //         $id_lab = $this->input->post('id_lab', true);
    //         $date_purchasing = $this->input->post('date_purchasing', true);
    //         $id_supplier = $this->input->post('id_supplier', true);
    //         $id_product = $this->input->post('id_product', true);
    //         $qty_product = $this->input->post('qty_product', true);
    //         $price = $this->input->post('price', true);

    //         $data = [
    //             'id_cart' => NULL,
    //             'id_supplier' => $id_supplier,
    //             'id_product' => $id_product,
    //             'qty_product' => $qty_product,
    //             'price' => $price,
    //             'total_price' => $qty_product * $price,
    //             'date_purchasing' => $date_purchasing
    //         ];

    //         $this->pembelian->save_purchase_cart($data);
    //         $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan</div>');
    //         redirect('pembelian/purchase_cart/?id_lab=' . $id_lab);
    //     }
    // }

    // public function purchase_cart_edit()
    // {
    //     $id_lab = $this->input->post('id_lab', true);
    //     $id_cart = $this->input->post('id_cart', true);
    //     $id_supplier = $this->input->post('id_supplier', true);
    //     $id_product = $this->input->post('id_product', true);
    //     $qty_product = $this->input->post('qty_product', true);
    //     $price = $this->input->post('price', true);

    //     $data = [
    //         'id_supplier' => $id_supplier,
    //         'id_product' => $id_product,
    //         'qty_product' => $qty_product,
    //         'price' => $price,
    //         'total_price' => $qty_product * $price
    //     ];

    //     $this->pembelian->update_purchase_cart($data, $id_cart);
    //     $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan</div>');
    //     redirect('pembelian/purchase_cart/?id_lab=' . $id_lab);
    // }

    // public function purchase_cart_delete()
    // {
    //     $id_lab = $this->input->post('id_lab', true);
    //     $id_cart = $this->input->post('id_cart', true);

    //     $this->pembelian->delete_purchase_cart($id_cart);

    //     $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">List produk berhasil dihapus!</div>');
    //     redirect('pembelian/purchase_cart/?id_lab=' . $id_lab);
    // }

    public function purchase_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_user = $this->input->post('id_user', true);
        $id_supplier = $this->input->post('id_supplier', true);
        $date_purchasing = $this->input->post('date_purchasing', true);

        $data = [
            'id_purchase' => NULL,
            'date_purchasing' => $date_purchasing,
            'id_supplier' => $id_supplier,
            'id_user' => $id_user,
            'id_lab' => $id_lab
        ];

        $this->pembelian->save_purchase($data);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembelian berhasil ditambahkan! Silahkan isi Produk</div>');

        redirect('pembelian/purchase/?id_lab=' . $id_lab);
    }

    public function purchase_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_user = $this->input->post('id_user', true);
        $date_purchasing = $this->input->post('date_purchasing', true);
        $id_supplier = $this->input->post('id_supplier', true);

        $data = [
            'date_purchasing' => $date_purchasing,
            'id_supplier' => $id_supplier,
            'id_user' => $id_user
        ];

        $this->pembelian->update_purchase($data, $id_purchase);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembelian berhasil diubah!</div>');

        redirect('pembelian/purchase/?id_lab=' . $id_lab);
    }

    public function purchase_detail()
    {
        $id_purchase = $this->input->get('id_purchase', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        // $data['supplier'] = $this->pembelian->get_supplier();

        $data['id_purchase'] = $id_purchase;
        $data['lab'] = $id_lab;
        $data['product'] = $this->pembelian->get_product($id_lab);

        $this->db->join('tbl_supplier', 'tbl_supplier.id_supplier = tbl_purchase.id_supplier');
        $data['purchase'] = $this->db->get_where('tbl_purchase', ['id_purchase' => $id_purchase])->row_array();
        $data['purchase_detail'] = $this->pembelian->get_purchase_detail($id_purchase);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pembelian/purchase_detail', $data);
        $this->load->view('templates/footer');
    }

    public function purchase_detail_add()
    {
        $this->form_validation->set_rules(
            'qty_product',
            'Jumlah Produk',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'basic_price',
            'Harga',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_purchase = $this->input->get('id_purchase', true);
            $id_lab = $this->input->get('id_lab', true);

            $data['title'] = "Data Pembelian";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            // $data['supplier'] = $this->pembelian->get_supplier();

            $data['id_purchase'] = $id_purchase;
            $data['lab'] = $id_lab;
            $data['product'] = $this->pembelian->get_product($id_lab);
            $data['purchase_detail'] = $this->pembelian->get_purchase_detail($id_purchase);

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('pembelian/purchase_detail', $data);
            $this->load->view('templates/footer');
        } else {
            $id_lab = $this->input->post('id_lab', true);
            $id_purchase = $this->input->post('id_purchase', true);
            $id_product = $this->input->post('id_product', true);
            $qty_product = $this->input->post('qty_product', true);
            $basic_price = $this->input->post('basic_price', true);
            $selling_price = $this->input->post('selling_price', true);

            $data = [
                'id_purchase_detail' => NULL,
                'id_purchase' => $id_purchase,
                'id_product' => $id_product,
                'qty_product' => $qty_product,
                'basic_price' => $basic_price,
                'total_price' => $qty_product * $basic_price
            ];

            $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

            $data_stock = [
                'qty' => $d['p']['qty'] + $qty_product,
                'basic_price' => $basic_price,
                'selling_price' => $selling_price
            ];

            $this->pembelian->save_purchase_detail($data);
            $this->pembelian->update_stock_product($data_stock, $id_product);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');

            redirect('pembelian/purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
        }
    }

    public function purchase_detail_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_purchase_detail = $this->input->post('id_purchase_detail', true);
        $id_product = $this->input->post('id_product', true);
        $qty_product = $this->input->post('qty_product', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);

        $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();
        $d['pd'] = $this->db->get_where('tbl_purchase_detail', ['id_purchase_detail' => $id_purchase_detail])->row_array();

        if ($qty_product > $d['p']['qty']) {
            $selisih = $qty_product - $d['p']['qty'];
            $qty = $d['p']['qty'] + $selisih;
        } else if ($qty_product < $d['p']['qty']) {
            $selisih = $d['p']['qty'] - $qty_product;
            $qty = $d['p']['qty'] - $selisih;
        } else {
            $qty = $qty_product;
        }

        $data = [
            'id_product' => $id_product,
            'qty_product' => $qty_product,
            'basic_price' => $basic_price,
            'total_price' => $qty_product * $basic_price
        ];

        $data_stock = [
            'qty' => $qty,
            'basic_price' => $basic_price,
            'selling_price' => $selling_price
        ];

        $this->pembelian->update_purchase_detail($data, $id_purchase_detail);
        $this->pembelian->update_stock_product($data_stock, $id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');

        redirect('pembelian/purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
    }

    public function purchase_detail_delete()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_purchase_detail = $this->input->post('id_purchase_detail', true);
        $id_product = $this->input->post('id_product', true);
        $qty_product = $this->input->post('qty_product', true);

        $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

        $data_stock = [
            'qty' => $d['p']['qty'] - $qty_product
        ];

        $this->pembelian->delete_purchase_detail($id_purchase_detail);
        $this->pembelian->update_stock_product($data_stock, $id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');

        redirect('pembelian/purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
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
