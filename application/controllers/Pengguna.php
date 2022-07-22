<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengguna extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('User_model', 'user');
        $this->load->helper('date');
    }

    public function index()
    {
        $data['title'] = "Pengguna";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['users'] = $this->user->get_users();
        $data['role'] = $this->user->get_roles();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengguna/index', $data);
        $this->load->view('templates/footer');
    }

    public function user_add()
    {
        $this->form_validation->set_rules(
            'name',
            'Name',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[tbl_users.email]',
            array(
                'required' => '{field} wajib diisi',
                'valid_email' => 'Yang anda masukan bukan E-Mail',
                'is_unique' => 'E-Mail sudah terdaftar!'
            )
        );

        $this->form_validation->set_rules(
            'username',
            'Username',
            'required|trim|is_unique[tbl_users.username]',
            array(
                'required' => '{field} wajib diisi',
                'is_unique' => 'Username sudah terdaftar!'
            )
        );

        $this->form_validation->set_rules(
            'password',
            'Password',
            'required|min_length[6]|max_length[30]',
            array(
                'required' => '{field} wajib diisi',
                'min_length' => 'Minimal 6 Karakter',
                'max_length' => 'Maksimal 30 Karakter'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['title'] = "Pengguna";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['users'] = $this->user->get_users();
            $data['role'] = $this->user->get_roles();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('pengguna/index', $data);
            $this->load->view('templates/footer');
        } else {
            $name = $this->input->post('name', true);
            $email = $this->input->post('email', true);
            $username = $this->input->post('username', true);
            $password = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
            $role_id = $this->input->post('role_id', true);
            $position = $this->input->post('role_id', true);
            $image = $this->uploadImage();
            $facebook = $this->input->post('facebook', true);
            $instagram = $this->input->post('instagram', true);
            $whatsapp = $this->input->post('whatsapp', true);
            $icon = $this->input->post('icon', true);
            $format = "%Y-%m-%d";
            $date_created = mdate($format);
            $is_active = 1;

            $data = [
                'id_user' => NULL,
                'name' => $name,
                'email' => $email,
                'username' => $username,
                'password' => $password,
                'role_id' => $role_id,
                'position' => $position,
                'image' => $image,
                'facebook' => $facebook,
                'instagram' => $instagram,
                'whatsapp' => $whatsapp,
                'icon' => $icon,
                'date_created' => $date_created,
                'is_active' => $is_active

            ];

            $this->user->save_user($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pengguna berhasil ditambahkan!</div>');
            redirect('pengguna');
        }
    }

    public function user_edit()
    {
        $id_user = $this->input->post('id_user', true);
        $name = $this->input->post('name', true);
        $email = $this->input->post('email', true);
        $username = $this->input->post('username', true);
        $password = $this->input->post('password');
        $role_id = $this->input->post('role_id', true);
        $position = $this->input->post('role_id', true);
        $facebook = $this->input->post('facebook', true);
        $instagram = $this->input->post('instagram', true);
        $whatsapp = $this->input->post('whatsapp', true);
        $icon = $this->input->post('icon', true);


        $data['user'] = $this->user->get_user_by_id($id_user);
        $change_image = $_FILES['image']['name'];

        if ($change_image) {
            $config['allowed_types']    = 'gif|jpg|png';
            $config['max_size']         = '2048';
            $config['upload_path']      = './assets/img/users/';
            $config['max_width']        = '1024';
            $config['max_height']       = '1024';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $data['user']->image;
                if ($old_image != 'default.jpg') {
                    unlink(FCPATH . 'assets/img/users/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('image', $new_image);
            } else {
                echo $this->upload->display_errors();
            }
        }

        $this->db->set('name', $name);
        $this->db->set('email', $email);
        $this->db->set('username', $username);
        $this->db->set('password', $password);
        $this->db->set('role_id', $role_id);
        $this->db->set('position', $position);
        $this->db->set('facebook', $facebook);
        $this->db->set('instagram', $instagram);
        $this->db->set('whatsapp', $whatsapp);
        $this->db->set('icon', $icon);

        $this->user->update_user($id_user);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pengguna berhasil diubah!</div>');
        redirect('pengguna');
    }

    public function user_delete()
    {
        $id_user = $this->input->post('id_user');

        $this->user->delete_user($id_user);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pengguna berhasil dihapus!</div>');
        redirect('pengguna');
    }

    private function uploadImage()
    {
        $config['allowed_types']    = 'gif|jpg|png';
        $config['max_size']         = '2048';
        $config['upload_path']      = './assets/img/users/';
        $config['max_width']        = '1024';
        $config['max_height']       = '1024';

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('image')) {
            return $this->upload->data("file_name");
        }

        return "default.jpg";
    }
}
