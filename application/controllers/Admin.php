<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Admin_model', 'admin');
        // $this->load->helper('date');
    }

    public function index()
    {
        $data['title'] = "Dashboard";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('templates/footer');
    }

    // MENU MANAGEMENT
    // MENU
    public function menu()
    {
        $data['title'] = "Menu Management";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['menu'] = $this->admin->get_menus();
        $data['submenu'] = $this->admin->get_submenus();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/menu', $data);
        $this->load->view('templates/footer');
    }

    public function menu_add()
    {
        $this->form_validation->set_rules(
            'menu',
            'Menu',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['title'] = "Menu Management";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['menu'] = $this->admin->get_menus();
            $data['submenu'] = $this->admin->get_submenus();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/menu', $data);
            $this->load->view('templates/footer');
        } else {
            $menu = $this->input->post('menu', true);

            $data = [
                'id_user_menu' => NULL,
                'menu' => $menu
            ];

            $this->admin->save_menu($data);
            $this->session->set_flashdata('message_menu', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Menu berhasil ditambahkan!</div>');
            redirect('admin/menu');
        }
    }

    public function menu_edit()
    {
        $id_user_menu = $this->input->post('id_user_menu', true);
        $menu = $this->input->post('menu', true);

        $data = [
            'menu' => $menu
        ];

        $this->admin->update_menu($data, $id_user_menu);
        $this->session->set_flashdata('message_menu', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Menu berhasil diubah!</div>');
        redirect('admin/menu');
    }

    public function menu_delete()
    {
        $id_user_menu = $this->input->post('id_user_menu');

        $this->admin->delete_menu($id_user_menu);

        $this->session->set_flashdata('message_menu', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Menu berhasil dihapus!</div>');
        redirect('admin/menu');
    }

    // SUBMENU
    public function submenu_add()
    {
        $this->form_validation->set_rules(
            'title',
            'Title',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'url',
            'URL',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'icon',
            'Icon',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['title'] = "Menu Management";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['menu'] = $this->admin->get_menus();
            $data['submenu'] = $this->admin->get_submenus();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/menu', $data);
            $this->load->view('templates/footer');
        } else {
            $title = $this->input->post('title', true);
            $menu_id = $this->input->post('menu_id', true);
            $url = $this->input->post('url', true);
            $icon = $this->input->post('icon', true);
            $is_active = 1;

            $data = [
                'id_user_submenu' => NULL,
                'menu_id' => $menu_id,
                'title' => $title,
                'url' => $url,
                'icon' => $icon,
                'is_active' => $is_active
            ];

            $this->admin->save_submenu($data);
            $this->session->set_flashdata('message_submenu', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Submenu berhasil ditambahkan!</div>');
            redirect('admin/menu');
        }
    }


    // ACCESS ROLE MENU
    public function role()
    {
        $data['title'] = "Access Role Menu";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['role'] = $this->admin->get_role();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/role', $data);
        $this->load->view('templates/footer');
    }
}
