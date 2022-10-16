<?php
class Dashboard_model extends CI_Model
{

    function count_class()
    {
        $query = $this->db->get('tbl_class');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function count_products()
    {
        $this->db->where('id_lab', 1);
        $query = $this->db->get('tbl_product');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function count_franchisor()
    {
        $this->db->where('role_id=7');
        $query = $this->db->get('tbl_users');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function count_users()
    {
        $this->db->where('role_id<', 6);
        $this->db->where('role_id!=', 1);
        $query = $this->db->get('tbl_users');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function get_schedule()
    {
        $today = date("Y-m-d");
        $this->db->select('*');
        $this->db->from('tbl_schedule');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_schedule.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_schedule.id_class');
        $this->db->where('picket_schedule >=', $today);
        $this->db->limit('5');
        $query = $this->db->get();
        return $query;
    }

    function get_products()
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $query = $this->db->get();
        return $query;
    }

    function get_products_running_out()
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->where('qty<=', 5);
        $this->db->where('qty>=', 0);
        $query = $this->db->get();
        return $query;
    }
}
