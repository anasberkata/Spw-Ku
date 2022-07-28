<?php
class Pengguna_model extends CI_Model
{

    function get_users()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->join('tbl_user_role', 'tbl_user_role.id_role = tbl_users.role_id');
        $this->db->where_not_in('id_user', 1);
        $this->db->order_by('role_id', 'ASC');
        $query = $this->db->get();
        return $query;
    }

    function get_users_not_admin()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->join('tbl_user_role', 'tbl_user_role.id_role = tbl_users.role_id');
        $this->db->where_not_in('id_user', 1);
        $this->db->where_not_in('id_user', 3);
        $query = $this->db->get();
        return $query;
    }

    function get_user_by_id($id_user)
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $this->db->join('tbl_user_role', 'tbl_user_role.id_role = tbl_users.role_id');
        $this->db->where('id_user', $id_user);
        $query = $this->db->get();
        return $query;
    }

    function get_roles()
    {
        $this->db->select('*');
        $this->db->from('tbl_user_role');
        $query = $this->db->get();
        return $query;
    }

    function save_user($data)
    {
        $this->db->insert('tbl_users', $data);
    }

    function update_user($id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->update('tbl_users');
    }

    function delete_user($id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->delete('tbl_users');

        return true;
    }

    // PROFILE
    function update_profile($id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->update('tbl_users');
    }

    function update_profile_password($id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->update('tbl_users');
    }
}
