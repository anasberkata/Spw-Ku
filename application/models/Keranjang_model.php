<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Keranjang_model extends CI_Model
{
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

    public function get_produk_all($id_lab)
    {
        $this->db->select('*');
        $this->db->where('id_lab', $id_lab);
        $query = $this->db->get('tbl_product');
        return $query->result_array();
    }

    public  function get_produk_id($id)
    {
        $this->db->select('tbl_product.*, category');
        $this->db->from('tbl_product');
        $this->db->join('tbl_product_category', 'id_category=tbl_product_category.id_category', 'left');
        $this->db->where('id_product', $id);
        return $this->db->get();
    }

    public function tambah_order($data)
    {
        $this->db->insert('tbl_order', $data);
        $id = $this->db->insert_id();
        return (isset($id)) ? $id : FALSE;
    }

    public function tambah_detail_order($data)
    {
        $this->db->insert('tbl_order_detail', $data);
    }
}
