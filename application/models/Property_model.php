<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Property_model extends CRM_Model
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
    public function get($id = '', $slug = '')
    {
        $this->db->select('property_id, property_name, property_avatar, property_content, property_category_id, property_type_id, property_location_id, property_status, property_price, property_bedroom, property_bathroom, property_acreage, property_facade, property_slug, property_created_at, property_active, property_order, category_name, category_slug, category_description, category_active, category_order, location_name,location_description,location_slug,location_active,location_order, type_name,type_slug,type_description,type_active,type_order');
        $this->db->from('property');
        $this->db->join('property_categories', 'property_categories.category_id = property.property_category_id', 'left');
        $this->db->join('property_locations', 'property_locations.location_id = property.property_location_id', 'left');
        $this->db->join('property_types', 'property_types.type_id = property.property_type_id', 'left');
        $this->db->order_by('property_order', 'asc');
        if (is_numeric($id)) {
            $this->db->where('property_id', $id);
        }
        if ($slug != '') {
            $this->db->where('property_slug', $slug);
        }
        if ($this->input->get('category_id')) {
            $this->db->where('property_category_id', $this->input->get('category_id'));
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

        $this->db->select('property_category_id');
        $this->db->where('property_id', $current_id);
        $article = $this->db->get('property')->row();

        $this->db->where('property_category_id', $article->property_category_id);
        $this->db->where('property_id !=', $current_id);
        $this->db->where('active', 1);
        $this->db->limit($total_related_articles);

        return $this->db->get('property')->result_array();
    }

    /**
     * Add new article
     * @param array $data article data
     */
    public function add_article($data)
    {
        if (isset($data['disabled'])) {
            $data['property_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['property_active'] = 1;
        }
        if (is_array($data['characteristic_id'])) {
            $characteristic_id = $data['characteristic_id'];
            unset($data['characteristic_id']);
        }
        if (is_array($data['property_image'])) {
            $property_image = $data['property_image'];
            unset($data['property_image']);
        }
        $data['property_created_at'] = date('Y-m-d H:i:s');
        $data['property_slug']        = slug_it($data['property_name']);
        $this->db->like('property_slug', $data['property_slug']);
        $slug_total = $this->db->count_all_results('property');
        if ($slug_total > 0) {
            $data['property_slug'] .= '-' . ($slug_total + 1);
        }

        $data = do_action('before_add_propertu_article', $data);

        $this->db->insert('property', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id && !empty($characteristic_id)) {
            foreach ($characteristic_id as $key => $value) {
                $this->db->insert('property_characteristic_metas', [
                    'property_id' => $insert_id,
                    'characteristic_id' => $value,
                ]);
            }
        }
        if ($insert_id && !empty($property_image)) {
            foreach ($property_image as $key => $value) {
                if ($value) {
                    $this->db->insert('property_images', [
                        'property_id' => $insert_id,
                        'image_name' => $value,
                    ]);
                }
            }
        }
        if ($insert_id) {
            logActivity('New Property Added [ArticleID: ' . $insert_id . ' Cat Id: ' . $data['category_id'] . ']');
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
            $data['property_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['property_active'] = 1;
        }
        if (is_array($data['characteristic_id'])) {
            $characteristic_id = $data['characteristic_id'];
            unset($data['characteristic_id']);
        }
        if (is_array($data['property_image'])) {
            $property_image = $data['property_image'];
            unset($data['property_image']);
        }

        $this->db->where('property_id', $id);
        $this->db->update('property', $data);
        
        $this->db->where('property_id', $id);
        $this->db->delete('property_characteristic_metas');
        if ($id && !empty($characteristic_id)) {
            foreach ($characteristic_id as $key => $value) {
                $this->db->insert('property_characteristic_metas', [
                    'property_id' => $id,
                    'characteristic_id' => $value,
                ]);
            }
        }


        $this->db->where('property_id', $id);
        $this->db->delete('property_images');
        if ($id && !empty($property_image)) {
            foreach ($property_image as $key => $value) {
                if ($value) {
                    $this->db->insert('property_images', [
                        'property_id' => $id,
                        'image_name' => $value,
                    ]);
                }
            }
        }

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
            $this->db->where('property_id', $o[0]);
            $this->db->update('property', [
                'property_order' => $o[1],
                'property_category_id'  => $data['category_id'],
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
        $this->db->where('property_id', $id);
        $this->db->update('property', [
            'property_active' => $status,
        ]);
        logActivity('Article Status Changed [ArticleID: ' . $id . ' Status: ' . $status . ']');
    }

    public function update_groups_order()
    {
        $data = $this->input->post();
        foreach ($data['category_order'] as $group) {
            $this->db->where('category_id', $group[0]);
            $this->db->update('property_categories', [
                'category_order' => $group[1],
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
        $this->db->where('property_id', $id);
        $this->db->delete('property');
        if ($this->db->affected_rows() > 0) {
            $this->db->where('rel_type', 'property');
            $this->db->where('rel_id', $id);
            $this->db->delete('tblviewstracking');

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
    //get_kbg
    public function get_cat($id = '', $active = '')
    {
        if (is_numeric($active)) {
            $this->db->where('category_active', $active);
        }
        if (is_numeric($id)) {
            $this->db->where('category_id', $id);

            return $this->db->get('property_categories')->row();
        }
        $this->db->order_by('category_order', 'asc');

        return $this->db->get('property_categories')->result_array();
    }

    /**
     * Add new knowledge base group/folder
     * @param array $data group data
     * @return boolean
     */
    public function add_cat($data)
    {
        if (isset($data['disabled'])) {
            $data['category_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['category_active'] = 1;
        }

        $data['category_slug']        = slug_it($data['category_name']);
        $this->db->like('category_slug', $data['category_slug']);
        $slug_total = $this->db->count_all_results('property_categories');
        if ($slug_total > 0) {
            $data['category_slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('property_categories', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Article Group Added [CatID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    /**
     * Get knowledge base group by id
     * @param  mixed $id groupid
     * @return object
     */
    public function get_cat_by_id($id)
    {
        $this->db->where('category_id', $id);

        return $this->db->get('property_categories')->row();
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
            $data['category_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['category_active'] = 1;
        }
        $this->db->where('category_id', $id);
        $this->db->update('property_categories', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Article Group Updated [CatID: ' . $id . ']');

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
        $this->db->where('category_id', $id);
        $this->db->update('property_categories', [
            'category_active' => $status,
        ]);
        logActivity('Article Status Changed [CatID: ' . $id . ' Status: ' . $status . ']');
    }

    /**
     * Delete knowledge base article
     * @param  mixed $id groupid
     * @return boolean
     */
    public function delete_group($id)
    {
        $current = $this->get_cat_by_id($id);
        // Check if group already is using
        if (is_reference_in_table('property_category_id', 'property', $id)) {
            return [
                'referenced' => true,
            ];
        }
        $this->db->where('category_id', $id);
        $this->db->delete('property_categories');
        if ($this->db->affected_rows() > 0) {
            logActivity('Category Group Deleted');

            return true;
        }

        return false;
    }

    /** Type **/
    public function get_type($id = '', $active = '')
    {
        $this->db->select('category_id, category_name, category_slug, category_description, category_active, category_order, type_id, type_name,type_slug,type_category_id,type_description,type_active,type_order');
        $this->db->from('property_types');
        $this->db->join('property_categories', 'property_categories.category_id = property_types.type_category_id', 'left');
        if (is_numeric($active)) {
            $this->db->where('type_active', $active);
        }
        if (is_numeric($id)) {
            $this->db->where('type_id', $id);

            return $this->db->get()->row();
        }
        $this->db->order_by('type_order', 'asc');

        return $this->db->get()->result_array();
    }

    public function add_type($data)
    {
        if (isset($data['disabled'])) {
            $data['type_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['type_active'] = 1;
        }

        $data['type_slug']        = slug_it($data['type_name']);
        $this->db->like('type_slug', $data['type_slug']);
        $slug_total = $this->db->count_all_results('property_types');
        if ($slug_total > 0) {
            $data['type_slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('property_types', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Type [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function update_type($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['type_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['type_active'] = 1;
        }
        $this->db->where('type_id', $id);
        $this->db->update('property_types', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Updated Type [ID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function change_type_status($id, $status)
    {
        $this->db->where('type_id', $id);
        $this->db->update('property_types', [
            'type_active' => $status,
        ]);
        logActivity('Type Status Changed [ID: ' . $id . ' Status: ' . $status . ']');
    }

    public function delete_type($id)
    {
        $current = $this->get_type_by_id($id);
        if (is_reference_in_table('property_type_id', 'property', $id)) {
            return [
                'referenced' => true,
            ];
        }
        $this->db->where('type_id', $id);
        $this->db->delete('property_types');
        if ($this->db->affected_rows() > 0) {
            logActivity('Type Deleted');

            return true;
        }

        return false;
    }

    public function get_type_by_id($id)
    {
        $this->db->where('type_id', $id);

        return $this->db->get('property_types')->row();
    }

    /** Location **/
    public function get_location($id = '', $active = '')
    {
        $this->db->select('location_id, location_name,location_slug,location_description,location_active,location_order');
        $this->db->from('property_locations');
        if (is_numeric($active)) {
            $this->db->where('location_active', $active);
        }
        if (is_numeric($id)) {
            $this->db->where('location_id', $id);

            return $this->db->get()->row();
        }
        $this->db->order_by('location_order', 'asc');

        return $this->db->get()->result_array();
    }

    public function add_location($data)
    {
        if (isset($data['disabled'])) {
            $data['location_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['location_active'] = 1;
        }

        $data['location_slug']        = slug_it($data['location_name']);
        $this->db->like('location_slug', $data['location_slug']);
        $slug_total = $this->db->count_all_results('property_locations');
        if ($slug_total > 0) {
            $data['location_slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('property_locations', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New location [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function update_location($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['location_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['location_active'] = 1;
        }
        $this->db->where('location_id', $id);
        $this->db->update('property_locations', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Updated location [ID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function change_location_status($id, $status)
    {
        $this->db->where('location_id', $id);
        $this->db->update('property_locations', [
            'location_active' => $status,
        ]);
        logActivity('Location Status Changed [ID: ' . $id . ' Status: ' . $status . ']');
    }

    public function delete_location($id)
    {
        $current = $this->get_location_by_id($id);
        if (is_reference_in_table('property_location_id', 'property', $id)) {
            return [
                'referenced' => true,
            ];
        }
        $this->db->where('location_id', $id);
        $this->db->delete('property_locations');
        if ($this->db->affected_rows() > 0) {
            logActivity('Location Deleted');

            return true;
        }

        return false;
    }

    public function get_location_by_id($id)
    {
        $this->db->where('location_id', $id);

        return $this->db->get('property_locations')->row();
    }

    /** Characteristic **/
    public function get_characteristic($id = '', $active = '')
    {
        $this->db->select('characteristic_id, characteristic_name,characteristic_slug,characteristic_description,characteristic_active,characteristic_order');
        $this->db->from('property_characteristics');
        if (is_numeric($active)) {
            $this->db->where('characteristic_active', $active);
        }
        if (is_numeric($id)) {
            $this->db->where('characteristic_id', $id);

            return $this->db->get()->row();
        }
        $this->db->order_by('characteristic_order', 'asc');

        return $this->db->get()->result_array();
    }

    public function add_characteristic($data)
    {
        if (isset($data['disabled'])) {
            $data['characteristic_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['characteristic_active'] = 1;
        }

        $data['characteristic_slug']        = slug_it($data['characteristic_name']);
        $this->db->like('characteristic_slug', $data['characteristic_slug']);
        $slug_total = $this->db->count_all_results('property_characteristics');
        if ($slug_total > 0) {
            $data['characteristic_slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('property_characteristics', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New characteristic [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function update_characteristic($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['characteristic_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['characteristic_active'] = 1;
        }
        $this->db->where('characteristic_id', $id);
        $this->db->update('property_characteristics', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Updated characteristic [ID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function change_characteristic_status($id, $status)
    {
        $this->db->where('characteristic_id', $id);
        $this->db->update('property_characteristics', [
            'characteristic_active' => $status,
        ]);
        logActivity('Characteristic Status Changed [ID: ' . $id . ' Status: ' . $status . ']');
    }

    public function delete_characteristic($id)
    {
        $this->db->where('characteristic_id', $id);
        $this->db->delete('property_characteristics');
        if ($this->db->affected_rows() > 0) {
            logActivity('Characteristic Deleted');

            return true;
        }

        return false;
    }

    public function get_characteristic_by_id($id)
    {
        $this->db->where('characteristic_id', $id);

        return $this->db->get('property_characteristics')->row();
    }
}
