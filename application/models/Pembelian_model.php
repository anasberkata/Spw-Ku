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
        $this->db->join('tbl_supplier', 'tbl_supplier.id_supplier = tbl_purchase.id_supplier');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_purchase.id_user');
        // $this->db->join('tbl_purchase_detail', 'tbl_purchase_detail.id_purchase = tbl_purchase.id_purchase');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_purchasing', 'DESC');
        $this->db->order_by('id_purchase', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    function save_purchase($data)
    {
        $this->db->insert('tbl_purchase', $data);
    }

    function update_purchase($data, $id_purchase)
    {
        $this->db->where('id_purchase', $id_purchase);
        $this->db->update('tbl_purchase', $data);
    }

    // CART
    // function get_purchase_cart()
    // {
    //     $this->db->select('*');
    //     $this->db->from('tbl_purchase_cart');
    //     $this->db->join('tbl_product', 'tbl_product.id_product = tbl_purchase_cart.id_product');
    //     $this->db->join('tbl_supplier', 'tbl_supplier.id_supplier = tbl_purchase_cart.id_supplier');
    //     $query = $this->db->get();
    //     return $query;
    // }

    // function save_purchase_cart($data)
    // {
    //     $this->db->insert('tbl_purchase_cart', $data);
    // }

    // function update_purchase_cart($data, $id_cart)
    // {
    //     $this->db->where('id_cart', $id_cart);
    //     $this->db->update('tbl_purchase_cart', $data);
    // }

    // function delete_purchase_cart($id_cart)
    // {
    //     $this->db->where('id_cart', $id_cart);
    //     $this->db->delete('tbl_purchase_cart');

    //     return true;
    // }

    function get_purchase_detail($id_purchase)
    {
        $this->db->select('*');
        $this->db->from('tbl_purchase_detail');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_purchase_detail.id_product');
        // $this->db->join('tbl_supplier', 'tbl_supplier.id_supplier = tbl_purchase.id_supplier');
        // $this->db->join('tbl_users', 'tbl_users.id_user = tbl_purchase.id_user');
        // $this->db->join('tbl_purchase_detail', 'tbl_purchase_detail.id_purchase = tbl_purchase.id_purchase');
        $this->db->where('id_purchase', $id_purchase);
        $query = $this->db->get();
        return $query;
    }

    function save_purchase_detail($data)
    {
        $this->db->insert('tbl_purchase_detail', $data);
    }

    function update_purchase_detail($data, $id_purchase_detail)
    {
        $this->db->where('id_purchase_detail', $id_purchase_detail);
        $this->db->update('tbl_purchase_detail', $data);
    }

    function delete_purchase_detail($id_purchase_detail)
    {
        $this->db->where('id_purchase_detail', $id_purchase_detail);
        $this->db->delete('tbl_purchase_detail');

        return true;
    }

    function update_stock_product($data_stock, $id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->update('tbl_product', $data_stock);
    }


    function sum_total_price($id_purchase)
    {
        $query = $this->db->query("SELECT SUM(`total_price`) AS `total` FROM `tbl_purchase_detail` WHERE `id_purchase` = $id_purchase");
        return $query->row();
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




    function ajax_produk($id)
    {
        $hasil = $this->db->query("SELECT * FROM tbl_product WHERE id_product = '$id'");
        // return $hasil->result();
        return $hasil->row();
    }
}
