<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Mreports extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('mreports_model');
    }

    /* List all knowledgebase articles */
    public function index()
    {
        if (!has_permission('mreports', '', 'view')) {
            access_denied('mreports');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('mreports');
        }
        $data['groups']    = $this->mreports_model->get_kbg();
        $data['bodyclass'] = 'top-tabs kan-ban-body';
        $data['title']     = _l('mreports_string');
        $this->load->view('admin/mreports/articles', $data);
    }

    /* Add new article or edit existing*/
    public function article($id = '')
    {
        if (!has_permission('mreports', '', 'view')) {
            access_denied('mreports');
        }
        if ($this->input->post()) {
            $data                = $this->input->post();
            $data['description'] = $this->input->post('description', false);

            if ($id == '') {
                if (!has_permission('mreports', '', 'create')) {
                    access_denied('mreports');
                }
                $id = $this->mreports_model->add_article($data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                    redirect(admin_url('mreports/article/' . $id));
                }
            } else {
                if (!has_permission('mreports', '', 'edit')) {
                    access_denied('mreports');
                }
                $success = $this->mreports_model->update_article($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
                redirect(admin_url('mreports/article/' . $id));
            }
        }
        if ($id == '') {
            $title = _l('add_new');
        } else {
            $article         = $this->mreports_model->get($id);
            $data['article'] = $article;
            $title           = _l('edit') . ' ' . $article->subject;
        }
        $data['bodyclass'] = 'mreports-article';
        $data['title']     = $title;
        $this->load->view('admin/mreports/article', $data);
    }

    /* Change article active or inactive */
    public function change_article_status($id, $status)
    {
        if (has_permission('mreports', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->mreports_model->change_article_status($id, $status);
            }
        }
    }

    public function update_kan_ban()
    {
        if (has_permission('mreports', '', 'edit')) {
            if ($this->input->post()) {
                $success = $this->mreports_model->update_kan_ban($this->input->post());
                $message = '';
                if ($success) {
                    $message = _l('updated_successfully');
                }
                echo json_encode([
                    'success' => $success,
                    'message' => $message,
                ]);
                die();
            }
        }
    }

    /* Delete article from database */
    public function delete_article($id)
    {
        if (!has_permission('mreports', '', 'delete')) {
            access_denied('mreports');
        }
        if (!$id) {
            redirect(admin_url('mreports'));
        }
        $response = $this->mreports_model->delete_article($id);
        if ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('mreports'));
    }

    /* View all article groups */
    public function manage_groups()
    {
        if (!has_permission('mreports', '', 'view')) {
            access_denied('mreports');
        }
        $data['groups'] = $this->mreports_model->get_kbg();
        $data['title']  = _l('als_kb_groups');
        $this->load->view('admin/mreports/manage_groups', $data);
    }

    /* Add or edit existing article group */
    public function group($id = '')
    {
        if (!has_permission('mreports', '', 'view')) {
            access_denied('mreports');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            $article_add_edit = isset($post_data['article_add_edit']);
            if (isset($post_data['article_add_edit'])) {
                unset($post_data['article_add_edit']);
            }
            if (!$this->input->post('id')) {
                if (!has_permission('mreports', '', 'create')) {
                    access_denied('mreports');
                }
                $id = $this->mreports_model->add_group($post_data);
                if (!$article_add_edit && $id) {
                    set_alert('success', _l('added_successfully'));
                } else {
                    echo json_encode([
                        'id'      => $id,
                        'success' => $id ? true : false,
                        'name'    => $post_data['name'],
                    ]);
                }
            } else {
                if (!has_permission('mreports', '', 'edit')) {
                    access_denied('mreports');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->mreports_model->update_group($post_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
            }
            die;
        }
    }

    /* Change group active or inactive */
    public function change_group_status($id, $status)
    {
        if (has_permission('mreports', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->mreports_model->change_group_status($id, $status);
            }
        }
    }

    public function update_groups_order()
    {
        if (has_permission('mreports', '', 'edit')) {
            if ($this->input->post()) {
                $this->mreports_model->update_groups_order();
            }
        }
    }

    /* Delete article group */
    public function delete_group($id)
    {
        if (!has_permission('mreports', '', 'delete')) {
            access_denied('mreports');
        }
        if (!$id) {
            redirect(admin_url('mreports/manage_groups'));
        }
        $response = $this->mreports_model->delete_group($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('kb_dt_group_name')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted', _l('kb_dt_group_name')));
        } else {
            set_alert('warning', _l('problem_deleting', mb_strtolower(_l('kb_dt_group_name'))));
        }
        redirect(admin_url('mreports/manage_groups'));
    }

    public function get_article_by_id_ajax($id)
    {
        if ($this->input->is_ajax_request()) {
            echo json_encode($this->mreports_model->get($id));
        }
    }
}
