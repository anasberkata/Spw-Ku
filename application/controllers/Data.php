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

    // DATABASE
    public function data_web()
    {
        $data['title'] = "Data Web";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('data/data_web', $data);
        $this->load->view('templates/footer');
    }

    public function database_backup()
    {
        date_default_timezone_set("Asia/Jakarta");

        $this->load->dbutil();
        $pref = [
            'format' => 'zip',
            'filename' => 'spw-ku.sql'
        ];

        $backup     = $this->dbutil->backup($pref);
        $db_name    = 'backup_db_spw__' . date("d-m-Y__H-i-s") . '.zip';
        $save       = './sources/database/' . $db_name;

        $this->load->helper('file');
        write_file($save, $backup);

        $this->load->helper("download");
        force_download($db_name, $backup);
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
        $data['schedule'] = $this->data->get_schedule();
        $data['teacher'] = $this->data->get_teacher();
        $data['class'] = $this->data->get_class();

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
            redirect('data/schedule');
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
        redirect('data/schedule');
    }

    public function schedule_delete()
    {
        $id_schedule = $this->input->post('id_schedule');

        $this->data->delete_schedule($id_schedule);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Jadwal berhasil dihapus!</div>');
        redirect('data/schedule');
    }

    // DATA KELAS
    public function class()
    {
        $data['title'] = "Data Kelas";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();
        $data['class'] = $this->data->get_class();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('data/class', $data);
        $this->load->view('templates/footer');
    }

    public function class_add()
    {
        $data['title'] = "Data Kelas";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();
        $data['class'] = $this->data->get_class();

        $this->form_validation->set_rules(
            'class',
            'Kelas',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('data/schedule', $data);
            $this->load->view('templates/footer');
        } else {
            $class = $this->input->post('class', true);

            $data = [
                'id_class' => NULL,
                'class' => $class

            ];

            $this->data->save_class($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kelas berhasil ditambahkan!</div>');
            redirect('data/class');
        }
    }

    public function class_edit()
    {
        $id_class = $this->input->post('id_class', true);
        $class = $this->input->post('class', true);

        $this->db->set('class', $class);

        $this->data->update_class($id_class);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kelas berhasil diubah!</div>');
        redirect('data/class');
    }

    public function class_delete()
    {
        $id_class = $this->input->post('id_class');

        $this->data->delete_class($id_class);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kelas berhasil dihapus!</div>');
        redirect('data/class');
    }
}
