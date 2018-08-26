<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Property extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('property_model');
        $this->load->helper("url");
        $this->load->library("pagination");
    }

    public function index()
    {
        $properties = $this->property_model->get();
        if (empty($properties)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . PROPERTY_SLUG;
            $config["total_rows"] = count($properties);
            $config["uri_segment"] = 3;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
            $data["properties"] = $this->property_model->get(false, false, false, false, false, false, false,  PER_PAGE, $page);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = _l('title_property');
            $data['description'] = '';
            $data['avatar'] = $properties[0]['property_avatar'];
            $data['url'] = site_url() . PROPERTY_SLUG;
            $this->view = 'properties';
        }
        $this->data = $data;
        $this->layout();
    }

    public function detail($slug='')
    {
        $property = $this->property_model->get(false, $slug);
        if (empty($property)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            // add_views_tracking('property', $property->property_id);
            $data['title'] = $property->property_seo_title;
            $data['description'] = $property->property_seo_description;
            $data['avatar'] = $property->property_avatar;
            $data['url'] = site_url() . PROPERTY_SLUG . $property->property_slug;
            $data['property'] = $property;
            $data['characteristics'] = $this->property_model->get_characteristic_by_property_id($property->property_id);
            $data['images'] = $this->property_model->get_image_by_property_id($property->property_id);
            $data['relateds'] = $this->property_model->get_related_articles($property->property_id);
            $data['social'] = true;
            $this->view = 'property';
        }
        $this->data = $data;
        $this->layout();
    }

    public function product_detail($slug='')
    {
        $property = $this->property_model->get_detail($slug);
        if (empty($property)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            // add_views_tracking('property', $property->property_id);
            $data['title'] = $property->property_seo_title;
            $data['description'] = $property->property_seo_description;
            $data['avatar'] = $property->property_avatar;
            $data['url'] = site_url() . PRODUCT_SLUG . $property->property_slug;
            $data['property'] = $property;
            $data['characteristics'] = $this->property_model->get_characteristic_by_property_id($property->property_id);
            $data['images'] = $this->property_model->get_image_by_property_id($property->property_id);
            $data['relateds'] = $this->property_model->get_related_articles($property->property_id);
            $data['social'] = true;
            $data['active_menu'] = 'san-pham';
            $this->view = 'product';
        }
        $this->data = $data;
        $this->layout();
    }

    public function project_detail($slug='')
    {
        $property = $this->property_model->get_detail($slug);
        if (empty($property)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            // add_views_tracking('property', $property->property_id);
            $data['title'] = $property->property_seo_title;
            $data['description'] = $property->property_seo_description;
            $data['avatar'] = $property->property_avatar;
            $data['url'] = site_url() . PROJECT_SLUG . $property->property_slug;
            $data['property'] = $property;
            $data['characteristics'] = $this->property_model->get_characteristic_by_property_id($property->property_id);
            $data['images'] = $this->property_model->get_image_by_property_id($property->property_id);
            $data['relateds'] = $this->property_model->get_related_articles($property->property_id);
            $data['social'] = true;
            $data['active_menu'] = 'du-an';
            $this->view = 'project_detail';
        }
        $this->data = $data;
        $this->layout();
    }

    public function get_product()
    {
        $category = isset($_GET['category']) ? $_GET['category'] : '';
        $type = isset($_GET['type']) ? $_GET['type'] : '';
        $location = isset($_GET['location']) ? $_GET['location'] : '';
        $town = isset($_GET['town']) ? $_GET['town'] : '';
        $q = isset($_GET['q']) ? $_GET['q'] : '';
        $acreage_to = isset($_GET['acreage_to']) ? $_GET['acreage_to'] : '';
        $acreage_from = isset($_GET['acreage_from']) ? $_GET['acreage_from'] : '';
        $price_from = isset($_GET['price_from']) ? $_GET['price_from'] : '';
        $price_to = isset($_GET['price_to']) ? $_GET['price_to'] : '';
        $acreage = [
            'acreage_from' => $acreage_from,
            'acreage_to' => $acreage_to
        ];
        $price = [
            'price_from' => $price_from,
            'price_to' => $price_to
        ];
        $properties = $this->property_model->get_list(PRODUCT, $category, $type, $location, $town, $acreage, $price, $q);
        $config = array();
        $config["base_url"] = site_url() . PRODUCT_SLUG;
        $config["total_rows"] = count($properties);
        $config["uri_segment"] = 3;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
        $data["properties"] = $this->property_model->get_list(PRODUCT, $category, $type, $location, $town, $acreage, $price, $q, PER_PAGE, $page * PER_PAGE);
        $data["links"] = $this->pagination->create_links();
        $data['title']  = _l('title_product');
        $data['description'] = _l('title_product');
        if (!empty($properties))
            $data['avatar'] = $properties[0]['property_avatar'];
        $data['url'] = site_url() . PRODUCT_SLUG;
        $data['active_menu'] = 'san-pham';
        $this->view = 'list_product';
        $this->data = $data;
        $this->layout();
    }

    public function get_project()
    {
        $category = isset($_GET['category']) ? $_GET['category'] : '';
        $type = isset($_GET['type']) ? $_GET['type'] : '';
        $location = isset($_GET['location']) ? $_GET['location'] : '';
        $town = isset($_GET['town']) ? $_GET['town'] : '';
        $q = isset($_GET['q']) ? $_GET['q'] : '';
        $acreage_to = isset($_GET['acreage_to']) ? $_GET['acreage_to'] : '';
        $acreage_from = isset($_GET['acreage_from']) ? $_GET['acreage_from'] : '';
        $price_from = isset($_GET['price_from']) ? $_GET['price_from'] : '';
        $price_to = isset($_GET['price_to']) ? $_GET['price_to'] : '';
        $acreage = [
            'acreage_from' => $acreage_from,
            'acreage_to' => $acreage_to
        ];
        $price = [
            'price_from' => $price_from,
            'price_to' => $price_to
        ];
        $properties = $this->property_model->get_list(PROJECT, $category, $type, $location, $town, $acreage, $price, $q);
        $config = array();
        $config["base_url"] = site_url() . PROJECT_SLUG;
        $config["total_rows"] = count($properties);
        $config["uri_segment"] = 3;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
        $data["properties"] = $this->property_model->get_list(PROJECT, $category, $type, $location, $town, $acreage, $price, $q, PER_PAGE, $page * PER_PAGE);
        $data["links"] = $this->pagination->create_links();
        $data['title']  = _l('title_project');
        $data['description'] = _l('title_project');
        if (!empty($properties))
            $data['avatar'] = $properties[0]['property_avatar'];
        $data['url'] = site_url() . PROJECT_SLUG;
        $data['active_menu'] = 'du-an';
        $this->view = 'list_project';
        $this->data = $data;
        $this->layout();
    }

    public function search()
    {

        $q = isset($_GET['q']) ? $_GET['q'] : '';
        $sort = isset($_GET['sort']) ? $_GET['sort'] : '';
        $location = isset($_GET['vi-tri']) ? $_GET['vi-tri'] : '';
        $category = isset($_GET['danh-muc']) ? $_GET['danh-muc'] : '';
        $type = isset($_GET['the-loai']) ? $_GET['the-loai'] : '';

        $properties = $this->property_model->get(false, false, $location, $category, $type, $q, $sort);
        $config = array();
        $config["base_url"] = site_url() . SEARCH_SLUG . PROPERTY_SLUG;
        $config["total_rows"] = count($properties);
        $config["uri_segment"] = 4;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
        $data["properties"] = $this->property_model->get(false, false, $location, $category, $type, $q, $sort, PER_PAGE, $page);
        // print_r($this->db->last_query());exit;
        $data["links"] = $this->pagination->create_links();
        $data['title']  = 'Tìm kiếm nhà đất';
        $data['description'] = 'Tìm kiếm nhà đất';
        $data['url'] = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $data['isSearch'] = true;
        $this->view = 'properties';
        $this->data = $data;
        $this->layout();
    }

    public function category($slug = '')
    {
        $properties = $this->property_model->get(false, false,false, $slug);
        if (empty($properties)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . PROPERTY_CATEGORY . $slug;
            $config["total_rows"] = count($properties);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["properties"] = $this->property_model->get(false, false, false, $slug, false, false,false, PER_PAGE, $page);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $properties[0]['category_seo_title'];
            $data['description'] = $properties[0]['category_seo_description'];
            $data['avatar'] = $properties[0]['property_avatar'];
            $data['url'] = site_url() . PROPERTY_CATEGORY . $slug;
            $data['isCategory'] = true;
            $this->view = 'properties';
        }
        $this->data = $data;
        $this->layout();
    }

        public function location($slug = '')
    {
        $properties = $this->property_model->get(false, false, $slug);
        if (empty($properties)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . PROPERTY_LOCATION . $slug;
            $config["total_rows"] = count($properties);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["properties"] = $this->property_model->get(false, false, $slug, false, false, false,false, PER_PAGE, $page);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $properties[0]['location_seo_title'];
            $data['description'] = $properties[0]['location_seo_description'];
            $data['avatar'] = $properties[0]['property_avatar'];
            $data['url'] = site_url() . PROPERTY_LOCATION . $slug;
            $data['isLocation'] = true;
            $this->view = 'properties';
        }
        $this->data = $data;
        $this->layout();
    }

    public function type($slug = '')
    {
        $properties = $this->property_model->get(false, false,false, false, $slug);
        if (empty($properties)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . PROPERTY_TYPE . $slug;
            $config["total_rows"] = count($properties);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["properties"] = $this->property_model->get(false, false, false, false, $slug, false,false, PER_PAGE, $page);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $properties[0]['type_seo_title'];
            $data['description'] = $properties[0]['type_seo_description'];
            $data['avatar'] = $properties[0]['property_avatar'];
            $data['url'] = site_url() . PROPERTY_TYPE . $slug;
            $data['isType'] = true;
            $this->view = 'properties';
        }
        $this->data = $data;
        $this->layout();
    }

    public function add_contact()
    {

        $data = $this->input->post();
        $contact = $this->property_model->add_contact($data);
        if ($contact) {
            $this->session->set_flashdata('message-success', 'Gửi thành công, chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function add_wishlist($property_id)
    {
        if (!is_client_logged_in()) {
            die('0');
        }
        $getWishlist = $this->property_model->get_wishlist($property_id);
        if ($getWishlist) {
            die('1');
        }
        $wishlist = $this->property_model->add_wishlist($property_id);
        if ($wishlist) {
            die('2');
        }
        die('3');
    }
}
