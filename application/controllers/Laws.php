<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Laws extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('laws_model');
    }

    public function index($slug = '')
    {
        echo '<pre>';print_r($this->laws_model->get(false, $slug, false)); echo '</pre>';
        $data['title']                 = _l('title_laws');
        $this->view                    = 'law';
        $this->data                    = $data;
        $this->layout();
    }

    public function group($slug = '')
    {
        echo '<pre>';print_r($this->laws_model->get(false,false, $slug)); echo '</pre>';
        $data['title']                 = _l('title_laws');
        $this->view                    = 'law';
        $this->data                    = $data;
        $this->layout();
    }
}