<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Data extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Data_model', 'data');
        // $this->load->helper('date');
    }

    // DATA LAB SPW
    public function lab()
    {
        $data['title'] = "Lab SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->data->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('data/lab', $data);
        $this->load->view('templates/footer');
    }

    // DATA JADWAL SPW
    public function schedule()
    {
        $data['title'] = "Jadwal SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['schedule'] = $this->data->get_schedule();
        $data['teacher'] = $this->data->get_teacher();
        $data['class'] = $this->data->get_class();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('data/schedule', $data);
        $this->load->view('templates/footer');
    }

    public function schedule_add()
    {
        $data['title'] = "Jadwal SPW";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $this->form_validation->set_rules(
            'picket_schedule',
            'Jadwal',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'id_user',
            'Guru Praktek',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'id_class',
            'Kelas',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['schedule'] = $this->data->get_schedule();
            $data['teacher'] = $this->data->get_teacher();
            $data['class'] = $this->data->get_class();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('data/schedule', $data);
            $this->load->view('templates/footer');
        } else {
            $id_user = $this->input->post('id_user', true);
            $id_class = $this->input->post('id_class', true);
            $picket_schedule = $this->input->post('picket_schedule', true);

            $data = [
                'id_schedule' => NULL,
                'id_user' => $id_user,
                'id_class' => $id_class,
                'picket_schedule' => $picket_schedule

            ];

            $this->data->save_schedule($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Jadwal berhasil ditambahkan!</div>');
            redirect('data');
        }
    }

    public function schedule_edit()
    {
        $id_schedule = $this->input->post('id_schedule', true);
        $id_user = $this->input->post('id_user', true);
        $id_class = $this->input->post('id_class', true);
        $picket_schedule = $this->input->post('picket_schedule', true);


        $this->db->set('id_user', $id_user);
        $this->db->set('id_class', $id_class);
        $this->db->set('picket_schedule', $picket_schedule);

        $this->data->update_schedule($id_schedule);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Jadwal berhasil diubah!</div>');
        redirect('data');
    }

    public function schedule_delete()
    {
        $id_schedule = $this->input->post('id_schedule');

        $this->data->delete_schedule($id_schedule);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Jadwal berhasil dihapus!</div>');
        redirect('data');
    }
}
