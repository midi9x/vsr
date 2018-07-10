<?php

defined('BASEPATH') or exit('No direct script access allowed');
class News_model extends CRM_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Get article by id
     * @param  string $id   article ID
     * @param  string $slug if search by slug
     * @return mixed       if ID or slug passed return object else array
     */
    public function get($id = '', $slug = '', $group_slug = '')
    {
        $this->db->select('slug,articleid, articlegroup, subject,news.description,news.active as active_article, avatar, seo_title, seo_description, newsgroups.active as active_group,name as group_name');
        $this->db->from('news');
        $this->db->join('newsgroups', 'newsgroups.groupid = news.articlegroup', 'left');
        $this->db->order_by('article_order', 'asc');
        if (is_numeric($id)) {
            $this->db->where('articleid', $id);
        }
        if ($slug != '') {
            $this->db->where('slug', $slug);
        }
        if ($group_slug != '') {
            $this->db->where('group_slug', $group_slug);
        }
        if ($this->input->get('groupid')) {
            $this->db->where('articlegroup', $this->input->get('groupid'));
        }
        if (is_numeric($id) || $slug != '') {
            return $this->db->get()->row();
        }

        return $this->db->get()->result_array();
    }

    /**
     * Get related artices based on article id
     * @param  mixed $current_id current article id
     * @return array
     */
    public function get_related_articles($current_id, $customers = true)
    {
        $total_related_articles = 5;
        $total_related_articles = do_action('total_related_articles', $total_related_articles);

        $this->db->select('articlegroup');
        $this->db->where('articleid', $current_id);
        $article = $this->db->get('news')->row();

        $this->db->where('articlegroup', $article->articlegroup);
        $this->db->where('articleid !=', $current_id);
        $this->db->where('active', 1);
        $this->db->limit($total_related_articles);

        return $this->db->get('news')->result_array();
    }

    /**
     * Add new article
     * @param array $data article data
     */
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
        $slug_total = $this->db->count_all_results('news');
        if ($slug_total > 0) {
            $data['slug'] .= '-' . ($slug_total + 1);
        }

        $data = do_action('before_add_kb_article', $data);

        $this->db->insert('news', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Article Added [ArticleID: ' . $insert_id . ' GroupID: ' . $data['articlegroup'] . ']');
        }

        return $insert_id;
    }

    /**
     * Update article
     * @param  array $data article data
     * @param  mixed $id   articleid
     * @return boolean
     */
    public function update_article($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['active'] = 0;
            unset($data['disabled']);
        } else {
            $data['active'] = 1;
        }
        $this->db->where('articleid', $id);
        $this->db->update('news', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Article Updated [ArticleID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function update_kan_ban($data)
    {
        $affectedRows = 0;
        foreach ($data['order'] as $o) {
            $this->db->where('articleid', $o[0]);
            $this->db->update('news', [
                'article_order' => $o[1],
                'articlegroup'  => $data['groupid'],
            ]);
            if ($this->db->affected_rows() > 0) {
                $affectedRows++;
            }
        }
        if ($affectedRows > 0) {
            return true;
        }

        return false;
    }

    /**
     * Change article status
     * @param  mixed $id     article id
     * @param  boolean $status is active or not
     */
    public function change_article_status($id, $status)
    {
        $this->db->where('articleid', $id);
        $this->db->update('news', [
            'active' => $status,
        ]);
        logActivity('Article Status Changed [ArticleID: ' . $id . ' Status: ' . $status . ']');
    }

    public function update_groups_order()
    {
        $data = $this->input->post();
        foreach ($data['order'] as $group) {
            $this->db->where('groupid', $group[0]);
            $this->db->update('newsgroups', [
                'group_order' => $group[1],
            ]);
        }
    }

    /**
     * Delete article from database and all article connections
     * @param  mixed $id article ID
     * @return boolean
     */
    public function delete_article($id)
    {
        $this->db->where('articleid', $id);
        $this->db->delete('news');
        if ($this->db->affected_rows() > 0) {
        
            // $this->db->where('rel_type', 'news_article');
            // $this->db->where('rel_id', $id);
            // $this->db->delete('tblviewstracking');

            logActivity('Article Deleted [ArticleID: ' . $id . ']');

            return true;
        }

        return false;
    }

    /**
     * Get all KGB (Knowledge base groups)
     * @param  mixed $id Optional - KB Group
     * @param  mixed $active Optional - actve groups or not
     * @return mixed      array if not id passed else object
     */
    public function get_kbg($id = '', $active = '')
    {
        if (is_numeric($active)) {
            $this->db->where('active', $active);
        }
        if (is_numeric($id)) {
            $this->db->where('groupid', $id);

            return $this->db->get('newsgroups')->row();
        }
        $this->db->order_by('group_order', 'asc');

        return $this->db->get('newsgroups')->result_array();
    }

    /**
     * Add new knowledge base group/folder
     * @param array $data group data
     * @return boolean
     */
    public function add_group($data)
    {
        if (isset($data['disabled'])) {
            $data['active'] = 0;
            unset($data['disabled']);
        } else {
            $data['active'] = 1;
        }

        $data['group_slug']        = slug_it($data['name']);
        $this->db->like('group_slug', $data['group_slug']);
        $slug_total = $this->db->count_all_results('newsgroups');
        if ($slug_total > 0) {
            $data['group_slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('newsgroups', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Article Group Added [GroupID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    /**
     * Get knowledge base group by id
     * @param  mixed $id groupid
     * @return object
     */
    public function get_kbg_by_id($id)
    {
        $this->db->where('groupid', $id);

        return $this->db->get('newsgroups')->row();
    }

    /**
     * Update knowledge base group
     * @param  array $data group data
     * @param  mixed $id   groupid
     * @return boolean
     */
    public function update_group($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['active'] = 0;
            unset($data['disabled']);
        } else {
            $data['active'] = 1;
        }
        $this->db->where('groupid', $id);
        $this->db->update('newsgroups', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Article Group Updated [GroupID: ' . $id . ']');

            return true;
        }

        return false;
    }

    /**
     * Change group status
     * @param  mixed $id     groupid id
     * @param  boolean $status is active or not
     */
    public function change_group_status($id, $status)
    {
        $this->db->where('groupid', $id);
        $this->db->update('newsgroups', [
            'active' => $status,
        ]);
        logActivity('Article Status Changed [GroupID: ' . $id . ' Status: ' . $status . ']');
    }

    public function change_group_color($data)
    {
        $this->db->where('groupid', $data['group_id']);
        $this->db->update('newsgroups', [
            'color' => $data['color'],
        ]);
    }

    /**
     * Delete knowledge base article
     * @param  mixed $id groupid
     * @return boolean
     */
    public function delete_group($id)
    {
        $current = $this->get_kbg_by_id($id);
        // Check if group already is using
        if (is_reference_in_table('articlegroup', 'news', $id)) {
            return [
                'referenced' => true,
            ];
        }
        $this->db->where('groupid', $id);
        $this->db->delete('newsgroups');
        if ($this->db->affected_rows() > 0) {
            logActivity('Knowledge Base Group Deleted');

            return true;
        }

        return false;
    }
}
