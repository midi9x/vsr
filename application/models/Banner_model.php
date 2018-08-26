<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Banner_model extends CRM_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function get_banner($name = '')
    {
        if ($name) {
            $this->db->where('name', $name);

            return $this->db->get('banners')->row();
        }
        $this->db->group_by('name');

        return $this->db->get('banners')->result_array();
    }


    public function update_banner($data, $name)
    {
        $this->db->where('name', $name);
        $this->db->update('banners', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Banner Updated [Banner: ' . $name . ']');

            return true;
        }

        return false;
    }
}
