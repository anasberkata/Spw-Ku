<?php
class Kasir_model extends CI_Model
{

    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_data_lab.product_in_charge');
        $query = $this->db->get();
        return $query;
    }

    function get_product($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        // $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        // $this->db->join('tbl_product_place', 'tbl_product_place.id_place = tbl_product.id_place');
        $this->db->where('id_lab', $id_lab);
        // $this->db->order_by('place', 'ASC');
        // $this->db->order_by('product', 'ASC');
        $query = $this->db->get();
        return $query;
    }
}
