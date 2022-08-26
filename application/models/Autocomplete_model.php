<?php
class Autocomplete_model extends CI_Model
{

    function get_product()
    {
        $this->db->select('*');
        $this->db->from('tbl_product');

        $query = $this->db->get();
        return $query;
    }

    function ajax_produk($id)
    {
        $hasil = $this->db->query("SELECT * FROM tbl_product WHERE id_product = '$id'");
        // return $hasil->result();
        return $hasil->row();
    }
}
