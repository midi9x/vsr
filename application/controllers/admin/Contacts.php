<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Contacts extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('contact_model');
    }

    public function index($type = '')
    {
        if (!has_permission('contacts', '', 'view')) {
            access_denied('contacts');
        }
        $data['contacts'] = $this->contact_model->get_contact($type);
        $data['type'] = $type;
        $data['title']  = _l('contacts');
        $this->load->view('admin/contacts/index', $data);
    }

    public function contact($id = '')
    {
        if (!has_permission('contacts', '', 'view')) {
            access_denied('contacts');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            if (!has_permission('contacts', '', 'edit')) {
                access_denied('contacts');
            }

            $id = $post_data['id'];
            unset($post_data['id']);
            $success = $this->contact_model->update_contact($post_data, $id);
            if ($success) {
                set_alert('success', _l('updated_successfully'));
            }
        
            die;
        }
    }

    public function delete_contact($id)
    {
        if (!has_permission('contacts', '', 'delete')) {
            access_denied('contacts');
        }
        if (!$id) {
            redirect($_SERVER['HTTP_REFERER']);
        }
        $response = $this->contact_model->delete_contact($id);
        if ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect($_SERVER['HTTP_REFERER']);
    }
}
