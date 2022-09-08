<?php
class Peralatan_model extends CI_Model
{

    // PERALATAN
    function get_lab()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_lab');
        $query = $this->db->get();
        return $query;
    }

    function get_tools($id_lab)
    {
        $this->db->select('*');
        $this->db->from('tbl_tool');
        $this->db->join('tbl_tool_condition', 'tbl_tool_condition.id_tool_condition = tbl_tool.tool_condition');
        $this->db->where('id_lab', $id_lab);
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
}
