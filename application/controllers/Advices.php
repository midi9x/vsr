<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Advices extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper("url");
        $this->load->library("pagination");
        $this->load->model('advices_model');
        $this->load->model('property_model');
    }

    public function index()
    {
        $advices = $this->advices_model->get(false, false, false, false, false, false);
        $data['title'] = _l('title_advices');
        $config = array();
        $config["base_url"] = site_url() . ADVICES_SLUG;
        $config["total_rows"] = count($advices);
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
        $data["advices"] = $this->advices_model->get(false, false, false, false, PER_PAGE, $page * PER_PAGE);
        $data["links"] = $this->pagination->create_links();
        $data['locations'] = $this->property_model->get_location();
        $this->view = 'advices';
        $data['active_menu'] = 'tu-van-dau-tu';
        $this->data = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        $advicesGroup = $this->advices_model->get(false, false, $slug);
        if (empty($advicesGroup)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . ADVICES_GROUP_SLUG . $slug;
            $config["total_rows"] = count($advicesGroup);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["advices"] = $this->advices_model->get(false, false, $slug, false, PER_PAGE, $page * PER_PAGE);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $advicesGroup[0]['group_seo_title'];
            $data['description'] = $advicesGroup[0]['group_seo_description'];
            $data['avatar'] = $advicesGroup[0]['avatar'];
            $data['url'] = site_url() . ADVICES_GROUP_SLUG . $slug;
            $data['locations'] = $this->property_model->get_location();
            $data['isGroup'] = true;
            $this->view = 'advices';
        }
        $data['active_menu'] = 'tu-van-dau-tu';
        $data['is_group'] = true;
        $this->data = $data;
        $this->layout();
    }

    public function detail($slug='')
    {
        $advicesDetail = $this->advices_model->get(false, $slug);
        if (empty($advicesDetail)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            // add_views_tracking('advice', $advicesDetail->articleid);
            $data['title'] = $advicesDetail->seo_title;
            $data['description'] = $advicesDetail->seo_description;
            $data['avatar'] = $advicesDetail->avatar;
            $data['url'] = site_url() . ADVICES_SLUG . $advicesDetail->slug;
            $data['advice'] = $advicesDetail;
            $data['related'] = $this->advices_model->get_related_articles($advicesDetail->articleid);
            $this->view = 'advice';
        }
        $data['active_menu'] = 'tu-van-dau-tu';
        $this->data = $data;
        $this->layout();
    }

    public function location($location='')
    {
        $advicesLocation = $this->advices_model->get(false, false,false, false,false, false, $location);
        if (empty($advicesLocation)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . ADVICES_LOCATION_SLUG . $location;
            $config["total_rows"] = count($advicesLocation);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["advices"] = $this->advices_model->get(false, false, false, false, PER_PAGE, $page * PER_PAGE, $location);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = _l('title_advices') . ' ' .$advicesLocation[0]['location_name'];
            $data['description'] = _l('title_advices') . ' ' .$advicesLocation[0]['location_name'];
            $data['avatar'] = $advicesLocation[0]['avatar'];
            $data['url'] = site_url() . ADVICES_LOCATION_SLUG . $location;
            $data['locations'] = $this->property_model->get_location();
            $this->view = 'advices';
        }
        $data['is_location'] = true;
        $data['active_menu'] = 'tu-van-dau-tu';
        $this->data = $data;
        $this->layout();
    }
    public function search()
    {
        $q = isset($_GET['q']) ? $_GET['q'] : '';
        $advices = $this->advices_model->get(false, false, false, $q);
        $config = array();
        $config["base_url"] = site_url() . SEARCH_SLUG . ADVICES_SLUG;
        $config["total_rows"] = count($advices);
        $config["uri_segment"] = 4;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
        $data["advices"] = $this->advices_model->get(false, false, false, $q, PER_PAGE, $page);
        $data["links"] = $this->pagination->create_links();
        $data['title']  = 'Tìm kiếm ' . _l('advices_string') . ': ' . $q;
        $data['description'] = 'Tìm kiếm ' . _l('advices_string') . ': ' . $q;
        $data['url'] = site_url() . SEARCH_SLUG . ADVICES_SLUG . '?q='. $q;
        $data['isSearch'] = true;
        $this->view = 'advices';
        $data['active_menu'] = 'tu-van-dau-tu';
        $this->data = $data;
        $this->layout();
    }
}