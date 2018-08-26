<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Pages extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('pages_model');
    }

    public function detail($slug='')
    {
        $page = $this->pages_model->get(false, $slug);
        if (empty($page)) {
            $data['title']  = 'Lỗi 404 - Trang không tồn tại';
            $this->view = '404';
        } else {
            $data['title'] = $page->seo_title;
            $data['description'] = $page->seo_description;
            $data['url'] = site_url() . PAGES_SLUG . $page->slug;
            $data['page'] = $page;
            $this->view = 'page';
        }
        $data['active_menu'] = $slug;
        $this->data = $data;
        $this->layout();
    }
}