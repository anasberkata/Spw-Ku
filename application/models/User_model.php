<?php
class User_model extends CI_Model
{

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
}
