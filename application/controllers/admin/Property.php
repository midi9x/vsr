<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Property extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('property_model');
    }

    public function index($type = '')
    {
        if (!$type) redirect(admin_url('property/index/1'));
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->is_ajax_request()) {
            if ($type == ''):
                $this->app->get_table_data('property');
            else:
                $this->app->get_table_data('property_' . $type);
            endif;
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
            $data['property_content'] = $this->input->post('property_content', false);
            $data['vitri_google'] = $this->input->post('vitri_google', false);
            $data['property_matbang'] = $this->input->post('property_matbang', false);
            $data['property_canhonen'] = $this->input->post('property_canhonen', false);
            $data['property_tienich'] = $this->input->post('property_tienich', false);
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
        $data['client_groups']         = $this->clients_model->get_groups();
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

    public function get_customer()
    {
        if ($this->input->is_ajax_request()) {
            if ($this->input->post()) {
                $data  = $this->input->post();
                $data['message'] = $this->input->post('message', false);
                $customer_groups = $this->client_groups_model->get_customer_by_groups($data['groups']);

                echo json_encode(['customers' => $customer_groups]);
            }
        }
    }

    public function send_email()
    {
        if ($this->input->is_ajax_request()) {
            if ($this->input->post()) {
                $contact = get_contact_by_client_id($this->input->post('customer_id'));
                $email = $contact->email;
                if ($email) {
                    $subject = $this->input->post('subject');
                    $from = $this->input->post('from');
                    $message = $this->input->post('message');
                    $fullName = $contact->firstname . ' ' . $contact->lastname;
                    $message = str_ireplace('{fullname}', $fullName, $message);
                    $this->sent_smtp_email($email, $subject, $from, $message);
                }
            }
        }
    }

    public function sent_smtp_email($email, $subject, $from, $message)
    {
        $this->load->config('email');
        $template           = new StdClass();
        $template->message  = get_option('email_header') . $message . get_option('email_footer');
        $template->fromname = $from;
        $template->subject  = $subject;
        $template = parse_email_template($template);

        $this->email->initialize();
        if (get_option('mail_engine') == 'phpmailer') {
            $this->email->set_debug_output(function ($err) {
                if (!isset($GLOBALS['debug'])) {
                    $GLOBALS['debug'] = '';
                }
                $GLOBALS['debug'] .= $err . '<br />';

                return $err;
            });
            $this->email->set_smtp_debug(3);
        }

        $this->email->set_newline(config_item('newline'));
        $this->email->set_crlf(config_item('crlf'));

        $this->email->from(get_option('smtp_email'), $template->fromname);
        $this->email->to($email);

        $systemBCC = get_option('bcc_emails');

        if ($systemBCC != '') {
            $this->email->bcc($systemBCC);
        }

        $this->email->subject($template->subject);
        $this->email->message($template->message);
        if ($this->email->send(true)) {
            echo 'ok';
        } else {
            echo 'error';
        }
    }

    public function send_sms()
    {
        if ($this->input->is_ajax_request()) {
            if ($this->input->post()) {
                $contact = get_contact_by_client_id($this->input->post('customer_id'));
                $phonenumber = $contact->phonenumber;
                if ($phonenumber) {
                    $message = $this->input->post('message');
                    $fullName = $contact->firstname . ' ' . $contact->lastname;
                    $message = str_ireplace('{fullname}', $fullName, $message);
                    $message = str_ireplace('{companyname}', get_option('companyname'), $message);
                    clickatell_trigger_send_sms($phonenumber, $message);
                    echo 'ok';exit;
                }
                echo 'no phone number';exit;
            }
        }
    }

    public function manage_contacts()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        $data['contacts'] = $this->property_model->get_contacts();
        $data['title']  = _l('property_contacts');
        $this->load->view('admin/property/manage_contacts', $data);
    }

    public function contact($id = '')
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        if ($this->input->post()) {
            $post_data        = $this->input->post();
            if (!has_permission('property', '', 'edit')) {
                access_denied('property');
            }

            $id = $post_data['id'];
            unset($post_data['id']);
            $success = $this->property_model->update_contact($post_data, $id);
            if ($success) {
                set_alert('success', _l('updated_successfully'));
            }
        }
    }

    public function delete_contact($id)
    {
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property/manage_contacts'));
        }
        $response = $this->property_model->delete_contact($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced'));
        } elseif ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property/manage_contacts'));
    }

    /**
     * town
     *
    **/
    public function manage_towns()
    {
        if (!has_permission('property', '', 'view')) {
            access_denied('property');
        }
        $data['towns'] = $this->property_model->get_town();
        $data['locations'] = $this->property_model->get_location();
        $data['title']  = _l('als_kb_towns');
        $this->load->view('admin/property/manage_towns', $data);
    }

    public function town($id = '')
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
                $id = $this->property_model->add_town($post_data);
                if ($id) {
                    set_alert('success', _l('added_successfully'));
                } else {
                    echo json_encode([
                        'id'      => $id,
                        'success' => $id ? true : false,
                        'name'    => $post_data['town_name'],
                    ]);
                }
            } else {
                if (!has_permission('property', '', 'edit')) {
                    access_denied('property');
                }

                $id = $post_data['id'];
                unset($post_data['id']);
                $success = $this->property_model->update_town($post_data, $id);
                if ($success) {
                    set_alert('success', _l('updated_successfully'));
                }
            }
            die;
        }
    }

    public function change_town_status($id, $status)
    {
        if (has_permission('property', '', 'edit')) {
            if ($this->input->is_ajax_request()) {
                $this->property_model->change_town_status($id, $status);
            }
        }
    }

    public function delete_town($id)
    {
        if (!has_permission('property', '', 'delete')) {
            access_denied('property');
        }
        if (!$id) {
            redirect(admin_url('property/manage_towns'));
        }
        $response = $this->property_model->delete_town($id);
        if (is_array($response) && isset($response['referenced'])) {
            set_alert('danger', _l('is_referenced', _l('als_kb_towns')));
        } elseif ($response == true) {
            set_alert('success', _l('deleted'));
        } else {
            set_alert('warning', _l('problem_deleting'));
        }
        redirect(admin_url('property/manage_towns'));
    }
}
