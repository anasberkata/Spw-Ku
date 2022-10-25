<?php

defined('BASEPATH') or exit('No direct script access allowed');

class E404 extends CI_Controller
{
    public function index()
    {
        $this->load->view('e404/index');
    }
}
