<?php
class Admin_model extends CI_Model
{
    // MENU
    function get_menus()
    {
        $this->db->select('*');
        $this->db->from('tbl_user_menu');
        $query = $this->db->get();
        return $query;
    }

    function save_menu($data)
    {
        $this->db->insert('tbl_user_menu', $data);
    }

    function update_menu($data, $id_user_menu)
    {
        $this->db->where('id_user_menu', $id_user_menu);
        $this->db->update('tbl_user_menu', $data);
    }

    function delete_menu($id_user_menu)
    {
        $this->db->where('id_user_menu', $id_user_menu);
        $this->db->delete('tbl_user_menu');

        return true;
    }

    // SUB MENU
    function get_submenus()
    {
        $this->db->select('*');
        $this->db->from('tbl_user_submenu');
        $this->db->join('tbl_user_menu', 'tbl_user_menu.id_user_menu = tbl_user_submenu.menu_id');
        $query = $this->db->get();
        return $query;
    }

    function save_submenu($data)
    {
        $this->db->insert('tbl_user_submenu', $data);
    }

    function update_submenu($data, $id_user_submenu)
    {
        $this->db->where('id_user_submenu', $id_user_submenu);
        $this->db->update('tbl_user_submenu', $data);
    }

    function delete_submenu($id_user_submenu)
    {
        $this->db->where('id_user_submenu', $id_user_submenu);
        $this->db->delete('tbl_user_submenu');

        return true;
    }

    // ROLE
    function get_role()
    {
        $this->db->select('*');
        $this->db->from('tbl_user_role');
        $query = $this->db->get();
        return $query;
    }

    function get_role_by_id($role_id = NULL)
    {
        // $this->db->select('*');
        // $this->db->from('tbl_user_role');
        // $this->db->where('id_role', $role_id);
        // $query = $this->db->get();
        // return $query;

        $query = $this->db->get_where('tbl_user_role', ['id_role' => $role_id])->row();
        return $query;
    }

    function save_role($data)
    {
        $this->db->insert('tbl_user_role', $data);
    }

    function update_role($data, $id_role)
    {
        $this->db->where('id_role', $id_role);
        $this->db->update('tbl_user_role', $data);
    }

    function delete_role($id_role)
    {
        $this->db->where('id_role', $id_role);
        $this->db->delete('tbl_user_role');

        return true;
    }

    // LAB SPWE
    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $query = $this->db->get();
        return $query;
    }
}
