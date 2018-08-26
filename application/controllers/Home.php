<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends Clients_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('property_model');
        $this->load->model('news_model');
        $this->load->model('advices_model');
        $this->load->model('mreports_model');
        $this->load->model('contact_model');
    }

    public function index($slug = '')
    {
        $data['title'] = get_option('home_title');
        $data['description'] = get_option('home_description');
        $data["news"] = $this->news_model->get(false, false, false, false, 7, 0);
        $data["advices"] = $this->advices_model->get(false, false, false, false, 4, 0);
        $data["mreports"] = $this->mreports_model->get(false, false, false, false, 4, 0);
        $data["products"] = $this->property_model->get_list(1, false, false, false, false, false, false, false, 3, 0);
        $data["projects"] = $this->property_model->get_list(2, false, false, false, false, false, false, false, 3, 0);
        $data["home"] = 'home';
        $this->view = 'home';
        $this->data = $data;
        $this->layout();
    }

    public function about()
    {
        $data['title'] = _l('title_about');
        $data['active_menu'] = 'gioi-thieu';
        $this->view = 'about';
        $this->data = $data;
        $this->layout();
    }

    public function contact()
    {
        $data['title'] = _l('title_contact');
        $data['active_menu'] = 'lien-he';
        $this->view = 'contact';
        $this->data = $data;
        $this->layout();
    }

    public function phuquoc()
    {
        $data['title'] = _l('title_phuquoc');
        $data["news"] = $this->news_model->get(false, false, false, false, 7, 0, 1);
        $data["advices"] = $this->advices_model->get(false, false, false, false, 4, 0, 1);
        $data["mreports"] = $this->mreports_model->get(false, false, false, false, 4, 0, 1);
        $data["products"] = $this->property_model->get_list(1, false, false, 1, false, false, false, false, 3, 0);
        $data["projects"] = $this->property_model->get_list(2, false, false, 1, false, false, false, false, 3, 0);
        $data["active_menu"] = 'phu-quoc';
        $this->view = 'home';
        $this->data = $data;
        $this->layout();
    }

    public function vandon()
    {
        $data['title'] = _l('title_vandon');
        $data["news"] = $this->news_model->get(false, false, false, false, 7, 0, 2);
        $data["advices"] = $this->advices_model->get(false, false, false, false, 4, 0, 2);
        $data["mreports"] = $this->mreports_model->get(false, false, false, false, 4, 0, 2);
        $data["products"] = $this->property_model->get_list(1, false, false, 2, false, false, false, false, 3, 0);
        $data["projects"] = $this->property_model->get_list(2, false, false, 2, false, false, false, false, 3, 0);
        $data["active_menu"] = 'van-don';
        $this->view = 'home';
        $this->data = $data;
        $this->layout();
    }

    public function bacvanphong()
    {
        $data['title'] = _l('title_bacvanphong');
        $data["news"] = $this->news_model->get(false, false, false, false, 7, 0, 3);
        $data["advices"] = $this->advices_model->get(false, false, false, false, 4, 0, 3);
        $data["mreports"] = $this->mreports_model->get(false, false, false, false, 4, 0, 3);
        $data["products"] = $this->property_model->get_list(1, false, false, 3, false, false, false, false, 3, 0);
        $data["projects"] = $this->property_model->get_list(2, false, false, 3, false, false, false, false, 3, 0);
        $data["active_menu"] = 'bac-van-phong';
        $this->view = 'home';
        $this->data = $data;
        $this->layout();
    }

    public function add_contact()
    {
        $data = $this->input->post();
        if ($data['type'] == CONTACT_TYPE_PROPERTY) {
            $data['contact_property'] =  implode(', ', $data['contact_property']);
        }
        $contact = $this->contact_model->add_contact($data);
        if ($contact) {
            $this->session->set_flashdata('message-success', MSG_CONTACT_SUCCESS);
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function search()
    {
        $q = $this->input->get('q');
        $data['title'] = _l('showing_search_result', $q);
        $data['description'] = _l('showing_search_result', $q);
        $data["news"] = $this->news_model->get(false, false, false, $q, PER_PAGE, 0);
        $data["advices"] = $this->advices_model->get(false, false, false, $q, PER_PAGE, 0);
        $data["mreports"] = $this->mreports_model->get(false, false, false, $q, PER_PAGE, 0);
        $data["products"] = $this->property_model->get_list(1, false, false, false, false, false, false, $q, PER_PAGE, 0);
        $data["projects"] = $this->property_model->get_list(2, false, false, false, false, false, false, $q, PER_PAGE, 0);
        $this->view = 'list_search';
        $this->data = $data;
        $this->layout();
    }
}
