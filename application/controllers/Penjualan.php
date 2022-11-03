<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Penjualan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Penjualan_model', 'penjualan');
        $this->load->model('Franchisor_model', 'franchisor');
        $this->load->helper('date');
    }

    // LAB
    public function index()
    {
        $data['title'] = "Data Penjualan SPW";
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

        $data['title'] = "Data Penjualan SPW";
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

        $data_check = [
            'date_selling' => $date_selling,
            'id_lab' => $id_lab
        ];

        $selling_check = $this->db->get_where('tbl_selling', $data_check)->row_array();

        if ($selling_check) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan sudah ada</div>');

            redirect('penjualan/selling/?id_lab=' . $id_lab);
        } else {
            $data = [
                'id_selling' => NULL,
                'date_selling' => $date_selling,
                'id_user' => $id_user,
                'id_lab' => $id_lab
            ];

            $this->penjualan->save_selling($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan berhasil ditambahkan! Silahkan isi Produk</div>');

            redirect('penjualan/selling/?id_lab=' . $id_lab);
        }
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
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan berhasil diubah!</div>');

        redirect('penjualan/selling/?id_lab=' . $id_lab);
    }



    // SELLING DETAIL
    public function selling_detail()
    {
        $date_selling = $this->input->get('date_selling', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Penjualan SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['date_selling'] = $date_selling;
        $data['lab'] = $id_lab;
        $data['product'] = $this->penjualan->get_product($id_lab);
        $data['place'] = $this->penjualan->get_place();

        $data['selling'] = $this->db->get_where('tbl_selling', ['id_selling' => $date_selling])->row_array();
        $data['selling_detail'] = $this->penjualan->get_selling_detail($date_selling, $id_lab);

        $data['total_basic_price'] = $this->penjualan->sum_total_basic_price($date_selling, $id_lab);
        $data['total_selling_price'] = $this->penjualan->sum_total_selling_price($date_selling, $id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/selling_detail', $data);
        $this->load->view('templates/footer');
    }

    public function selling_detail_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_selling = $this->input->post('id_selling', true);
        $id_product = $this->input->post('id_product', true);
        $qty_selling = $this->input->post('qty_selling', true);

        $this->form_validation->set_rules(
            'qty_selling',
            'Jumlah Terjual',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Gagal! Stok terjual produk wajib diisi.</div>');

            redirect('penjualan/selling_detail/?id_selling=' . $id_selling . '&id_lab=' . $id_lab);
        } else {

            $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

            if ($d['p']['qty'] <= 0) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Gagal! Stok Produk sudah habis. Silahkan menghubungi PJ Produk untuk konfirmasi</div>');

                redirect('penjualan/selling_detail/?id_selling=' . $id_selling . '&id_lab=' . $id_lab);
            } else if ($d['p']['qty'] < $qty_selling) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Gagal! Stok akhir produk tidak mencukupi</div>');

                redirect('penjualan/selling_detail/?id_selling=' . $id_selling . '&id_lab=' . $id_lab);
            } else {
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

    public function selling_detail_search()
    {
        $date_selling = $this->input->get('date_selling', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_place = $this->input->get('id_place', true);

        $data['title'] = "Data Penjualan SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['date_selling'] = $date_selling;
        $data['lab'] = $id_lab;
        $data['product'] = $this->penjualan->get_product($id_lab);
        $data['place'] = $this->penjualan->get_place();

        $data['selling'] = $this->db->get_where('tbl_selling', ['id_selling' => $date_selling])->row_array();
        $data['selling_detail'] = $this->penjualan->get_selling_detail($date_selling, $id_lab, $id_place);

        $data['total_basic_price'] = $this->penjualan->sum_total_basic_price($date_selling, $id_lab, $id_place);
        $data['total_selling_price'] = $this->penjualan->sum_total_selling_price($date_selling, $id_lab, $id_place);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/selling_detail', $data);
        $this->load->view('templates/footer');
    }


    // ---------------------------------------- MPDF ---------------------------------- //
    public function printPDF()
    {

        $id_selling = $this->input->get('id_selling', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_place = $this->input->get('id_place', true);

        $data['title'] = "Data Penjualan SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_selling'] = $id_selling;
        $data['lab'] = $id_lab;
        $data['product'] = $this->penjualan->get_product($id_lab);
        $data['place'] = $this->penjualan->get_place();

        $data['selling'] = $this->db->get_where('tbl_selling', ['id_selling' => $id_selling])->row_array();

        if (!isset($id_place)) {
            $data['selling_detail'] = $this->penjualan->get_selling_detail($id_selling);
            $data['total_basic_price'] = $this->penjualan->sum_total_basic_price($id_selling);
            $data['total_selling_price'] = $this->penjualan->sum_total_selling_price($id_selling);
        } else {
            $data['selling_detail'] = $this->penjualan->search_selling_detail($id_selling, $id_place);
            $data['total_basic_price'] = $this->penjualan->search_sum_total_basic_price($id_selling, $id_place);
            $data['total_selling_price'] = $this->penjualan->search_sum_total_selling_price($id_selling, $id_place);
        }

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L', 'setAutoTopMargin' => 'stretch']);
        $page = $this->load->view('penjualan/selling_detail_pdf', $data, TRUE);
        $mpdf->WriteHTML($page);
        $mpdf->Output('Laporan SPW.pdf', 'I');
    }



    // TITIPAN
    public function franchise_index()
    {
        $data['title'] = "Data Penjualan Titipan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->penjualan->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/franchise_index', $data);
        $this->load->view('templates/footer');
    }

    public function franchise()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Penjualan Titipan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;

        $data['franchise'] = $this->penjualan->get_franchise($id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/franchise', $data);
        $this->load->view('templates/footer');
    }

    public function franchise_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_user = $this->input->post('id_user', true);
        $date_selling = $this->input->post('date_selling', true);

        $data_check = [
            'date_selling' => $date_selling,
            'id_lab' => $id_lab
        ];

        $franchise_check = $this->db->get_where('tbl_franchise', $data_check)->row_array();

        if ($franchise_check) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan titipan sudah ada</div>');

            redirect('penjualan/franchise/?id_lab=' . $id_lab);
        } else {
            $data = [
                'id_franchise' => NULL,
                'date_selling' => $date_selling,
                'id_user' => $id_user,
                'id_lab' => $id_lab
            ];

            $this->penjualan->save_franchise($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan titipan berhasil ditambahkan! Silahkan isi Produk</div>');

            redirect('penjualan/franchise/?id_lab=' . $id_lab);
        }
    }

    public function franchise_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_franchise = $this->input->post('id_franchise', true);
        $id_user = $this->input->post('id_user', true);
        $date_selling = $this->input->post('date_selling', true);

        $data = [
            'date_selling' => $date_selling,
            'id_user' => $id_user
        ];

        $this->penjualan->update_franchise($data, $id_franchise);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan titipan berhasil diubah!</div>');

        redirect('penjualan/franchise/?id_lab=' . $id_lab);
    }

    // SELLING DETAIL
    public function franchise_detail()
    {
        $id_franchise = $this->input->get('id_franchise', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Penjualan Titipan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_franchise'] = $id_franchise;
        $data['lab'] = $id_lab;
        $data['franchisor'] = $this->franchisor->get_franchisor();

        $data['franchise'] = $this->db->get_where('tbl_franchise', ['id_franchise' => $id_franchise])->row_array();
        $data['franchise_detail'] = $this->penjualan->get_franchise_detail($id_franchise);

        $data['total_basic_price_franchise'] = $this->penjualan->sum_total_basic_price_franchise($id_franchise);
        $data['total_selling_price_franchise'] = $this->penjualan->sum_total_selling_price_franchise($id_franchise);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/franchise_detail', $data);
        $this->load->view('templates/footer');
    }

    public function franchise_detail_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_franchise = $this->input->post('id_franchise', true);
        $id_user = $this->input->post('id_user', true);
        $product = $this->input->post('product', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);
        $qty_product = $this->input->post('qty_product', true);
        $qty_last = $this->input->post('qty_last', true);
        if ($qty_last == NULL) {
            $qty_selling = 0;
        } else {
            $qty_selling = $qty_product - $qty_last;
        }

        $this->form_validation->set_rules(
            'id_user',
            'Pemilik Produk',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'product',
            'Produk',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'basic_price',
            'Harga Dasar',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'selling_price',
            'Harga Jual',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'qty_product',
            'Stok Awal',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk gagal ditambahkan!</div>');

            redirect('penjualan/franchise_detail/?id_franchise=' . $id_franchise . '&id_lab=' . $id_lab);
        } else {
            $data = [
                'id_franchise_detail' => NULL,
                'id_franchise' => $id_franchise,
                'id_franchisor' => $id_user,
                'product' => $product,
                'basic_price' => $basic_price,
                'selling_price' => $selling_price,
                'qty_product' => $qty_product,
                'qty_last' => $qty_last,
                'qty_selling' => $qty_selling,
                'total_basic_price' => $qty_selling * $basic_price,
                'total_selling_price' => $qty_selling * $selling_price
            ];

            $this->penjualan->save_franchise_detail($data);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');

            redirect('penjualan/franchise_detail/?id_franchise=' . $id_franchise . '&id_lab=' . $id_lab);
        }
    }

    public function franchise_detail_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_franchise = $this->input->post('id_franchise', true);
        $id_franchise_detail = $this->input->post('id_franchise_detail', true);
        $id_user = $this->input->post('id_user', true);
        $product = $this->input->post('product', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);
        $qty_product = $this->input->post('qty_product', true);
        $qty_last = $this->input->post('qty_last', true);
        $qty_selling = $qty_product - $qty_last;

        $data = [
            'id_franchisor' => $id_user,
            'product' => $product,
            'basic_price' => $basic_price,
            'selling_price' => $selling_price,
            'qty_product' => $qty_product,
            'qty_last' => $qty_last,
            'qty_selling' => $qty_selling,
            'total_basic_price' => $qty_selling * $basic_price,
            'total_selling_price' => $qty_selling * $selling_price
        ];


        $this->penjualan->update_franchise_detail($data, $id_franchise_detail);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');

        redirect('penjualan/franchise_detail/?id_franchise=' . $id_franchise . '&id_lab=' . $id_lab);
    }

    public function franchise_detail_delete()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_franchise = $this->input->post('id_franchise', true);
        $id_franchise_detail = $this->input->post('id_franchise_detail', true);

        $this->penjualan->delete_franchise_detail($id_franchise_detail);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');

        redirect('penjualan/franchise_detail/?id_franchise=' . $id_franchise . '&id_lab=' . $id_lab);
    }

    public function franchise_detail_search()
    {
        $id_lab = $this->input->get('id_lab', true);
        $id_franchise = $this->input->get('id_franchise', true);
        $id_user = $this->input->get('id_user', true);

        $data['title'] = "Data Penjualan Titipan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_franchise'] = $id_franchise;
        $data['lab'] = $id_lab;
        $data['id_user'] = $id_user;
        $data['franchisor'] = $this->franchisor->get_franchisor();

        $data['franchise'] = $this->db->get_where('tbl_franchise', ['id_franchise' => $id_franchise])->row_array();
        $data['franchise_detail'] = $this->penjualan->search_franchise_detail($id_franchise, $id_user);

        $data['total_basic_price_franchise'] = $this->penjualan->search_sum_total_basic_price_franchise($id_franchise, $id_user);
        $data['total_selling_price_franchise'] = $this->penjualan->search_sum_total_selling_price_franchise($id_franchise, $id_user);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/franchise_detail_search', $data);
        $this->load->view('templates/footer');
    }

    // ---------------------------------------- MPDF ---------------------------------- //
    public function printPDF_franchise()
    {

        $id_franchise = $this->input->get('id_franchise', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_user = $this->input->get('id_user', true);

        $data['title'] = "Data Penjualan Titipan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_franchise'] = $id_franchise;
        $data['lab'] = $id_lab;
        $data['franchisor'] = $this->db->get_where('tbl_users', ['id_user' => $id_user])->row_array();

        $data['franchise'] = $this->db->get_where('tbl_franchise', ['id_franchise' => $id_franchise])->row_array();

        if (!isset($id_user)) {
            $data['franchise_detail'] = $this->penjualan->get_franchise_detail($id_franchise);
            $data['total_basic_price_franchise'] = $this->penjualan->sum_total_basic_price_franchise($id_franchise);
            $data['total_selling_price_franchise'] = $this->penjualan->sum_total_selling_price_franchise($id_franchise);
        } else {
            $data['franchise_detail'] = $this->penjualan->search_franchise_detail($id_franchise, $id_user);
            $data['total_basic_price_franchise'] = $this->penjualan->search_sum_total_basic_price_franchise($id_franchise, $id_user);
            $data['total_selling_price_franchise'] = $this->penjualan->search_sum_total_selling_price_franchise($id_franchise, $id_user);
        }

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L', 'setAutoTopMargin' => 'stretch']);
        $page = $this->load->view('penjualan/franchise_detail_pdf', $data, TRUE);
        $mpdf->WriteHTML($page);
        $mpdf->Output('Laporan Produk Titipan SPW.pdf', 'I');
    }

    // ---------------------------------------- STUDENTS ------------------------------------------ //
    public function student_selling_index()
    {
        $data['title'] = "Data Penjualan Siswa";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->penjualan->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/student_selling_index', $data);
        $this->load->view('templates/footer');
    }

    public function student_selling()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Penjualan Siswa";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;

        $data['student_selling'] = $this->penjualan->get_student_selling($id_lab);
        $data['class'] = $this->penjualan->get_class();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/student_selling', $data);
        $this->load->view('templates/footer');
    }

    public function student_selling_add()
    {
        $data['title'] = "Data Penjualan Siswa";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $id_lab = $this->input->post('id_lab', true);
        $id_user = $this->input->post('id_user', true);
        $date_selling = $this->input->post('date_selling', true);
        $id_class = $this->input->post('id_class', true);


        $data_check = [
            'date_selling' => $date_selling,
            'id_lab' => $id_lab,
            'id_class' => $id_class
        ];

        $student_selling_check = $this->db->get_where('tbl_student_selling', $data_check)->row_array();

        if ($student_selling_check) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan siswa sudah ada</div>');

            redirect('penjualan/student_selling/?id_lab=' . $id_lab);
        } else {
            $data = [
                'id_student_selling' => NULL,
                'date_selling' => $date_selling,
                'id_user' => $id_user,
                'id_lab' => $id_lab,
                'id_class' => $id_class
            ];

            $this->penjualan->save_student_selling($data);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan produk siswa berhasil ditambahkan!</div>');

            redirect('penjualan/student_selling/?id_lab=' . $id_lab);
        }
    }

    public function student_selling_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_student_selling = $this->input->post('id_student_selling', true);
        $id_user = $this->input->post('id_user', true);
        $date_selling = $this->input->post('date_selling', true);
        $id_class = $this->input->post('id_class', true);

        $data = [
            'date_selling' => $date_selling,
            'id_user' => $id_user,
            'id_lab' => $id_lab,
            'id_class' => $id_class
        ];

        $this->penjualan->update_student_selling($data, $id_student_selling);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Tanggal penjualan produk siswa berhasil diubah!</div>');

        redirect('penjualan/student_selling/?id_lab=' . $id_lab);
    }

    public function student_selling_detail()
    {
        $id_student_selling = $this->input->get('id_student_selling', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_class = $this->input->get('id_class', true);

        $data['title'] = "Data Penjualan Siswa";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_student_selling'] = $id_student_selling;
        $data['lab'] = $id_lab;
        $data['id_class'] = $id_class;

        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_student_selling.id_class');
        $data['student_selling'] = $this->db->get_where('tbl_student_selling', ['id_student_selling' => $id_student_selling])->row_array();
        $data['student_selling_detail'] = $this->penjualan->get_student_selling_detail($id_student_selling);

        $data['total_basic_price_student_selling'] = $this->penjualan->sum_total_basic_price_student_selling($id_student_selling);
        $data['total_selling_price_student_selling'] = $this->penjualan->sum_total_selling_price_student_selling($id_student_selling);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('penjualan/student_selling_detail', $data);
        $this->load->view('templates/footer');
    }

    public function student_selling_detail_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_student_selling = $this->input->post('id_student_selling', true);
        $id_class = $this->input->post('id_class', true);
        $product = $this->input->post('product', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);
        $qty_product = $this->input->post('qty_product', true);
        $qty_last = $this->input->post('qty_last', true);
        if ($qty_last == NULL) {
            $qty_selling = 0;
        } else {
            $qty_selling = $qty_product - $qty_last;
        }

        $this->form_validation->set_rules(
            'product',
            'Produk',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'basic_price',
            'Harga Dasar',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'selling_price',
            'Harga Jual',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'qty_product',
            'Stok Awal',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk gagal ditambahkan!</div>');

            redirect('penjualan/student_selling_detail/?id_student_selling=' . $id_student_selling . '&id_lab=' . $id_lab . '&id_class=' . $id_class);
        } else {
            $data = [
                'id_student_selling_detail' => NULL,
                'id_student_selling' => $id_student_selling,
                'id_class' => $id_class,
                'product' => $product,
                'basic_price' => $basic_price,
                'selling_price' => $selling_price,
                'qty_product' => $qty_product,
                'qty_last' => $qty_last,
                'qty_selling' => $qty_selling,
                'total_basic_price' => $qty_selling * $basic_price,
                'total_selling_price' => $qty_selling * $selling_price
            ];

            $this->penjualan->save_student_selling_detail($data);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');

            redirect('penjualan/student_selling_detail/?id_student_selling=' . $id_student_selling . '&id_lab=' . $id_lab . '&id_class=' . $id_class);
        }
    }

    public function student_selling_detail_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_student_selling = $this->input->post('id_student_selling', true);
        $id_student_selling_detail = $this->input->post('id_student_selling_detail', true);
        $id_class = $this->input->post('id_class', true);
        $product = $this->input->post('product', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);
        $qty_product = $this->input->post('qty_product', true);
        $qty_last = $this->input->post('qty_last', true);
        $qty_selling = $qty_product - $qty_last;

        $data = [
            'id_student_selling' => $id_student_selling,
            'product' => $product,
            'basic_price' => $basic_price,
            'selling_price' => $selling_price,
            'qty_product' => $qty_product,
            'qty_last' => $qty_last,
            'qty_selling' => $qty_selling,
            'total_basic_price' => $qty_selling * $basic_price,
            'total_selling_price' => $qty_selling * $selling_price
        ];


        $this->penjualan->update_student_selling_detail($data, $id_student_selling_detail);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');

        redirect('penjualan/student_selling_detail/?id_student_selling=' . $id_student_selling . '&id_lab=' . $id_lab . '&id_class=' . $id_class);
    }

    public function student_selling_detail_delete()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_student_selling = $this->input->post('id_student_selling', true);
        $id_student_selling_detail = $this->input->post('id_student_selling_detail', true);
        $id_class = $this->input->post('id_class', true);

        $this->penjualan->delete_student_selling_detail($id_student_selling_detail);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');

        redirect('penjualan/student_selling_detail/?id_student_selling=' . $id_student_selling . '&id_lab=' . $id_lab . '&id_class=' . $id_class);
    }

    public function printPDF_student_selling()
    {

        $id_student_selling = $this->input->get('id_student_selling', true);
        $id_lab = $this->input->get('id_lab', true);
        $id_class = $this->input->get('id_class', true);

        $data['title'] = "Data Penjualan Siswa";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_student_selling'] = $id_student_selling;
        $data['lab'] = $id_lab;
        $data['id_class'] = $id_class;

        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_student_selling.id_class');
        $data['student_selling'] = $this->db->get_where('tbl_student_selling', ['id_student_selling' => $id_student_selling])->row_array();
        $data['student_selling_detail'] = $this->penjualan->get_student_selling_detail($id_student_selling);

        $data['total_basic_price_student_selling'] = $this->penjualan->sum_total_basic_price_student_selling($id_student_selling);
        $data['total_selling_price_student_selling'] = $this->penjualan->sum_total_selling_price_student_selling($id_student_selling);

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L', 'setAutoTopMargin' => 'stretch']);
        $page = $this->load->view('penjualan/student_selling_detail_pdf', $data, TRUE);
        $mpdf->WriteHTML($page);
        $mpdf->Output('Laporan Produk Siswa.pdf', 'I');
    }
}
