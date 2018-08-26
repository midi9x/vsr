<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Options extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['title']  = _l('options');
        $this->load->view('admin/options/index', $data);
    }

    public function update_option()
    {
        if ($this->input->post()) {
            $post_data = $this->input->post();
            $post_data['footer_doitac'] = array_filter($post_data['footer_doitac']);
            $post_data['footer_doitac'] = json_encode($post_data['footer_doitac']);
            foreach ($post_data as $key => $data) {
                if (get_option($key))
                    update_option($key, $data);
                else
                    add_option($key, $data);
            }
            set_alert('success', _l('updated_successfully'));
        }
        redirect($_SERVER['HTTP_REFERER']);
    }

    public function banner()
    {
        if (!has_permission('options', '', 'view')) {
            access_denied('options');
        }
        $data['title']  = _l('options');
        $this->load->view('admin/options/banner', $data);
    }

    public function edit_banner()
    {
        if (!has_permission('options', '', 'view')) {
            access_denied('options');
        }
        if ($this->input->post()) {
            $post_data = $this->input->post();
            if (!has_permission('options', '', 'edit')) {
                access_denied('options');
            }

            foreach ($post_data as $key => $data) {
                if (get_option($key) != '')
                    update_option($key, $data);
                else
                    add_option($key, $data);
            }
            if ($success) {
                set_alert('success', _l('updated_successfully'));
            }
            redirect($_SERVER['HTTP_REFERER']);
        }
    }
}
