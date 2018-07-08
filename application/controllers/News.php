<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('property_model');
        $this->load->model('news_model');
    }

    public function index($slug = '')
    {
        $data['title']                 = _l('title_home');
        $data['home']                  = true;
        $this->view                    = 'home';
        $this->data                    = $data;
        $this->layout();
    }
}
