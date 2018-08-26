<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Contact_model extends CRM_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function get_contact($type = '', $id = '')
    {
        if (is_numeric($id)) {
            $this->db->where('id', $id);

            return $this->db->get('contacts')->row();
        }
        if (is_numeric($type)) {
            $this->db->where('type', $type);
        }
        $this->db->order_by('id', 'desc');

        return $this->db->get('contacts')->result_array();
    }

    public function add_contact($data)
    {
        $this->db->insert('contacts', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Contact Added [ContactID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function update_contact($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update('contacts', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Contact Updated [ContactID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function delete_contact($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('contacts');
        if ($this->db->affected_rows() > 0) {
            logActivity('Contact Deleted');

            return true;
        }

        return false;
    }
}
