<?php
class Daftar_model extends CI_Model
{

    // DAFTAR LIST PRODUK
    function get_products()
    {
        $this->db->distinct('DISTINCT(product), image, selling_price, qty');
        $this->db->group_by('product');
        // $this->db->select('product');
        $this->db->from('tbl_product');
        // $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $query = $this->db->get();
        return $query;
    }

    function get_products_by_search($search)
    {

        $this->db->distinct('DISTINCT(product), image, selling_price, qty');
        $this->db->group_by('product');
        $this->db->like('product', $search);
        // $this->db->select('product');
        $this->db->from('tbl_product');
        // $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $query = $this->db->get();
        return $query;
    }
}
