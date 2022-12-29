<?php
class Data_model extends CI_Model
{
    // LAB SPWE
    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $query = $this->db->get();
        return $query;
    }

    function save_lab($data)
    {
        $this->db->insert('tbl_data_lab', $data);
    }

    function update_lab($id_lab)
    {
        $this->db->where('id_lab', $id_lab);
        $this->db->update('tbl_data_lab');
    }

    function delete_lab($id_lab)
    {
        $this->db->where('id_lab', $id_lab);
        $this->db->delete('tbl_data_lab');

        return true;
    }












    function get_teacher()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->where('role_id !=', 1);
        $this->db->where('role_id <', 6);
        $this->db->order_by('name', 'asc');
        $query = $this->db->get();
        return $query;
    }










    // SCHEDULE
    function get_schedule()
    {
        $this->db->select('*');
        $this->db->from('tbl_schedule');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_schedule.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_schedule.id_class');
        $query = $this->db->get();
        return $query;
    }

    function save_schedule($data)
    {
        $this->db->insert('tbl_schedule', $data);
    }

    function update_schedule($id_schedule)
    {
        $this->db->where('id_schedule', $id_schedule);
        $this->db->update('tbl_schedule');
    }

    function delete_schedule($id_schedule)
    {
        $this->db->where('id_schedule', $id_schedule);
        $this->db->delete('tbl_schedule');

        return true;
    }

    // CLASS
    function get_class()
    {
        $this->db->select('*');
        $this->db->from('tbl_class');
        $query = $this->db->get();
        return $query;
    }

    function save_class($data)
    {
        $this->db->insert('tbl_class', $data);
    }

    function update_class($id_class)
    {
        $this->db->where('id_class', $id_class);
        $this->db->update('tbl_class');
    }

    function delete_class($id_class)
    {
        $this->db->where('id_class', $id_class);
        $this->db->delete('tbl_class');

        return true;
    }
}
