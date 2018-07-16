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
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
            $data["properties"] = $this->property_model->get(false, false, false, false, false, PER_PAGE, $page);
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
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
            $data["properties"] = $this->property_model->get(false, false, $slug, false, false, PER_PAGE, $page);
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

    public function detail($slug='')
    {
        $property = $this->property_model->get(false, $slug);
        if (empty($property)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            add_views_tracking('property', $property->property_id);
            $data['title'] = $property->property_seo_title;
            $data['description'] = $property->property_seo_description;
            $data['avatar'] = $property->property_avatar;
            $data['url'] = site_url() . PROPERTY_SLUG . $property->property_slug;
            $data['property'] = $property;
            $data['characteristics'] = $this->property_model->get_characteristic_by_property_id($property->property_id);
            $data['images'] = $this->property_model->get_image_by_property_id($property->property_id);
            $this->view = 'property';
        }
        $this->data = $data;
        $this->layout();
    }

    public function search()
    {
        if (!is_knowledge_base_viewable()) {
            show_404();
        }

        $q = $this->input->get('q');

        $where_kb = [];
        if (!empty($q)) {
            $where_kb = '(subject LIKE "%' . $q . '%" OR description LIKE "%' . $q . '%" OR slug LIKE "%' . $q . '%")';
        }

        $data['articles']              = get_all_knowledge_base_articles_grouped(true, $where_kb);
        $data['search_results']        = true;
        $data['title']                 = _l('showing_search_result', $q);
        $data['knowledge_base_search'] = true;
        $this->view                    = 'knowledge_base';
        $this->data                    = $data;
        $this->layout();
    }

    public function article($slug)
    {
        if (!is_knowledge_base_viewable()) {
            show_404();
        }

        $data['article'] = $this->knowledge_base_model->get(false, $slug);
        if (!$slug) {
            redirect(site_url('knowledge-base'));
        }

        if (!$data['article'] || $data['article']->active_article == 0) {
            show_404();
        }

        $data['knowledge_base_search'] = true;
        $data['related_articles']      = $this->knowledge_base_model->get_related_articles($data['article']->articleid);
        add_views_tracking('kb_article', $data['article']->articleid);
        $data['title'] = $data['article']->subject;
        $this->view    = 'knowledge_base_article';
        $this->data    = $data;
        $this->layout();
    }

    public function category($slug)
    {
        if (!is_knowledge_base_viewable()) {
            show_404();
        }

        $where_kb         = 'articlegroup IN (SELECT groupid FROM tblknowledgebasegroups WHERE group_slug="' . $slug . '")';
        $data['category'] = $slug;
        $data['articles'] = get_all_knowledge_base_articles_grouped(true, $where_kb);

        $data['title']                 = count($data['articles']) == 1 ? $data['articles'][0]['name'] : _l('clients_knowledge_base');
        $data['knowledge_base_search'] = true;
        $this->data                    = $data;
        $this->view                    = 'knowledge_base';
        $this->layout();
    }

    public function add_kb_answer()
    {
        if (!is_knowledge_base_viewable()) {
            show_404();
        }
        // This is for did you find this answer useful
        if (($this->input->post() && $this->input->is_ajax_request())) {
            echo json_encode($this->knowledge_base_model->add_article_answer($this->input->post()));
            die();
        }
    }
}
