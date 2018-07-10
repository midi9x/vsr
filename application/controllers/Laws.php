<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Laws extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('laws_model');
    }

    public function index()
    {
        $data['laws'] = $this->laws_model->get(false, false, false);
        $data['title']                 = _l('title_laws');
        $this->view                    = 'laws';
        $this->data                    = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        $lawsDetail = $this->laws_model->get(false, $slug, false);
        if (empty($lawsDetail)) {
            $lawsGroup = $this->laws_model->get(false, false, $slug);
            if (empty($lawsGroup)) {
                $data['title']  = 'Lỗi 404 - Trang không tồn tại';
                $this->view = '404';
            } else {
                $data['title']  = $lawsGroup[0]['group_name'];
                $data['laws'] = $lawsGroup;
                $this->view = 'laws';
            }
        } else {
            $data['title'] = $lawsDetail->seo_title;
            $data['law'] = $lawsDetail;
            $this->view = 'law';
        }
        $this->data = $data;
        $this->layout();
    }
}