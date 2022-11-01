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

    function get_place()
    {
        $this->db->select('*');
        $this->db->from('tbl_product_place');
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

    public function get_product_id($id)
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

    public function update_stock_product($data_stock_update, $id)
    {
        $this->db->where('id_product', $id);
        $this->db->update('tbl_product', $data_stock_update);
    }

    // PENJUALAN
    public function get_selling($id_lab)
    {
        $this->db->distinct('DISTINCT(date_order), id_lab');
        $this->db->group_by('date_order');
        $this->db->from('tbl_order');
        // $this->db->join('tbl_users', 'tbl_users.id_user = tbl_selling.id_user');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_order', 'DESC');
        $this->db->order_by('id_order', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    public function get_selling_detail($date_order, $id_lab)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_order_detail');
        // $this->db->join('tbl_order', 'tbl_order.date_order = tbl_order_detail.date_order');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_order_detail.id_product');
        $this->db->where('tbl_order_detail.date_order', $date_order);
        $this->db->where('tbl_order_detail.id_lab', $id_lab);
        $this->db->order_by('tbl_order_detail.id_product', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function sum_total_basic_price($date_order, $id_lab)
    {
        $query = $this->db->query("SELECT SUM(`total_basic_price`) AS `total_basic_price` FROM `tbl_order_detail` WHERE `date_order` = '$date_order' AND `id_lab` = '$id_lab'");
        return $query->row();
    }

    function sum_total_selling_price($date_order, $id_lab)
    {
        $query = $this->db->query("SELECT SUM(`total_selling_price`) AS `total_selling_price` FROM `tbl_order_detail` WHERE `date_order` = '$date_order' AND `id_lab` = '$id_lab'");
        return $query->row();
    }

    public function search_selling_detail($date_order, $id_lab, $id_place)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_order_detail');
        // $this->db->join('tbl_order', 'tbl_order.date_order = tbl_order_detail.date_order');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_order_detail.id_product');
        $this->db->where('tbl_order_detail.date_order', $date_order);
        $this->db->where('tbl_order_detail.id_lab', $id_lab);
        $this->db->where('tbl_product.id_place', $id_place);
        $this->db->order_by('tbl_order_detail.id_product', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function search_sum_total_basic_price($date_order, $id_lab, $id_place)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price`
            FROM `tbl_order_detail`
            INNER JOIN `tbl_product`
            ON `tbl_order_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_order` = '$date_order' AND `tbl_order_detail`.`id_lab` = '$id_lab' AND `id_place` = '$id_place'"
        );
        return $query->row();
    }

    function search_sum_total_selling_price($date_order, $id_lab, $id_place)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price` 
            FROM `tbl_order_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_order_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_order` = '$date_order' AND `tbl_order_detail`.`id_lab` = '$id_lab' AND `id_place` = '$id_place'"
        );
        return $query->row();
    }
}
