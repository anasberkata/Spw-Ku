<?php
class Produk_model extends CI_Model
{

    // PRODUK

    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $query = $this->db->get();
        return $query;
    }

    function get_products($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('category', 'ASC');
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

    // function get_code_product()
    // {
    //     $query = $this->db->query("SELECT MAX(code) as kodebarang from tbl_product");
    //     $hasil = $query->row();
    //     return $hasil->kodebarang;
    // }

    function save_product($data)
    {
        $this->db->insert('tbl_product', $data);
    }

    // function update_product($data, $id_product)
    // {
    //     $this->db->where('id_product', $id_product);
    //     $this->db->update('tbl_product', $data);
    // }

    function update_product($id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->update('tbl_product');
    }

    function delete_product($id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->delete('tbl_product');

        return true;
    }

    // KATAGORI
    function get_categories()
    {
        $this->db->select('*');
        $this->db->from('tbl_product_categories');
        $query = $this->db->get();
        return $query;
    }

    function save_category($data)
    {
        $this->db->insert('tbl_product_categories', $data);
    }

    function update_category($data, $id_category)
    {
        $this->db->where('id_category', $id_category);
        $this->db->update('tbl_product_categories', $data);
    }

    function delete_category($id_category)
    {
        $this->db->where('id_category', $id_category);
        $this->db->delete('tbl_product_categories');

        return true;
    }
}
