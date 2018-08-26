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
    public function get($id = '', $slug = '', $location = '',$category = '', $type = '', $q='', $sort = '', $limit = '', $start = '', $town = '', $theloai = '', $price = '')
    {
        if ($limit > 0 && $start >= 0) {
            $this->db->limit($limit, $start);
        }
        $this->db->select('
            property_id,
            property_theloai,
            property_name,
            property_avatar,
            property_content,
            property_category_id,
            property_type_id,
            property_location_id,
            property_town_id,
            property_status,
            property_price,
            property_bedroom,
            property_bathroom,
            property_acreage,
            property_facade,
            property_slug,
            property_seo_title,
            property_seo_description,
            property_created_at,
            property_active,
            property_order,
            property_stick,
            category_name,
            category_slug,
            category_description,
            category_active,
            category_order,
            location_name,
            location_description,
            location_slug,
            location_active,
            location_order,
            type_name,
            type_slug,
            type_description,
            type_active,
            type_order,
            location_seo_title,
            location_seo_description,
            category_seo_title,
            category_seo_description,
            type_seo_title,
            type_seo_description,
            town_name,
            town_slug,
            town_description,
            town_seo_title,
            town_seo_description,
            property_socan,
            property_solo,
            property_quyhoach,
            vitri_google,
            property_matbang,
            property_canhonen,
            property_tienich
        ');
        $this->db->from('property');
        $this->db->join('property_categories', 'property_categories.category_id = property.property_category_id', 'left');
        $this->db->join('property_locations', 'property_locations.location_id = property.property_location_id', 'left');
        $this->db->join('property_types', 'property_types.type_id = property.property_type_id', 'left');
        $this->db->join('property_towns', 'property_towns.town_id = property.property_town_id', 'left');
        if ($this->router->directory  != 'admin/') {
            $this->db->where('property_active', 1);
            $this->db->where('property_categories.category_active', 1);
            $this->db->where('property_locations.location_active', 1);
            $this->db->where('property_types.type_active', 1);
            $this->db->where('property_towns.town_active', 1);
        }
        if (is_numeric($id)) {
            $this->db->where('property_id', $id);
        }
        if ($location != '') {
            if (is_numeric($location)) {
                $this->db->where('property_location_id', $location);
            } else {
                $this->db->where('location_slug', $location);
            }
        }
        if ($category != '') {
            if (is_numeric($category)) {
                $this->db->where('property_category_id', $category);
            } else {
                $this->db->where('category_slug', $category);
            }
        }
        if ($type != '') {
            if (is_numeric($type)) {
                $this->db->where('property_type_id', $type);
            } else {
                $this->db->where('type_slug', $type);
            }
        }
        if ($town != '') {
            if (is_numeric($town)) {
                $this->db->where('property_town_id', $town);
            } else {
                $this->db->where('town_slug', $town);
            }
        }
        if ($q != '') {
            $this->db->like('property_name', $q);
            $this->db->or_like('property_content', $q);
        }
        if ($slug != '') {
            $this->db->where('property_slug', $slug);
        }

        if (isset($_GET['from'])) {
            $this->db->where('property_price >=', $_GET['from']);
        }
        if (isset($_GET['to'])) {
            $this->db->where('property_price <=', $_GET['to']);
        }

        $this->db->order_by('property_stick', 'desc');
        $this->db->order_by('property_id', 'desc');

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
        $total_related_articles = 3;
        $this->db->select('property_category_id');
        $this->db->where('property_id', $current_id);
        $article = $this->db->get('property')->row();

        $this->db->select('
            property_id,
            property_theloai,
            property_name,
            property_avatar,
            property_content,
            property_category_id,
            property_type_id,
            property_location_id,
            property_town_id,
            property_status,
            property_price,
            property_bedroom,
            property_bathroom,
            property_acreage,
            property_facade,
            property_slug,
            property_seo_title,
            property_seo_description,
            property_created_at,
            property_active,
            property_order,
            property_stick,
            location_name,
            town_name,
            property_socan,
            property_solo,
            property_quyhoach,
            vitri_google,
            property_matbang,
            property_canhonen,
            property_tienich,
            author
        ');
        $this->db->from('property');
        $this->db->join('property_locations', 'property_locations.location_id = property.property_location_id', 'left');
        $this->db->join('property_towns', 'property_towns.town_id = property.property_town_id', 'left');
        $this->db->where('property_category_id', $article->property_category_id);
        $this->db->where('property_id !=', $current_id);
        $this->db->where('property_active', 1);
        $this->db->limit($total_related_articles);
        $this->db->order_by('property_stick', 'desc');
        $this->db->order_by('property_id', 'desc');
        return $this->db->get()->result_array();
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
        if (isset($data['stick'])) {
            $data['property_stick'] = 1;
            unset($data['stick']);
        } else {
            $data['property_stick'] = 0;
        }
        if (isset($data['characteristic_id']) && is_array($data['characteristic_id'])) {
            $characteristic_id = $data['characteristic_id'];
            unset($data['characteristic_id']);
        }
        if (isset($data['property_image']) && is_array($data['property_image'])) {
            $property_image = $data['property_image'];
            unset($data['property_image']);
        }
        $data['author'] = get_staff_full_name(get_staff_user_id());
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
        if (isset($data['stick'])) {
            $data['property_stick'] = 1;
            unset($data['stick']);
        } else {
            $data['property_stick'] = 0;
        }
        if (isset($data['characteristic_id']) && is_array($data['characteristic_id'])) {
            $characteristic_id = $data['characteristic_id'];
            unset($data['characteristic_id']);
        }
        if (isset($data['property_image']) && is_array($data['property_image'])) {
            $property_image = $data['property_image'];
            unset($data['property_image']);
        }
        $data['author'] = get_staff_full_name(get_staff_user_id());
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
        $this->db->select('property_types.*, category_name');
        $this->db->join('property_categories', 'property_categories.category_id = property_types.type_category_id', 'inner');
        $this->db->from('property_types');
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

    public function get_contacts($id = '')
    {
        $this->db->select('property_contacts.*, property_name');
        $this->db->from('property_contacts');
        $this->db->join('property', 'property.property_id = property_contacts.property_id', 'inner');
        if (is_numeric($id)) {
            $this->db->where('contact_id', $id);

            return $this->db->get()->row();
        }
        $this->db->order_by('contact_id', 'desc');

        return $this->db->get()->result_array();
    }

    public function update_contact($data, $id)
    {
        $this->db->where('contact_id', $id);
        $this->db->update('property_contacts', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Updated contact [ID: ' . $id . ']');

            return true;
        }

        return false;
    }


    public function delete_contact($id)
    {
        $this->db->where('contact_id', $id);
        $this->db->delete('property_contacts');
        if ($this->db->affected_rows() > 0) {
            logActivity('Contact Deleted');

            return true;
        }

        return false;
    }

    public function get_characteristic_by_property_id($property_id = '')
    {
        $this->db->from('property_characteristic_metas');
        $this->db->join('property_characteristics', 'property_characteristics.characteristic_id = property_characteristic_metas.characteristic_id', 'inner');
        $this->db->where('property_id', $property_id);
        $this->db->order_by('characteristic_order', 'asc');

        return $this->db->get()->result_array();
    }

    public function get_image_by_property_id($property_id = '')
    {
        $this->db->from('property_images');
        $this->db->where('property_id', $property_id);
        $this->db->order_by('id', 'asc');

        return $this->db->get()->result_array();
    }

    public function add_contact($data)
    {
        $this->db->insert('property_contacts', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New contact [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function add_wishlist($property_id)
    {
        if (!is_client_logged_in()) {
            return false;
        }
        $data = [
            'property_id' => $property_id,
            'user_id' => get_client_user_id(),
            'created_at' => date('Y-m-d H:i:s')
        ];
        $this->db->insert('wishlists', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New wishlist [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function get_wishlist($property_id)
    {
        if (!is_client_logged_in()) {
            return false;
        }

        $this->db->where('property_id', $property_id);
        $this->db->where('user_id', get_client_user_id());
        $this->db->from('wishlists');

        return $this->db->get()->row();
    }

    /** Type **/
    public function get_town($id = '', $active = '')
    {
        $this->db->select('property_towns.*, location_name');
        $this->db->join('property_locations', 'property_locations.location_id = property_towns.town_location_id', 'inner');
        $this->db->from('property_towns');
        if (is_numeric($active)) {
            $this->db->where('town_active', $active);
        }
        if (is_numeric($id)) {
            $this->db->where('town_id', $id);

            return $this->db->get()->row();
        }
        $this->db->order_by('town_order', 'asc');

        return $this->db->get()->result_array();
    }

    public function add_town($data)
    {
        if (isset($data['disabled'])) {
            $data['town_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['town_active'] = 1;
        }

        $data['town_slug']        = slug_it($data['town_name']);
        $this->db->like('town_slug', $data['town_slug']);
        $slug_total = $this->db->count_all_results('property_towns');
        if ($slug_total > 0) {
            $data['town_slug'] .= '-' . ($slug_total + 1);
        }

        $this->db->insert('property_towns', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New town [ID: ' . $insert_id . ']');

            return $insert_id;
        }

        return false;
    }

    public function update_town($data, $id)
    {
        if (isset($data['disabled'])) {
            $data['town_active'] = 0;
            unset($data['disabled']);
        } else {
            $data['town_active'] = 1;
        }
        $this->db->where('town_id', $id);
        $this->db->update('property_towns', $data);
        if ($this->db->affected_rows() > 0) {
            logActivity('Updated town [ID: ' . $id . ']');

            return true;
        }

        return false;
    }

    public function change_town_status($id, $status)
    {
        $this->db->where('town_id', $id);
        $this->db->update('property_towns', [
            'town_active' => $status,
        ]);
        logActivity('Town Status Changed [ID: ' . $id . ' Status: ' . $status . ']');
    }

    public function delete_town($id)
    {
        $current = $this->get_town_by_id($id);
        if (is_reference_in_table('property_town_id', 'property', $id)) {
            return [
                'referenced' => true,
            ];
        }
        $this->db->where('town_id', $id);
        $this->db->delete('property_towns');
        if ($this->db->affected_rows() > 0) {
            logActivity('town Deleted');

            return true;
        }

        return false;
    }

    public function get_town_by_id($id)
    {
        $this->db->where('town_id', $id);

        return $this->db->get('property_towns')->row();
    }

    public function get_detail($slug = '')
    {
        $this->db->select('
            property_id,
            property_theloai,
            property_name,
            property_avatar,
            property_content,
            property_category_id,
            property_type_id,
            property_location_id,
            property_town_id,
            property_status,
            property_price,
            property_bedroom,
            property_bathroom,
            property_acreage,
            property_facade,
            property_slug,
            property_seo_title,
            property_seo_description,
            property_created_at,
            property_active,
            property_order,
            property_stick,
            category_name,
            category_slug,
            category_description,
            category_active,
            category_order,
            location_name,
            location_description,
            location_slug,
            location_active,
            location_order,
            type_name,
            type_slug,
            type_description,
            type_active,
            type_order,
            location_seo_title,
            location_seo_description,
            category_seo_title,
            category_seo_description,
            type_seo_title,
            type_seo_description,
            town_name,
            town_slug,
            town_description,
            town_seo_title,
            town_seo_description,
            property_socan,
            property_solo,
            property_quyhoach,
            vitri_google,
            property_matbang,
            property_canhonen,
            property_tienich,
            author
        ');
        $this->db->from('property');
        $this->db->join('property_categories', 'property_categories.category_id = property.property_category_id', 'left');
        $this->db->join('property_locations', 'property_locations.location_id = property.property_location_id', 'left');
        $this->db->join('property_types', 'property_types.type_id = property.property_type_id', 'left');
        $this->db->join('property_towns', 'property_towns.town_id = property.property_town_id', 'left');
        $this->db->where('property_slug', $slug);
        if ($this->router->directory  != 'admin/') {
            $this->db->where('property_active', 1);
            $this->db->where('property_categories.category_active', 1);
            $this->db->where('property_locations.location_active', 1);
            $this->db->where('property_types.type_active', 1);
            $this->db->where('property_towns.town_active', 1);
        }
        return $this->db->get()->row();
    }

    public function get_list(
        $theloai = '',
        $category = '',
        $type = '',
        $location = '',
        $town = '',
        $acreage = '',
        $price = '',
        $q='',
        $limit = '',
        $start = '') {
        $this->db->select('
            property_id,
            property_theloai,
            property_name,
            property_avatar,
            property_content,
            property_category_id,
            property_type_id,
            property_location_id,
            property_town_id,
            property_status,
            property_price,
            property_bedroom,
            property_bathroom,
            property_acreage,
            property_facade,
            property_slug,
            property_seo_title,
            property_seo_description,
            property_created_at,
            property_active,
            property_order,
            property_stick,
            category_name,
            category_slug,
            category_description,
            category_active,
            category_order,
            location_name,
            location_description,
            location_slug,
            location_active,
            location_order,
            type_name,
            type_slug,
            type_description,
            type_active,
            type_order,
            location_seo_title,
            location_seo_description,
            category_seo_title,
            category_seo_description,
            type_seo_title,
            type_seo_description,
            town_name,
            town_slug,
            town_description,
            town_seo_title,
            town_seo_description,
            property_socan,
            property_solo,
            property_quyhoach,
            vitri_google,
            property_matbang,
            property_canhonen,
            property_tienich,
            author
        ');
        $this->db->from('property');
        $this->db->join('property_categories', 'property_categories.category_id = property.property_category_id', 'left');
        $this->db->join('property_locations', 'property_locations.location_id = property.property_location_id', 'left');
        $this->db->join('property_types', 'property_types.type_id = property.property_type_id', 'left');
        $this->db->join('property_towns', 'property_towns.town_id = property.property_town_id', 'left');
        if ($this->router->directory  != 'admin/') {
            $this->db->where('property_active', 1);
            $this->db->where('property_categories.category_active', 1);
            $this->db->where('property_locations.location_active', 1);
            $this->db->where('property_types.type_active', 1);
            $this->db->where('property_towns.town_active', 1);
        }
        if ($theloai != '') {
            $this->db->where('property_theloai', $theloai);
        }
        if ($location != '') {
            if (is_numeric($location)) {
                $this->db->where('property_location_id', $location);
            } else {
                $this->db->where('location_slug', $location);
            }
        }
        if ($category != '') {
            if (is_numeric($category)) {
                $this->db->where('property_category_id', $category);
            } else {
                $this->db->where('category_slug', $category);
            }
        }
        if ($type != '') {
            if (is_numeric($type)) {
                $this->db->where('property_type_id', $type);
            } else {
                $this->db->where('type_slug', $type);
            }
        }
        if ($town != '') {
            if (is_numeric($town)) {
                $this->db->where('property_town_id', $town);
            } else {
                $this->db->where('town_slug', $town);
            }
        }
        if (is_array($acreage)) {
            $acreage_from = $acreage['acreage_from'];
            $acreage_to = $acreage['acreage_to'];
            if ($acreage_from && $acreage_to) {
                $this->db->where('property_acreage >=', $acreage_from);
                $this->db->where('property_acreage <=', $acreage_to);
            } elseif ($acreage_from && $acreage_to == '') {
                $this->db->where('property_acreage >=', $acreage_from);
            } elseif ($acreage_from == '' && $acreage_to) {
                $this->db->where('property_acreage <=', $acreage_to);
            }
        }
        if (is_array($price)) {
            $price_from = $price['price_from'];
            $price_to = $price['price_to'];
            if ($price_from && $price_to) {
                $this->db->where('property_price >=', $price_from);
                $this->db->where('property_price <=', $price_to);
            } elseif ($price_from && $price_to == '') {
                $this->db->where('property_price >=', $price_from);
            } elseif ($price_from == '' && $price_to) {
                $this->db->where('property_price <=', $price_to);
            }
        }
        if ($q != '') {
             $this->db->group_start();
            $this->db->like('property_name', $q);
            $this->db->or_like('property_content', $q);
            $this->db->group_end();
        }
        if ($limit > 0 && $start >= 0) {
            $this->db->limit($limit, $start);
        }
        $this->db->order_by('property_stick', 'desc');
        $this->db->order_by('property_id', 'desc');

        return $this->db->get()->result_array();
    }
}
