<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index()
    {

        if ($this->session->userdata('email')) {
            redirect('pengguna/profile');
        }

        $this->form_validation->set_rules(
            'email',
            'Email',
            'trim|required|valid_email',
            array(
                'required' => '{field} wajib diisi',
                'valid_email' => '{field} sudah terdaftar'
            )
        );

        $this->form_validation->set_rules(
            'password',
            'Password',
            'trim|required',
            array(
                'required' => '{field} wajib diisi'
            )
        );


        if ($this->form_validation->run() == false) {
            $data['title'] = "Login Page";

            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/index', $data);
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $user = $this->db->get_where('tbl_users', ['email' => $email])->row_array();

        if ($user) {
            if ($user['is_active'] == 1) {
                if (password_verify($password, $user['password'])) {
                    $data = [
                        'id_user' => $user['id_user'],
                        'email' => $user['email'],
                        'role_id' => $user['role_id']
                    ];

                    $this->session->set_userdata($data);

                    if ($user['role_id'] == 1) {
                        redirect('dashboard');
                    } else {
                        redirect('dashboard');
                    }
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center" role="alert">Password tidak sesuai dengan akun E-Mail!</div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center" role="alert">E-Mail ini sudah tidak aktif!</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center" role="alert">E-Mail ini tidak terdaftar di sistem!</div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('id');
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center" role="alert">Anda sudah keluar!</div>');
        redirect('auth');
    }

    public function blocked()
    {
        // $this->load->view('auth/blocked');
        echo "Access Blocked";
    }
}
