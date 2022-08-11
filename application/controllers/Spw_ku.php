<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Spw_ku extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Pengguna_model', 'user');
        // $this->load->helper('date');
    }

    public function index()
    {
        $data['title'] = "SPW SMKN 2 CILAKU";

        $data['users'] = $this->user->get_users_not_admin();
        $this->load->view('templates/header', $data);
        $this->load->view('spw_ku/index');
        $this->load->view('templates/footer');
    }
}
