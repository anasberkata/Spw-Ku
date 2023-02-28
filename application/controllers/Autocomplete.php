<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Autocomplete extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Autocomplete_model', 'autofill');
        // $this->load->helper('date');
    }

    public function index()
    {
        $data['product'] = $this->autofill->get_product();

        $this->load->view('autocomplete/index', $data);
    }

    public function ajax_produk()
    {
        $id = $this->input->get('id');
        $data = $this->autofill->ajax_produk($id);

        echo json_encode($data);
    }

    public function ajax_barcode()
    {
        $barcode = $this->input->get('barcode');
        $data = $this->autofill->ajax_barcode($barcode);

        echo json_encode($data);
    }

    public function ajax_name_product()
    {
        $product = $this->input->get('product');
        $data = $this->autofill->ajax_name_product($product);

        echo json_encode($data);
    }
}