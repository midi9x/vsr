<?php

defined('BASEPATH') or exit('No direct script access allowed');

class News extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper("url");
        $this->load->library("pagination");
        $this->load->model('news_model');
        $this->load->model('property_model');
    }

    public function index()
    {
        $news = $this->news_model->get(false, false, false, false, false, false);
        $data['title'] = _l('title_news');
        $config = array();
        $config["base_url"] = site_url() . NEWS_SLUG;
        $config["total_rows"] = count($news);
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) - 1 : 0;
        $data["news"] = $this->news_model->get(false, false, false, false, PER_PAGE, $page * PER_PAGE);
        $data["links"] = $this->pagination->create_links();
        $data['locations'] = $this->property_model->get_location();
        $this->view = 'news';
        $data['active_menu'] = 'tin-tuc';
        $this->data = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        $newsGroup = $this->news_model->get(false, false, $slug);
        if (empty($newsGroup)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . NEWS_GROUP_SLUG . $slug;
            $config["total_rows"] = count($newsGroup);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["news"] = $this->news_model->get(false, false, $slug, false, PER_PAGE, $page * PER_PAGE);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = $newsGroup[0]['group_seo_title'];
            $data['description'] = $newsGroup[0]['group_seo_description'];
            $data['avatar'] = $newsGroup[0]['avatar'];
            $data['url'] = site_url() . NEWS_GROUP_SLUG . $slug;
            $data['locations'] = $this->property_model->get_location();
            $data['isGroup'] = true;
            $this->view = 'news';
        }
        $data['active_menu'] = 'tin-tuc';
        $data['is_group'] = true;
        $this->data = $data;
        $this->layout();
    }

    public function detail($slug='')
    {
        $newsDetail = $this->news_model->get(false, $slug);
        if (empty($newsDetail)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            // add_views_tracking('new', $newsDetail->articleid);
            $data['title'] = $newsDetail->seo_title;
            $data['description'] = $newsDetail->seo_description;
            $data['avatar'] = $newsDetail->avatar;
            $data['url'] = site_url() . NEWS_SLUG . $newsDetail->slug;
            $data['new'] = $newsDetail;
            $data['related'] = $this->news_model->get_related_articles($newsDetail->articleid);
            $this->view = 'new';
        }
        $data['active_menu'] = 'tin-tuc';
        $this->data = $data;
        $this->layout();
    }

    public function location($location='')
    {
        $newsLocation = $this->news_model->get(false, false,false, false,false, false, $location);
        if (empty($newsLocation)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $config = array();
            $config["base_url"] = site_url() . NEWS_LOCATION_SLUG . $location;
            $config["total_rows"] = count($newsLocation);
            $config["uri_segment"] = 4;
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
            $data["news"] = $this->news_model->get(false, false, false, false, PER_PAGE, $page * PER_PAGE, $location);
            $data["links"] = $this->pagination->create_links();
            $data['title']  = _l('title_news') . ' ' .$newsLocation[0]['location_name'];
            $data['description'] = _l('title_news') . ' ' .$newsLocation[0]['location_name'];
            $data['avatar'] = $newsLocation[0]['avatar'];
            $data['url'] = site_url() . NEWS_LOCATION_SLUG . $location;
            $data['locations'] = $this->property_model->get_location();
            $this->view = 'news';
        }
        $data['is_location'] = true;
        $data['active_menu'] = 'tin-tuc';
        $this->data = $data;
        $this->layout();
    }
    public function search()
    {
        $q = isset($_GET['q']) ? $_GET['q'] : '';
        $news = $this->news_model->get(false, false, false, $q);
        $config = array();
        $config["base_url"] = site_url() . SEARCH_SLUG . NEWS_SLUG;
        $config["total_rows"] = count($news);
        $config["uri_segment"] = 4;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) - 1 : 0;
        $data["news"] = $this->news_model->get(false, false, false, $q, PER_PAGE, $page);
        $data["links"] = $this->pagination->create_links();
        $data['title']  = 'Tìm kiếm ' . _l('news_string') . ': ' . $q;
        $data['description'] = 'Tìm kiếm ' . _l('news_string') . ': ' . $q;
        $data['url'] = site_url() . SEARCH_SLUG . NEWS_SLUG . '?q='. $q;
        $data['isSearch'] = true;
        $this->view = 'news';
        $data['active_menu'] = 'tin-tuc';
        $this->data = $data;
        $this->layout();
    }
}