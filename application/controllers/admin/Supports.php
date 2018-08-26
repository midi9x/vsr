<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Supports extends Admin_controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->load->view('admin/supports');
    }
}
