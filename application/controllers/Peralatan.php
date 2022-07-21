<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Peralatan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Peralatan_model', 'peralatan');
        // $this->load->helper('date');
    }

    // PRODUK
    public function index()
    {
        $data['title'] = "Data Peralatan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->peralatan->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/index', $data);
        $this->load->view('templates/footer');
    }

    public function tool()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Peralatan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['tool'] = $this->peralatan->get_tools($id_lab);
        $data['tool_condition'] = $this->peralatan->get_condition();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/tool', $data);
        $this->load->view('templates/footer');
    }

    public function tool_add()
    {
        $this->form_validation->set_rules(
            'tool',
            'Tool',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_lab = $this->input->get('id_lab', true);

            $data['title'] = "Data Peralatan";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['tool'] = $this->peralatan->get_tools($id_lab);
            $data['tool_condition'] = $this->peralatan->get_condition();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('peralatan/tool', $data);
            $this->load->view('templates/footer');
        } else {
            $id_lab = $this->input->post('id_lab', true);
            $tool = $this->input->post('tool', true);
            $qty = $this->input->post('qty', true);
            $id_tool_condition = $this->input->post('id_tool_condition', true);
            $description = $this->input->post('description', true);
            $is_active = 1;

            $data = [
                'id_tool' => NULL,
                'tool' => $tool,
                'qty' => $qty,
                'tool_condition' => $id_tool_condition,
                'description' => $description,
                'id_lab' => $id_lab,
                'is_active' => $is_active
            ];

            $this->peralatan->save_tool($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil ditambahkan!</div>');
            redirect('peralatan/tool/?id_lab=' . $id_lab);
        }
    }

    public function tool_edit()
    {
        $id_tool = $this->input->post('id_tool', true);
        $id_lab = $this->input->post('id_lab', true);
        $tool = $this->input->post('tool', true);
        $qty = $this->input->post('qty', true);
        $id_tool_condition = $this->input->post('id_tool_condition', true);
        $description = $this->input->post('description', true);

        $data = [
            'tool' => $tool,
            'qty' => $qty,
            'tool_condition' => $id_tool_condition,
            'description' => $description
        ];

        $this->peralatan->update_tool($data, $id_tool);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil diubah!</div>');
        redirect('peralatan/tool/?id_lab=' . $id_lab);
    }

    public function tool_delete()
    {
        $id_tool = $this->input->post('id_tool', true);
        $id_lab = $this->input->post('id_lab', true);

        $this->peralatan->delete_tool($id_tool);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil dihapus!</div>');
        redirect('peralatan/tool/?id_lab=' . $id_lab);
    }
}
