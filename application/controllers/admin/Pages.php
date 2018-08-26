<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Pages extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('pages_model');
    }

    public function index()
    {
        if (!has_permission('pages', '', 'view')) {
            access_denied('pages');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('pages');
        }
        $data['title']     = _l('pages_string');
        $this->load->view('admin/pages/articles', $data);
    }

    public function article($id = '')
    {
        if (!has_permission('pages', '', 'view')) {
            access_denied('pages');
        }
        if ($this->input->post()) {
            $data                = $this->input->post();
            $data['description'] = $this->input->post('description', false);

            if ($id == '') {
                if (!has_permission('pages', '', 'create')) {
                    access_denied('pages');
                }
                $id = $this->pages_model->add_article($data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                    redirect(admin_url('pages/article/' . $id));
                }
            } else {
                if (!has_permission('pages', '', 'edit')) {
                    access_denied('pages');
                }
                $success = $this->pages_model->update_article($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
                redirect(admin_url('pages/article/' . $id));
            }
        }
        if ($id == '') {
            $title = _l('add_new');
        } else {
            $article         = $this->pages_model->get($id);
            $data['article'] = $article;
            $title           = _l('edit') . ' ' . $article->subject;
        }
        $data['bodyclass'] = 'pages-article';
        $data['title']     = $title;
        $this->load->view('admin/pages/article', $data);
    }

    public function delete_article($id)
    {
        if (!has_permission('pages', '', 'delete')) {
            access_denied('pages');
        }
        if (!$id) {
            redirect(admin_url('pages'));
        }
        $response = $this->pages_model->delete_article($id);
        if ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('pages'));
    }
}
