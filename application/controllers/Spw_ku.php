<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Spw_ku extends CI_Controller
{
    public function index()
    {
        $data['title'] = "SPW SMKN 2 CILAKU";

        $this->load->view('templates/header', $data);
        $this->load->view('spw_ku/index');
        $this->load->view('templates/footer');
    }
}
