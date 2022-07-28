<?php
class Pembelian_model extends CI_Model
{

    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $query = $this->db->get();
        return $query;
    }

    function get_product($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('category', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    // PEMBELIAN
    function get_purchase($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_purchase');
        $this->db->join('tbl_purchase_detail', 'tbl_purchase_detail.id_purchase = tbl_purchase.id_purchase');
        $this->db->where('id_lab', $id_lab);
        $query = $this->db->get();
        return $query;
    }

    // CART
    function get_purchase_cart()
    {
        $this->db->select('*');
        $this->db->from('tbl_purchase_cart');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_purchase_cart.id_product');
        $query = $this->db->get();
        return $query;
    }

    function save_purchase_cart($data)
    {
        $this->db->insert('tbl_purchase_cart', $data);
    }

    // SUPPLIER
    function get_supplier()
    {
        $this->db->select('*');
        $this->db->from('tbl_supplier');
        $query = $this->db->get();
        return $query;
    }

    function save_supplier($data)
    {
        $this->db->insert('tbl_supplier', $data);
    }

    function update_supplier($data, $id_supplier)
    {
        $this->db->where('id_supplier', $id_supplier);
        $this->db->update('tbl_supplier', $data);
    }

    function delete_supplier($id_supplier)
    {
        $this->db->where('id_supplier', $id_supplier);
        $this->db->delete('tbl_supplier');

        return true;
    }
}
