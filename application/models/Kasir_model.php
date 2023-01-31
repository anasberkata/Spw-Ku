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
        $this->db->where_not_in('id_place', 5);
        $query = $this->db->get();
        return $query;
    }

    function get_franchisor()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->where('role_id', 7);
        $query = $this->db->get();
        return $query;
    }

    function count_products($id_lab)
    {
        $this->db->where('id_lab', $id_lab);
        $this->db->where('id_owner', 0);
        $query = $this->db->get('tbl_product');
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }

    function get_schedule($today)
    {
        $this->db->select('*');
        $this->db->from('tbl_schedule');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_schedule.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_schedule.id_class');
        $this->db->where('picket_schedule', $today);
        $query = $this->db->get();
        return $query->row_array();
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
        $this->db->from('tbl_product');
        $this->db->where('id_lab', $id_lab);
        $this->db->join('tbl_product_place', 'tbl_product_place.id_place = tbl_product.id_place');
        $this->db->order_by('place', 'ASC');
        $this->db->order_by('product', 'ASC');
        $query = $this->db->get();
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
        $this->db->insert('tbl_selling', $data);
        $id = $this->db->insert_id();
        return (isset($id)) ? $id : FALSE;
    }

    public function add_detail_order($data)
    {
        $this->db->insert('tbl_selling_detail', $data);
    }

    public function update_stock_product($data_stock_update, $id)
    {
        $this->db->where('id_product', $id);
        $this->db->update('tbl_product', $data_stock_update);
    }

    // PENJUALAN
    public function get_selling($id_lab)
    {
        $this->db->distinct('DISTINCT(date_selling), id_lab');
        $this->db->group_by('date_selling');
        $this->db->from('tbl_selling');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_selling.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_selling.id_class');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_selling', 'DESC');
        $this->db->order_by('id_selling', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    public function get_selling_detail($date_selling, $id_lab)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_selling_detail');
        $this->db->join('tbl_selling', 'tbl_selling.id_selling = tbl_selling_detail.id_selling');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('tbl_selling.date_selling', $date_selling);
        $this->db->where('tbl_selling_detail.id_lab', $id_lab);
        $this->db->where('tbl_product.id_owner', 0);
        $this->db->order_by('tbl_product.product', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function sum_total_basic_price($date_selling, $id_lab)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND `tbl_product`.`id_owner` = 0
            "
        );
        return $query->row();
    }

    function sum_total_selling_price($date_selling, $id_lab)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND `tbl_product`.`id_owner` = 0
            "
        );
        return $query->row();
    }

    public function search_selling_detail($date_selling, $id_lab, $id_place)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_selling_detail');
        $this->db->join('tbl_selling', 'tbl_selling.id_selling = tbl_selling_detail.id_selling');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('tbl_selling.date_selling', $date_selling);
        $this->db->where('tbl_selling_detail.id_lab', $id_lab);
        $this->db->where('tbl_product.id_place', $id_place);
        $this->db->order_by('tbl_selling_detail.id_product', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function search_sum_total_basic_price($date_selling, $id_lab, $id_place)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price`
            FROM `tbl_selling_detail`
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND `id_place` = '$id_place'"
        );
        return $query->row();
    }

    function search_sum_total_selling_price($date_selling, $id_lab, $id_place)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND `id_place` = '$id_place'"
        );
        return $query->row();
    }


    // PENJUALAN TITIPAN
    public function get_selling_franchise($id_lab)
    {
        $this->db->distinct('DISTINCT(date_selling), id_lab');
        $this->db->group_by('date_selling');
        $this->db->from('tbl_selling');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_selling.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_selling.id_class');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_selling', 'DESC');
        $this->db->order_by('id_selling', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    public function get_selling_franchise_detail($date_selling, $id_lab)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_selling_detail');
        $this->db->join('tbl_selling', 'tbl_selling.id_selling = tbl_selling_detail.id_selling');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('tbl_selling.date_selling', $date_selling);
        $this->db->where('tbl_selling_detail.id_lab', $id_lab);
        $this->db->where_not_in('tbl_product.id_owner', 0);
        $this->db->order_by('tbl_selling_detail.id_product', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function sum_franchise_total_basic_price($date_selling, $id_lab)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND NOT `tbl_product`.`id_owner` = 0
            "
        );
        return $query->row();
    }

    function sum_franchise_total_selling_price($date_selling, $id_lab)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND NOT `tbl_product`.`id_owner` = 0
            "
        );
        return $query->row();
    }

    function search_selling_franchise_detail($date_selling, $id_lab, $id_franchisor)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_selling_detail');
        $this->db->join('tbl_selling', 'tbl_selling.id_selling = tbl_selling_detail.id_selling');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('tbl_selling.date_selling', $date_selling);
        $this->db->where('tbl_selling_detail.id_lab', $id_lab);
        $this->db->where('tbl_product.id_owner', $id_franchisor);
        $this->db->order_by('tbl_selling_detail.id_product', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function search_sum_franchise_total_basic_price($date_selling, $id_lab, $id_franchisor)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price`
            FROM `tbl_selling_detail`
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND `tbl_product`.`id_owner` = '$id_franchisor'"
        );
        return $query->row();
    }

    function search_sum_franchise_total_selling_price($date_selling, $id_lab, $id_franchisor)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price` 
            FROM `tbl_selling_detail` 
            INNER JOIN `tbl_product`
            ON `tbl_selling_detail`.`id_product` = `tbl_product`.`id_product`
            WHERE `date_selling` = '$date_selling' AND `tbl_selling_detail`.`id_lab` = '$id_lab' AND `tbl_product`.`id_owner` = '$id_franchisor'"
        );
        return $query->row();
    }
}
