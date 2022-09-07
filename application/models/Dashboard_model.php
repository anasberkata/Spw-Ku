<?php
class Dashboard_model extends CI_Model
{

    function count_products()
    {
        $query = $this->db->get('tbl_product');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function count_users()
    {
        $query = $this->db->get('tbl_users');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function get_products_running_out()
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->where('qty<=', 5);
        $this->db->where('qty>=', 0);
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


    // DAFTAR LIST PRODUK
    // function get_products()
    // {
    //     $this->db->distinct('DISTINCT(product), image, selling_price, qty');
    //     $this->db->group_by('product');
    //     // $this->db->select('product');
    //     $this->db->from('tbl_product');
    //     // $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
    //     $query = $this->db->get();
    //     return $query;
    // }

    function get_schedule()
    {
        $this->db->select('*');
        $this->db->from('tbl_schedule');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_schedule.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_schedule.id_class');
        $this->db->limit('5');
        $query = $this->db->get();
        return $query;
    }
}
