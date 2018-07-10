<?php

defined('BASEPATH') or exit('No direct script access allowed');

class News extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('news_model');
    }

    public function index()
    {
        $data['news'] = $this->news_model->get(false, false, false);
        $data['title'] = _l('title_news');
        $this->view = 'news';
        $this->data = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        $newsDetail = $this->news_model->get(false, $slug, false);
        if (empty($newsDetail)) {
            $newsGroup = $this->news_model->get(false, false, $slug);
            if (empty($newsGroup)) {
                $data['title']  = 'Lỗi 404 - Trang không tồn tại';
                $this->view = '404';
            } else {
                $data['title']  = $newsGroup[0]['group_name'];
                $data['news'] = $newsGroup;
                $this->view = 'news';
            }
        } else {
            $data['title'] = $newsDetail->seo_title;
            $data['new'] = $newsDetail;
            $this->view = 'new';
        }
        $this->data = $data;
        $this->layout();
    }
}