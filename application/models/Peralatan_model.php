<?php
class Peralatan_model extends CI_Model
{

    // PERALATAN
    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_data_lab.product_in_charge');
        $query = $this->db->get();
        return $query;
    }

    function get_tools($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_tool');
        $this->db->join('tbl_tool_condition', 'tbl_tool_condition.id_tool_condition = tbl_tool.tool_condition');
        $this->db->join('tbl_tool_categories', 'tbl_tool_categories.id_tool_category = tbl_tool.id_tool_category');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('tool', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function get_tools_by_id($id_tool = NULL)
    {
        $query = $this->db->get_where('tbl_tool', ['id_tool' => $id_tool])->row();
        return $query;
    }

    function save_tool($data)
    {
        $this->db->insert('tbl_tool', $data);
    }

    function update_tool($data, $id_tool)
    {
        $this->db->where('id_tool', $id_tool);
        $this->db->update('tbl_tool', $data);
    }

    function delete_tool($id_tool)
    {
        $this->db->where('id_tool', $id_tool);
        $this->db->delete('tbl_tool');

        return true;
    }

    // KONDISI
    function get_condition()
    {
        $this->db->select('*');
        $this->db->from('tbl_tool_condition');
        $query = $this->db->get();
        return $query;
    }

    function sum_total_price($id_lab)
    {
        $query = $this->db->query("SELECT SUM(`price`) AS `total_price` FROM `tbl_tool` WHERE `id_lab` = '$id_lab'");
        return $query->row();
    }

    // PURCHASE
    function get_tool_purchase($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_tool_purchase');
        // $this->db->join('tbl_supplier', 'tbl_supplier.id_supplier = tbl_purchase.id_supplier');
        $this->db->join('tbl_users', 'tbl_users.id_user = tbl_tool_purchase.id_user');
        // $this->db->join('tbl_purchase_detail', 'tbl_purchase_detail.id_purchase = tbl_purchase.id_purchase');
        $this->db->where('id_lab', $id_lab);
        $this->db->order_by('date_purchasing', 'DESC');
        $this->db->order_by('id_purchase', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    function save_tool_purchase($data)
    {
        $this->db->insert('tbl_tool_purchase', $data);
    }

    function update_tool_purchase($data, $id_purchase)
    {
        $this->db->where('id_purchase', $id_purchase);
        $this->db->update('tbl_tool_purchase', $data);
    }

    // PURCHASE DETAIL
    function get_tool_purchase_detail($id_purchase)
    {
        $this->db->select('*');
        $this->db->from('tbl_tool_purchase_detail');
        $this->db->join('tbl_tool', 'tbl_tool.id_tool = tbl_tool_purchase_detail.id_tool');
        $this->db->join('tbl_tool_condition', 'tbl_tool_condition.id_tool_condition = tbl_tool_purchase_detail.condition_purchase');
        $this->db->where('id_purchase', $id_purchase);
        $query = $this->db->get();
        return $query;
    }

    function save_tool_purchase_detail($data)
    {
        $this->db->insert('tbl_tool_purchase_detail', $data);
    }

    function update_tool_purchase_detail($data, $id_purchase_detail)
    {
        $this->db->where('id_purchase_detail', $id_purchase_detail);
        $this->db->update('tbl_tool_purchase_detail', $data);
    }

    function delete_tool_purchase_detail($id_purchase_detail)
    {
        $this->db->where('id_purchase_detail', $id_purchase_detail);
        $this->db->delete('tbl_tool_purchase_detail');

        return true;
    }

    function update_stock_tool($data_stock, $id_tool)
    {
        $this->db->where('id_tool', $id_tool);
        $this->db->update('tbl_tool', $data_stock);
    }

    function sum_total_purchase_price($id_purchase)
    {
        $query = $this->db->query("SELECT SUM(`total_price_purchase`) AS `total` FROM `tbl_tool_purchase_detail` WHERE `id_purchase` = '$id_purchase'");
        return $query->row();
    }




    // CATEGORIES
    function get_categories()
    {
        $this->db->select('*');
        $this->db->from('tbl_tool_categories');
        $query = $this->db->get();
        return $query;
    }

    function save_category($data)
    {
        $this->db->insert('tbl_tool_categories', $data);
    }

    function update_category($data, $id_category)
    {
        $this->db->where('id_tool_category', $id_category);
        $this->db->update('tbl_tool_categories', $data);
    }

    function delete_category($id_category)
    {
        $this->db->where('id_tool_category', $id_category);
        $this->db->delete('tbl_tool_categories');

        return true;
    }

}