<?php
class Franchisor_model extends CI_Model
{
    // FRANCHISOR
    function get_franchisor()
    {
        $this->db->select('*');
        // $this->db->from('tbl_franchisor');
        $this->db->from('tbl_users');
        $this->db->where('role_id = 7');
        $query = $this->db->get();
        return $query;
    }

    function save_franchisor($data)
    {
        // $this->db->insert('tbl_franchisor', $data);
        $this->db->insert('tbl_users', $data);
    }

    function update_franchisor($data, $id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->update('tbl_users', $data);
    }

    function delete_franchisor($id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->delete('tbl_users');

        return true;
    }

    function get_franchisor_product($id_lab, $id_user)
    {
        $this->db->select('*');
        // $this->db->from('tbl_franchisor');
        $this->db->from('tbl_product');
        $this->db->where('id_lab', $id_lab);
        $this->db->where('id_owner', $id_user);
        $query = $this->db->get();
        return $query;
    }

    function get_franchisor_products_by_id($id_product = NULL)
    {
        // $this->db->select('*');
        // $this->db->from('tbl_product');
        // $this->db->where('id_product', $id_product);
        // $query = $this->db->row();
        // return $query;

        $query = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row();
        return $query;
    }

    function save_product($data)
    {
        $this->db->insert('tbl_product', $data);
    }

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
}
