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

    // ROLE
    function get_role()
    {
        $this->db->select('*');
        $this->db->from('tbl_user_role');
        $query = $this->db->get();
        return $query;
    }
}
