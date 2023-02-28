<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengguna extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Pengguna_model', 'pengguna');
        $this->load->helper('date');
    }

    public function index()
    {
        $data['title'] = "Pengguna";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['users'] = $this->pengguna->get_users();
        $data['role'] = $this->pengguna->get_roles();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengguna/index', $data);
        $this->load->view('templates/footer');
    }

    public function user_add()
    {
        $data['title'] = "Pengguna";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['users'] = $this->pengguna->get_users();
        $data['role'] = $this->pengguna->get_roles();

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

            $this->pengguna->save_user($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pengguna berhasil ditambahkan!</div>');

            redirect('pengguna');
        }
    }

    public function user_edit()
    {
        $this->form_validation->set_rules(
            'email',
            'Email',
            'trim|valid_email|is_unique[tbl_users.email]',
            array(
                'valid_email' => 'Yang anda masukan bukan E-Mail',
                'is_unique' => 'E-Mail sudah terdaftar!'
            )
        );

        $id_user = $this->input->post('id_user', true);
        $name = $this->input->post('name', true);
        $email = $this->input->post('email', true);
        $username = $this->input->post('username', true);
        $role_id = $this->input->post('role_id', true);
        $position = $this->input->post('role_id', true);
        $facebook = $this->input->post('facebook', true);
        $instagram = $this->input->post('instagram', true);
        $whatsapp = $this->input->post('whatsapp', true);
        $icon = $this->input->post('icon', true);

        $data['user'] = $this->pengguna->get_user_by_id($id_user);
        $change_image = $_FILES['image']['name'];

        if ($change_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048';
            $config['upload_path'] = './assets/img/users/';
            $config['max_width'] = '1024';
            $config['max_height'] = '1024';

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

        $new_password = $this->input->post('new_password');
        // $id = $this->input->post('id');
        // $get_user = ['users.id' => $id];
        // $dt['d'] = $this->user->details_user($get_user)->row_array();

        if (!$new_password) {
            $password = $data['user']->password;
        } else {
            $password = password_hash($new_password, PASSWORD_DEFAULT);
            $this->db->set('password', $password);
        }

        $this->db->set('name', $name);
        $this->db->set('email', $email);
        $this->db->set('username', $username);
        $this->db->set('role_id', $role_id);
        $this->db->set('position', $position);
        $this->db->set('facebook', $facebook);
        $this->db->set('instagram', $instagram);
        $this->db->set('whatsapp', $whatsapp);
        $this->db->set('icon', $icon);

        $this->pengguna->update_user($id_user);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pengguna berhasil diubah!</div>');

        redirect('pengguna');
    }

    public function user_delete()
    {
        $id_user = $this->input->post('id_user');

        $this->pengguna->delete_user($id_user);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pengguna berhasil dihapus!</div>');

        redirect('pengguna');
    }

    private function uploadImage()
    {
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '2048';
        $config['upload_path'] = './assets/img/users/';
        $config['max_width'] = '1024';
        $config['max_height'] = '1024';

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('image')) {
            return $this->upload->data("file_name");
        }

        return "default.jpg";
    }


    // PROFILE
    public function profile()
    {
        $data['title'] = "Profile";

        $this->db->join('tbl_user_role', 'tbl_user_role.id_role = tbl_users.role_id');
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['role'] = $this->pengguna->get_roles();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengguna/profile', $data);
        $this->load->view('templates/footer');
    }

    public function profile_edit()
    {
        $id_user = $this->input->post('id_user', true);
        $name = $this->input->post('name', true);
        $email = $this->input->post('email', true);
        // $username = $this->input->post('username', true);
        $role_id = $this->input->post('role_id', true);
        $position = $this->input->post('role_id', true);
        $facebook = $this->input->post('facebook', true);
        $instagram = $this->input->post('instagram', true);
        $whatsapp = $this->input->post('whatsapp', true);
        // $icon = $this->input->post('icon', true);

        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();
        $change_image = $_FILES['image']['name'];

        if ($change_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048';
            $config['upload_path'] = './assets/img/users/';
            $config['max_width'] = '1024';
            $config['max_height'] = '1024';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $data['user']['image'];
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
        // $this->db->set('username', $username);
        $this->db->set('role_id', $role_id);
        $this->db->set('position', $position);
        $this->db->set('facebook', $facebook);
        $this->db->set('instagram', $instagram);
        $this->db->set('whatsapp', $whatsapp);
        // $this->db->set('icon', $icon);

        $this->pengguna->update_profile($id_user);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Profile anda berhasil diubah!</div>');

        redirect('pengguna/profile/');
    }

    public function profile_change_password()
    {
        $data['title'] = "Profile";

        $this->db->join('tbl_user_role', 'tbl_user_role.id_role = tbl_users.role_id');
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['role'] = $this->pengguna->get_roles();

        $this->form_validation->set_rules(
            'current_password',
            'Current Password',
            'required|trim',
            array(
                'required' => '{field} wajib diisi',
            )
        );

        $this->form_validation->set_rules(
            'new_password01',
            'New Password',
            'required|trim|min_length[6]|max_length[30]|matches[new_password02]',
            array(
                'required' => '{field} wajib diisi',
                'matches' => 'Password tidak sama!',
                'min_length' => 'Minimal 6 Karakter',
                'max_length' => 'Maksimal 30 Karakter'
            )
        );
        $this->form_validation->set_rules(
            'new_password02',
            'Confirm New Password',
            'required|trim|min_length[6]|max_length[30]|matches[new_password02]',
            array(
                'required' => '{field} wajib diisi',
                'matches' => 'Password tidak sama!'
            )
        );

        if ($this->form_validation->run() == false) {
            redirect('pengguna/profile/');
        } else {
            $current_password = $this->input->post('current_password');
            $new_password = $this->input->post('new_password01');

            if (!password_verify($current_password, $data['user']['password'])) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Password lama anda salah!</div>');
                redirect('pengguna/profile/');
            } else {
                if ($current_password == $new_password) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Password baru tidak boleh sama dengan password lama!</div>');
                    redirect('pengguna/profile/');
                } else {
                    // password sudah ok
                    $password_hash = password_hash($new_password, PASSWORD_DEFAULT);

                    $this->db->set('password', $password_hash);

                    $id_user = $data['user']['id_user'];
                    $this->pengguna->update_profile_password($id_user);

                    $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Password berhasil diubah!</div>');
                    redirect('pengguna/profile/');
                }
            }
        }
    }
}