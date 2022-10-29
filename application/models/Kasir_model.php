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

    function count_products($id_lab)
    {
        $this->db->where('id_lab', $id_lab);
        $query = $this->db->get('tbl_product');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    public function search($keyword, $id_lab)
    {
        $this->db->where('id_lab', $id_lab);
        $this->db->like('product', $keyword);
        $query = $this->db->get('tbl_product');
        return $query->result_array();
    }

    public function get_product_all($id_lab)
    {
        $this->db->select('*');
        $this->db->where('id_lab', $id_lab);
        $query = $this->db->get('tbl_product');
        return $query->result_array();
    }

    public  function get_product_id($id)
    {
        $this->db->select('tbl_product.*, category');
        $this->db->from('tbl_product');
        $this->db->join('tbl_product_category', 'id_category=tbl_product_category.id_category', 'left');
        $this->db->where('id_product', $id);
        return $this->db->get();
    }

    public function add_order($data)
    {
        $this->db->insert('tbl_order', $data);
        $id = $this->db->insert_id();
        return (isset($id)) ? $id : FALSE;
    }

    public function add_detail_order($data)
    {
        $this->db->insert('tbl_order_detail', $data);
    }
}
