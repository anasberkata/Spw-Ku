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



    function search_detail_selling($id_selling, $id_place)
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
}
