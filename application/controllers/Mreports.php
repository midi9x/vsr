<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Mreports extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper("url");
        $this->load->library("pagination");
        $this->load->model('mreports_model');
        $this->load->model('property_model');
    }

    public function index()
    {
        $mreports = $this->mreports_model->get(false, false, false, false, false, false);
        $data['title'] = _l('title_mreports');
        $config = array();
        $config["base_url"] = site_url() . MREPORTS_SLUG;
        $config["total_rows"] = count($mreports);
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
        $data["mreports"] = $this->mreports_model->get(false, false, false, false, PER_PAGE, $page * PER_PAGE);
        $data["links"] = $this->pagination->create_links();
        $data['locations'] = $this->property_model->get_location();
        $this->view = 'mreports';
        $data['active_menu'] = 'bao-cao-thi-truong';
        $this->data = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        $mreportsGroup = $this->mreports_model->get(false, false, $slug);
        if (empty($mreportsGroup)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . MREPORTS_GROUP_SLUG . $slug;
            $config["total_rows"] = count($mreportsGroup);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["mreports"] = $this->mreports_model->get(false, false, $slug, false, PER_PAGE, $page * PER_PAGE);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $mreportsGroup[0]['group_seo_title'];
            $data['description'] = $mreportsGroup[0]['group_seo_description'];
            $data['avatar'] = $mreportsGroup[0]['avatar'];
            $data['url'] = site_url() . MREPORTS_GROUP_SLUG . $slug;
            $data['locations'] = $this->property_model->get_location();
            $data['isGroup'] = true;
            $this->view = 'mreports';
        }
        $data['active_menu'] = 'bao-cao-thi-truong';
        $data['is_group'] = true;
        $this->data = $data;
        $this->layout();
    }

    public function detail($slug='')
    {
        $mreportsDetail = $this->mreports_model->get(false, $slug);
        if (empty($mreportsDetail)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            // add_views_tracking('mreport', $mreportsDetail->articleid);
            $data['title'] = $mreportsDetail->seo_title;
            $data['description'] = $mreportsDetail->seo_description;
            $data['avatar'] = $mreportsDetail->avatar;
            $data['url'] = site_url() . MREPORTS_SLUG . $mreportsDetail->slug;
            $data['mreport'] = $mreportsDetail;
            $data['related'] = $this->mreports_model->get_related_articles($mreportsDetail->articleid);
            $this->view = 'mreport';
        }
        $data['active_menu'] = 'bao-cao-thi-truong';
        $this->data = $data;
        $this->layout();
    }

    public function location($location='')
    {
        $mreportsLocation = $this->mreports_model->get(false, false,false, false,false, false, $location);
        if (empty($mreportsLocation)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . MREPORTS_LOCATION_SLUG . $location;
            $config["total_rows"] = count($mreportsLocation);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["mreports"] = $this->mreports_model->get(false, false, false, false, PER_PAGE, $page * PER_PAGE, $location);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = _l('title_mreports') . ' ' .$mreportsLocation[0]['location_name'];
            $data['description'] = _l('title_mreports') . ' ' .$mreportsLocation[0]['location_name'];
            $data['avatar'] = $mreportsLocation[0]['avatar'];
            $data['url'] = site_url() . MREPORTS_LOCATION_SLUG . $location;
            $data['locations'] = $this->property_model->get_location();
            $this->view = 'mreports';
        }
        $data['is_location'] = true;
        $data['active_menu'] = 'bao-cao-thi-truong';
        $this->data = $data;
        $this->layout();
    }
    public function search()
    {
        $q = isset($_GET['q']) ? $_GET['q'] : '';
        $mreports = $this->mreports_model->get(false, false, false, $q);
        $config = array();
        $config["base_url"] = site_url() . SEARCH_SLUG . MREPORTS_SLUG;
        $config["total_rows"] = count($mreports);
        $config["uri_segment"] = 4;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
        $data["mreports"] = $this->mreports_model->get(false, false, false, $q, PER_PAGE, $page);
        $data["links"] = $this->pagination->create_links();
        $data['title']  = 'Tìm kiếm ' . _l('mreports_string') . ': ' . $q;
        $data['description'] = 'Tìm kiếm ' . _l('mreports_string') . ': ' . $q;
        $data['url'] = site_url() . SEARCH_SLUG . MREPORTS_SLUG . '?q='. $q;
        $data['isSearch'] = true;
        $this->view = 'mreports';
        $data['active_menu'] = 'bao-cao-thi-truong';
        $this->data = $data;
        $this->layout();
    }
}