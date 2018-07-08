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

    public function about()
    {
        $data['title']                 = _l('title_about');
        $this->view                    = 'gioithieu';
        $this->data                    = $data;
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
}
