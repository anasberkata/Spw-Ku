<?php
class Penjualan_model extends CI_Model
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
        // $this->db->join('tbl_product_categories', 'tbl_product_categories.id_category = tbl_product.id_category');
        $this->db->join('tbl_product_place', 'tbl_product_place.id_place = tbl_product.id_place');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('place', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function get_place()
    {
        $this->db->select('*');
        $this->db->from('tbl_product_place');
        $query = $this->db->get();
        return $query;
    }

    // PENJUALAN
    function get_selling($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_selling');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_selling.id_user');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_selling', 'DESC');
        $this->db->order_by('id_selling', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    function save_selling($data)
    {
        $this->db->insert('tbl_selling', $data);
    }

    function update_selling($data, $id_selling)
    {
        $this->db->where('id_selling', $id_selling);
        $this->db->update('tbl_selling', $data);
    }

    function get_selling_detail($id_selling)
    {
        $this->db->select('*');
        $this->db->from('tbl_selling_detail');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('id_selling', $id_selling);
        $query = $this->db->get();
        return $query;
    }

    function save_selling_detail($data)
    {
        $this->db->insert('tbl_selling_detail', $data);
    }

    function update_selling_detail($data, $id_selling_detail)
    {
        $this->db->where('id_selling_detail', $id_selling_detail);
        $this->db->update('tbl_selling_detail', $data);
    }

    function delete_selling_detail($id_selling_detail)
    {
        $this->db->where('id_selling_detail', $id_selling_detail);
        $this->db->delete('tbl_selling_detail');

        return true;
    }

    function update_stock_product($data_stock, $id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->update('tbl_product', $data_stock);
    }

    function sum_total_basic_price($id_selling)
    {
        $query = $this->db->query("SELECT SUM(`total_basic_price`) AS `total_basic_price` FROM `tbl_selling_detail` WHERE `id_selling` = $id_selling");
        return $query->row();
    }

    function sum_total_selling_price($id_selling)
    {
        $query = $this->db->query("SELECT SUM(`total_selling_price`) AS `total_selling_price` FROM `tbl_selling_detail` WHERE `id_selling` = $id_selling");
        return $query->row();
    }

    function search_selling_detail($id_selling, $id_place)
    {
        $this->db->select('*');
        $this->db->from('tbl_selling_detail');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('id_selling', $id_selling);
        $this->db->where('id_place', $id_place);
        $query = $this->db->get();
        return $query;
    }

    function search_sum_total_basic_price($id_selling, $id_place)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price`
            FROM `tbl_selling_detail`
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `id_selling` = $id_selling AND `id_place` = $id_place"
        );
        return $query->row();
    }

    function search_sum_total_selling_price($id_selling, $id_place)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `id_selling` = $id_selling AND `id_place` = $id_place"
        );
        return $query->row();
    }


    // PENJUALAN BARANG TITIPAN
    function get_franchisor()
    {
        $this->db->select('*');
        $this->db->from('tbl_franchisor');
        $query = $this->db->get();
        return $query;
    }

    function get_franchise($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_franchise');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_franchise.id_user');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_selling', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    function save_franchise($data)
    {
        $this->db->insert('tbl_franchise', $data);
    }

    function update_franchise($data, $id_franchise)
    {
        $this->db->where('id_franchise', $id_franchise);
        $this->db->update('tbl_franchise', $data);
    }

    function get_franchise_detail($id_franchise)
    {
        $this->db->select('*');
        $this->db->from('tbl_franchise_detail');
        $this->db->join('tbl_franchisor', 'tbl_franchisor.id_franchisor = tbl_franchise_detail.id_franchisor');
        $this->db->where('id_franchise', $id_franchise);
        $this->db->order_by('tbl_franchisor.id_franchisor', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function save_franchise_detail($data)
    {
        $this->db->insert('tbl_franchise_detail', $data);
    }

    function update_franchise_detail($data, $id_franchise_detail)
    {
        $this->db->where('id_franchise_detail', $id_franchise_detail);
        $this->db->update('tbl_franchise_detail', $data);
    }

    function delete_franchise_detail($id_franchise_detail)
    {
        $this->db->where('id_franchise_detail', $id_franchise_detail);
        $this->db->delete('tbl_franchise_detail');

        return true;
    }

    function sum_total_basic_price_franchise($id_franchise)
    {
        $query = $this->db->query("SELECT SUM(`total_basic_price`) AS `total_basic_price_franchise` FROM `tbl_franchise_detail` WHERE `id_franchise` = $id_franchise");
        return $query->row();
    }

    function sum_total_selling_price_franchise($id_franchise)
    {
        $query = $this->db->query("SELECT SUM(`total_selling_price`) AS `total_selling_price_franchise` FROM `tbl_franchise_detail` WHERE `id_franchise` = $id_franchise");
        return $query->row();
    }

    function search_franchise_detail($id_franchise, $id_franchisor)
    {
        $this->db->select('*');
        $this->db->from('tbl_franchise_detail');
        $this->db->join('tbl_franchisor', 'tbl_franchisor.id_franchisor = tbl_franchise_detail.id_franchisor');
        $this->db->where('id_franchise', $id_franchise);
        $this->db->where('tbl_franchisor.id_franchisor', $id_franchisor);
        $this->db->order_by('tbl_franchisor.id_franchisor', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function search_sum_total_basic_price_franchise($id_franchise, $id_franchisor)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price_franchise`
            FROM `tbl_franchise_detail`
            WHERE `id_franchise` = $id_franchise AND `id_franchisor` = $id_franchisor"
        );
        return $query->row();
    }

    function search_sum_total_selling_price_franchise($id_franchise, $id_franchisor)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price_franchise`
            FROM `tbl_franchise_detail`
            WHERE `id_franchise` = $id_franchise AND `id_franchisor` = $id_franchisor"
        );
        return $query->row();
    }
}
