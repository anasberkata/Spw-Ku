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

    function ajax_barcode($barcode)
    {
        $hasil = $this->db->query("SELECT * FROM tbl_product WHERE code = '$barcode'");
        // return $hasil->result();
        return $hasil->row();
    }

    function ajax_name_product($product)
    {
        $hasil = $this->db->query("SELECT * FROM tbl_product WHERE product = '$product'");
        // return $hasil->result();
        return $hasil->row();
    }
}
