<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Dashboard_model', 'dashboard');
        $this->load->model('Franchisor_model', 'franchisor');
        // $this->load->helper('date');
    }

    public function index()
    {
        $data['title'] = "Dashboard";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['count_class'] = $this->dashboard->count_class();
        $data['count_products'] = $this->dashboard->count_products();
        $data['count_franchisor'] = $this->dashboard->count_franchisor();
        $data['count_users'] = $this->dashboard->count_users();
        $data['schedule'] = $this->dashboard->get_schedule();
        $data['item'] = $this->dashboard->get_products();
        $data['product'] = $this->dashboard->get_products_running_out();
        $data['franchisor'] = $this->franchisor->get_franchisor();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('templates/footer');
    }
}
