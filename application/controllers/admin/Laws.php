<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Laws extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('laws_model');
    }

    /* List all knowledgebase articles */
    public function index()
    {
        if (!has_permission('laws', '', 'view')) {
            access_denied('laws');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('laws');
        }
        $data['groups']    = $this->laws_model->get_kbg();
        $data['bodyclass'] = 'top-tabs kan-ban-body';
        $data['title']     = _l('laws_string');
        $this->load->view('admin/laws/articles', $data);
    }

    /* Add new article or edit existing*/
    public function article($id = '')
    {
        if (!has_permission('laws', '', 'view')) {
            access_denied('laws');
        }
        if ($this->input->post()) {
            $data                = $this->input->post();
            $data['description'] = $this->input->post('description', false);

            if ($id == '') {
                if (!has_permission('laws', '', 'create')) {
                    access_denied('laws');
                }
                $id = $this->laws_model->add_article($data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                    redirect(admin_url('laws/article/' . $id));
                }
            } else {
                if (!has_permission('laws', '', 'edit')) {
                    access_denied('laws');
                }
                $success = $this->laws_model->update_article($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
                redirect(admin_url('laws/article/' . $id));
            }
        }
        if ($id == '') {
            $title = _l('add_new');
        } else {
            $article         = $this->laws_model->get($id);
            $data['article'] = $article;
            $title           = _l('edit') . ' ' . $article->subject;
        }
        $data['bodyclass'] = 'laws-article';
        $data['title']     = $title;
        $this->load->view('admin/laws/article', $data);
    }

    /* Change article active or inactive */
    public function change_article_status($id, $status)
    {
        if (has_permission('laws', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->laws_model->change_article_status($id, $status);
            }
        }
    }

    public function update_kan_ban()
    {
        if (has_permission('laws', '', 'edit')) {
            if ($this->input->post()) {
                $success = $this->laws_model->update_kan_ban($this->input->post());
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
        if (!has_permission('laws', '', 'delete')) {
            access_denied('laws');
        }
        if (!$id) {
            redirect(admin_url('laws'));
        }
        $response = $this->laws_model->delete_article($id);
        if ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('laws'));
    }

    /* View all article groups */
    public function manage_groups()
    {
        if (!has_permission('laws', '', 'view')) {
            access_denied('laws');
        }
        $data['groups'] = $this->laws_model->get_kbg();
        $data['title']  = _l('als_kb_groups');
        $this->load->view('admin/laws/manage_groups', $data);
    }

    /* Add or edit existing article group */
    public function group($id = '')
    {
        if (!has_permission('laws', '', 'view')) {
            access_denied('laws');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            $article_add_edit = isset($post_data['article_add_edit']);
            if (isset($post_data['article_add_edit'])) {
                unset($post_data['article_add_edit']);
            }
            if (!$this->input->post('id')) {
                if (!has_permission('laws', '', 'create')) {
                    access_denied('laws');
                }
                $id = $this->laws_model->add_group($post_data);
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
                if (!has_permission('laws', '', 'edit')) {
                    access_denied('laws');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->laws_model->update_group($post_data, $id);
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
        if (has_permission('laws', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->laws_model->change_group_status($id, $status);
            }
        }
    }

    public function update_groups_order()
    {
        if (has_permission('laws', '', 'edit')) {
            if ($this->input->post()) {
                $this->laws_model->update_groups_order();
            }
        }
    }

    /* Delete article group */
    public function delete_group($id)
    {
        if (!has_permission('laws', '', 'delete')) {
            access_denied('laws');
        }
        if (!$id) {
            redirect(admin_url('laws/manage_groups'));
        }
        $response = $this->laws_model->delete_group($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('kb_dt_group_name')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted', _l('kb_dt_group_name')));
        } else {
            set_alert('warning', _l('problem_deleting', mb_strtolower(_l('kb_dt_group_name'))));
        }
        redirect(admin_url('laws/manage_groups'));
    }

    public function get_article_by_id_ajax($id)
    {
        if ($this->input->is_ajax_request()) {
            echo json_encode($this->laws_model->get($id));
        }
    }
}
