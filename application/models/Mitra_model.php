<?php
class Mitra_model extends CI_Model
{
    // LAB
    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $query = $this->db->get();
        return $query;
    }

    // MITRA
    function get_partner()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->where('role_id = 7');
        $query = $this->db->get();
        return $query;
    }

    function save_partner($data)
    {
        $this->db->insert('tbl_users', $data);
    }

    function update_partner($data, $id_partner)
    {
        $this->db->where('id_user', $id_partner);
        $this->db->update('tbl_users', $data);
    }

    function delete_partner($id_partner)
    {
        $this->db->where('id_user', $id_partner);
        $this->db->delete('tbl_users');

        return true;
    }

    function delete_product_partner($id_partner)
    {
        $this->db->where('id_owner', $id_partner);
        $this->db->delete('tbl_product');

        return true;
    }

    function get_partner_product($id_lab, $id_partner)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->where('id_lab', $id_lab);
        $this->db->where('id_owner', $id_partner);
        $query = $this->db->get();
        return $query;
    }

    function save_partner_product($data)
    {
        $this->db->insert('tbl_product', $data);
    }

    function update_partner_product($id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->update('tbl_product');
    }

    function delete_partner_product($id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->delete('tbl_product');

        return true;
    }






    // FRANCHISOR
    function get_franchisor()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->where('role_id = 8');
        $query = $this->db->get();
        return $query;
    }

    function save_franchisor($data)
    {
        $this->db->insert('tbl_users', $data);
    }

    function update_franchisor($data, $id_owner)
    {
        $this->db->where('id_user', $id_owner);
        $this->db->update('tbl_users', $data);
    }

    function delete_franchisor($id_owner)
    {
        $this->db->where('id_user', $id_owner);
        $this->db->delete('tbl_users');

        return true;
    }

    function delete_product_franchisor($id_franchisor)
    {
        $this->db->where('id_owner', $id_franchisor);
        $this->db->delete('tbl_product');

        return true;
    }

    function get_franchisor_product($id_lab, $id_owner)
    {
        $this->db->select('*');
        $this->db->from('tbl_product');
        $this->db->where('id_lab', $id_lab);
        $this->db->where('id_owner', $id_owner);
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

    function save_franchisor_product($data)
    {
        $this->db->insert('tbl_product', $data);
    }

    function update_franchisor_product($id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->update('tbl_product');
    }

    function delete_franchisor_product($id_product)
    {
        $this->db->where('id_product', $id_product);
        $this->db->delete('tbl_product');

        return true;
    }
}