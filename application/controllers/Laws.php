<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Laws extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper("url");
        $this->load->library("pagination");
        $this->load->model('laws_model');
    }

    public function index()
    {
        $laws = $this->laws_model->get(false, false, false, false, false, false);
        $data['title'] = _l('title_laws');
        $config = array();
        $config["base_url"] = site_url() . LAWS_SLUG;
        $config["total_rows"] = count($laws);
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
        $data["laws"] = $this->laws_model->get(false, false, false, false, PER_PAGE, $page);
        $data["links"] = $this->pagination->create_links();

        $this->view = 'laws';
        $this->data = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        $lawsGroup = $this->laws_model->get(false, false, $slug);
        if (empty($lawsGroup)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . LAWS_GROUP_SLUG . $slug;
            $config["total_rows"] = count($lawsGroup);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["laws"] = $this->laws_model->get(false, false, $slug, PER_PAGE, $page);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $lawsGroup[0]['group_seo_title'];
            $data['description'] = $lawsGroup[0]['group_seo_description'];
            $data['avatar'] = $lawsGroup[0]['avatar'];
            $data['url'] = site_url() . LAWS_GROUP_SLUG . $slug;
            $data['isGroup'] = true;
            $this->view = 'laws';
        }
        $this->data = $data;
        $this->layout();
    }

    public function detail($slug='')
    {
        $lawsDetail = $this->laws_model->get(false, $slug, false);
        if (empty($lawsDetail)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            add_views_tracking('law', $lawsDetail->articleid);
            $data['title'] = $lawsDetail->seo_title;
            $data['description'] = $lawsDetail->seo_description;
            $data['avatar'] = $lawsDetail->avatar;
            $data['url'] = site_url() . LAWS_SLUG . $lawsDetail->slug;
            $data['law'] = $lawsDetail;
            $this->view = 'law';
        }
        $this->data = $data;
        $this->layout();
    }
    //
    
    public function search($q = '')
    {
        $laws = $this->laws_model->get(false, false, false, $slug);
        $config = array();
        $config["base_url"] = site_url() . LAWS_GROUP_SLUG . SEARCH_SLUG . '?q='. $q;
        $config["total_rows"] = count($laws);
        $config["uri_segment"] = 4;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
        $data["laws"] = $this->laws_model->get(false, false, $slug, PER_PAGE, $page);
        $data["links"] = $this->pagination->create_links();
        $data['title']  = $laws[0]['group_seo_title'];
        $data['description'] = $laws[0]['group_seo_description'];
        $data['avatar'] = $laws[0]['avatar'];
        $data['url'] = site_url() . LAWS_GROUP_SLUG . $slug;
        $data['isGroup'] = true;
        $this->view = 'laws';
        $this->data = $data;
        $this->layout();
    }
}