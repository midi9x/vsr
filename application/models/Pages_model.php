<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Pages_model extends CRM_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function get($id = '', $slug = '')
    {
        $this->db->select('articleid, subject, description, slug, avatar, seo_title, seo_description, active as active_article, datecreated');
        $this->db->from('pages');
        if (is_numeric($id)) {
            $this->db->where('articleid', $id);
        }
        if ($slug != '') {
            $this->db->where('slug', $slug);
        }
        if (is_numeric($id) || $slug != '') {
            return $this->db->get()->row();
        }
        $this->db->order_by('articleid', 'desc');
        return $this->db->get()->result_array();
    }

    public function add_article($data)
    {
        if (isset($data['disabled'])) {
            $data['active'] = 0;
            unset($data['disabled']);
        } else {
            $data['active'] = 1;
        }
        $data['datecreated'] = date('Y-m-d H:i:s');
        $data['slug']        = slug_it($data['subject']);
        $this->db->like('slug', $data['slug']);
        $slug_total = $this->db->count_all_results('pages');
        if ($slug_total > 0) {
            $data['slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('pages', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Page Added [ArticleID: ' . $insert_id);
        }

        return $insert_id;
    }

    public function update_article($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['active'] = 0;
            unset($data['disabled']);
        } else {
            $data['active'] = 1;
        }
        $this->db->where('articleid', $id);
        $this->db->update('pages', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Page Updated [ArticleID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function delete_article($id)
    {
        $this->db->where('articleid', $id);
        $this->db->delete('pages');
        if ($this->db->affected_rows() > 0) {
            logActivity('Page Deleted [ArticleID: ' . $id . ']');

            return true;
        }

        return false;
    }
}
