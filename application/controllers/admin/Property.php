<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Property extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('property_model');
    }

    public function index()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->is_ajax_request()) {
            $this->app->get_table_data('property');
        }
        $data['categories']    = $this->property_model->get_cat();
        $data['bodyclass'] = 'top-tabs kan-ban-body';
        $data['title']     = _l('property');
        $this->load->view('admin/property/articles', $data);
    }

    public function article($id = '')
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->post()) {
            $data                = $this->input->post();
            if ($id == '') {
                if (!has_permission('property', '', 'create')) {
                    access_denied('property');
                }
                $id = $this->property_model->add_article($data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                    redirect(admin_url('property/article/' . $id));
                }
            } else {
                if (!has_permission('property', '', 'edit')) {
                    access_denied('property');
                }
                $success = $this->property_model->update_article($data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
                redirect(admin_url('property/article/' . $id));
            }
        }
        if ($id == '') {
            $title = _l('add_new');
        } else {
            $article         = $this->property_model->get($id);
            $data['article'] = $article;
            $title           = _l('edit') . ' ' . $article->property_name;
        }
        $data['bodyclass'] = 'property-article';
        $data['title']     = $title;
        $this->load->view('admin/property/article', $data);
    }

    public function change_article_status($id, $status)
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->property_model->change_article_status($id, $status);
            }
        }
    }

    public function update_kan_ban()
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->post()) {
                $success = $this->property_model->update_kan_ban($this->input->post());
                $message = '';
                if ($success) {
                    $message = _l('updated_successfully', _l('kb_article'));
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
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property'));
        }
        $response = $this->property_model->delete_article($id);
        if ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property'));
    }

    public function manage_categories()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        $data['categories'] = $this->property_model->get_cat();
        $data['title']  = _l('als_kb_categories');
        $this->load->view('admin/property/manage_categories', $data);
    }

    public function category($id = '')
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            $article_add_edit = isset($post_data['article_add_edit']);
            if (isset($post_data['article_add_edit'])) {
                unset($post_data['article_add_edit']);
            }
            if (!$this->input->post('id')) {
                if (!has_permission('property', '', 'create')) {
                    access_denied('property');
                }
                $id = $this->property_model->add_cat($post_data);
                if (!$article_add_edit && $id) {
                    set_alert('success', _l('added_successfully'));
                } else {
                    echo json_encode([
                        'id'      => $id,
                        'success' => $id ? true : false,
                        'name'    => $post_data['category_name'],
                    ]);
                }
            } else {
                if (!has_permission('property', '', 'edit')) {
                    access_denied('property');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->property_model->update_group($post_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
            }
            die;
        }
    }

    public function change_group_status($id, $status)
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->property_model->change_group_status($id, $status);
            }
        }
    }

    public function update_groups_order()
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->post()) {
                $this->property_model->update_groups_order();
            }
        }
    }

    public function delete_group($id)
    {
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property/manage_categories'));
        }
        $response = $this->property_model->delete_group($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('als_kb_categories')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property/manage_categories'));
    }

    public function get_article_by_id_ajax($id)
    {
        if ($this->input->is_ajax_request()) {
            echo json_encode($this->property_model->get($id));
        }
    }

    /**
     * Type
     *
    **/
    public function manage_types()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        $data['types'] = $this->property_model->get_type();
        $data['categories'] = $this->property_model->get_cat();
        $data['title']  = _l('als_kb_types');
        $this->load->view('admin/property/manage_types', $data);
    }

    public function type($id = '')
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            if (!$this->input->post('id')) {
                if (!has_permission('property', '', 'create')) {
                    access_denied('property');
                }
                $id = $this->property_model->add_type($post_data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                } else {
                    echo json_encode([
                        'id'      => $id,
                        'success' => $id ? true : false,
                        'name'    => $post_data['type_name'],
                    ]);
                }
            } else {
                if (!has_permission('property', '', 'edit')) {
                    access_denied('property');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->property_model->update_type($post_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
            }
            die;
        }
    }

    public function change_type_status($id, $status)
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->property_model->change_type_status($id, $status);
            }
        }
    }

    public function delete_type($id)
    {
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property/manage_types'));
        }
        $response = $this->property_model->delete_type($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('als_kb_types')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property/manage_types'));
    }

    /**
     * Location
     *
    **/
    public function manage_locations()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        $data['locations'] = $this->property_model->get_location();
        $data['title']  = _l('als_kb_locations');
        $this->load->view('admin/property/manage_locations', $data);
    }

    public function location($id = '')
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            if (!$this->input->post('id')) {
                if (!has_permission('property', '', 'create')) {
                    access_denied('property');
                }
                $id = $this->property_model->add_location($post_data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                } else {
                    echo json_encode([
                        'id'      => $id,
                        'success' => $id ? true : false,
                        'name'    => $post_data['location_name'],
                    ]);
                }
            } else {
                if (!has_permission('property', '', 'edit')) {
                    access_denied('property');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->property_model->update_location($post_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
            }
            die;
        }
    }

    public function change_location_status($id, $status)
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->property_model->change_location_status($id, $status);
            }
        }
    }


    public function delete_location($id)
    {
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property/manage_locations'));
        }
        $response = $this->property_model->delete_location($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('als_kb_locations')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property/manage_locations'));
    }

    /**
     * Characteristic
     *
    **/
    public function manage_characteristics()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        $data['characteristics'] = $this->property_model->get_characteristic();
        $data['title']  = _l('als_kb_characteristics');
        $this->load->view('admin/property/manage_characteristics', $data);
    }

    public function characteristic($id = '')
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            if (!$this->input->post('id')) {
                if (!has_permission('property', '', 'create')) {
                    access_denied('property');
                }
                $id = $this->property_model->add_characteristic($post_data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                } else {
                    echo json_encode([
                        'id'      => $id,
                        'success' => $id ? true : false,
                        'name'    => $post_data['characteristic_name'],
                    ]);
                }
            } else {
                if (!has_permission('property', '', 'edit')) {
                    access_denied('property');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->property_model->update_characteristic($post_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
            }
            die;
        }
    }

    public function change_characteristic_status($id, $status)
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->property_model->change_characteristic_status($id, $status);
            }
        }
    }


    public function delete_characteristic($id)
    {
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property/manage_characteristics'));
        }
        $response = $this->property_model->delete_characteristic($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('als_kb_characteristics')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property/manage_characteristics'));
    }

}
