<?php
class Stok_model extends CI_Model
{

    // PRODUK

    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $this->db->join(
            'tbl_users',
            'tbl_users.id_user = tbl_data_lab.product_in_charge'
        );
        $query = $this->db->get();
        return $query;
    }

    function get_products($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $this->db->join('tbl_product_place', 'tbl_product_place.id_place = tbl_product.id_place');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('place', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function get_products_by_id($id_product = NULL)
    {
        // $this->db->select('*');
        // $this->db->from('tbl_product');
        // $this->db->where('id_product', $id_product);
        // $query = $this->db->row();
        // return $query;

        $query = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row();
        return $query;
    }

    function get_places()
    {
        $this->db->select('*');
        $this->db->from('tbl_product_place');
        $query = $this->db->get();
        return $query;
    }

    function get_products_to_excel($id_lab, $id_place)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $this->db->join('tbl_product_place', 'tbl_product_place.id_place = tbl_product.id_place');
        $this->db->where('tbl_product.id_lab', $id_lab);
        $this->db->where('tbl_product.id_place', $id_place);
        $this->db->order_by('place', 'ASC');
        $query = $this->db->get();
        return $query;
    }
}
