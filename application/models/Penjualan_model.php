<?php
class Penjualan_model extends CI_Model
{

    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_data_lab.product_in_charge');
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
        $this->db->order_by('product', 'ASC');
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

    // PENJUALAN
    function get_selling($id_lab)
    {
        $this->db->distinct('DISTINCT(date_selling), id_lab');
        $this->db->group_by('date_selling');
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

    function update_selling($data, $date_selling)
    {
        $this->db->where('date_selling', $date_selling);
        $this->db->update('tbl_selling', $data);
    }

    function get_selling_detail($date_selling, $id_lab)
    {
        $this->db->select('*');
        $this->db->distinct('DISTINCT(product), qty_selling');
        $this->db->select_sum('qty_selling');
        $this->db->select_sum('total_basic_price');
        $this->db->select_sum('total_selling_price');
        $this->db->group_by('product');
        $this->db->from('tbl_selling_detail');
        // $this->db->join('tbl_selling', 'tbl_selling.date_selling = tbl_selling_detail.date_selling');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('tbl_selling_detail.date_selling', $date_selling);
        $this->db->where('tbl_selling_detail.id_lab', $id_lab);
        $this->db->order_by('tbl_selling_detail.id_product', 'ASC');
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

    function sum_total_basic_price($date_selling, $id_lab)
    {
        $query = $this->db->query("SELECT SUM(`total_basic_price`) AS `total_basic_price` FROM `tbl_selling_detail` WHERE `date_selling` = '$date_selling' AND `id_lab` = '$id_lab'");
        return $query->row();
    }

    function sum_total_selling_price($date_selling, $id_lab)
    {
        $query = $this->db->query("SELECT SUM(`total_selling_price`) AS `total_selling_price` FROM `tbl_selling_detail` WHERE `date_selling` = '$date_selling' AND `id_lab` = '$id_lab'");
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
        // $this->db->join('tbl_selling', 'tbl_selling.date_selling = tbl_selling_detail.date_selling');
        $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('tbl_selling_detail.date_selling', $date_selling);
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


    // PENJUALAN BARANG TITIPAN
    function get_franchise()
    {
        $this->db->select('*');
        $this->db->from('tbl_franchise');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_franchise.id_user');
        // $this->db->where('id_lab', $id_lab);
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
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_franchise_detail.id_franchisor');
        $this->db->where('id_franchise', $id_franchise);
        $this->db->where('role_id', 7);
        $this->db->order_by('tbl_users.id_user', 'ASC');
        $this->db->order_by('id_franchise_detail', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function get_franchise_detail_for_franchisor($id_franchise)
    {
        $this->db->select('*');
        $this->db->from('tbl_franchise_detail');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_franchise_detail.id_franchisor');
        $this->db->where('id_franchise', $id_franchise);
        $this->db->order_by('tbl_users.id_user', 'ASC');
        $this->db->order_by('id_franchise_detail', 'ASC');
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

    function search_franchise_detail($id_franchise, $id_user)
    {
        $this->db->select('*');
        $this->db->from('tbl_franchise_detail');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_franchise_detail.id_franchisor');
        $this->db->where('id_franchise', $id_franchise);
        $this->db->where('tbl_users.id_user', $id_user);
        $this->db->order_by('tbl_users.id_user', 'ASC');
        $this->db->order_by('id_franchise_detail', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function search_sum_total_basic_price_franchise($id_franchise, $id_user)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_basic_price`) AS `total_basic_price_franchise`
            FROM `tbl_franchise_detail`
            WHERE `id_franchise` = $id_franchise AND `id_franchisor` = $id_user"
        );
        return $query->row();
    }

    function search_sum_total_selling_price_franchise($id_franchise, $id_user)
    {
        $query = $this->db->query(
            "SELECT SUM(`total_selling_price`) AS `total_selling_price_franchise`
            FROM `tbl_franchise_detail`
            WHERE `id_franchise` = $id_franchise AND `id_franchisor` = $id_user"
        );
        return $query->row();
    }

    // STUDENT
    function get_class()
    {
        $this->db->select('*');
        $this->db->from('tbl_class');
        $query = $this->db->get();
        return $query;
    }

    function get_student_selling()
    {
        $this->db->select('*');
        $this->db->from('tbl_student_selling');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_student_selling.id_user');
        $this->db->join('tbl_class', 'tbl_class.id_class = tbl_student_selling.id_class');
        $this->db->order_by('date_selling', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    function save_student_selling($data)
    {
        $this->db->insert('tbl_student_selling', $data);
    }

    function update_student_selling($data, $id_student_selling)
    {
        $this->db->where('id_student_selling', $id_student_selling);
        $this->db->update('tbl_student_selling', $data);
    }

    function get_student_selling_detail($id_student_selling)
    {
        $this->db->select('*');
        $this->db->from('tbl_student_selling_detail');
        // $this->db->join('tbl_product', 'tbl_product.id_product = tbl_selling_detail.id_product');
        $this->db->where('id_student_selling', $id_student_selling);
        $query = $this->db->get();
        return $query;
    }

    function save_student_selling_detail($data)
    {
        $this->db->insert('tbl_student_selling_detail', $data);
    }

    function update_student_selling_detail($data, $id_student_selling_detail)
    {
        $this->db->where('id_student_selling_detail', $id_student_selling_detail);
        $this->db->update('tbl_student_selling_detail', $data);
    }

    function delete_student_selling_detail($id_student_selling_detail)
    {
        $this->db->where('id_student_selling_detail', $id_student_selling_detail);
        $this->db->delete('tbl_student_selling_detail');

        return true;
    }

    function sum_total_basic_price_student_selling($id_student_selling)
    {
        $query = $this->db->query("SELECT SUM(`total_basic_price`) AS `total_basic_price_student_selling` FROM `tbl_student_selling_detail` WHERE `id_student_selling` = $id_student_selling");
        return $query->row();
    }

    function sum_total_selling_price_student_selling($id_student_selling)
    {
        $query = $this->db->query("SELECT SUM(`total_selling_price`) AS `total_selling_price_student_selling` FROM `tbl_student_selling_detail` WHERE `id_student_selling` = $id_student_selling");
        return $query->row();
    }
}
