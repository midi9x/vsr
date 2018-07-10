<?php

defined('BASEPATH') or exit('No direct script access allowed');

$baseCurrencySymbol = $this->ci->currencies_model->get_base_currency()->symbol;

$aColumns = [
    'tblproposals.id as id',
    'subject',
    'total',
    'date',
    'open_till',
    '(SELECT GROUP_CONCAT(name SEPARATOR ",") FROM tbltags_in JOIN tbltags ON tbltags_in.tag_id = tbltags.id WHERE rel_id = tblproposals.id and rel_type="proposal" ORDER by tag_order ASC) as tags',
    'datecreated',
    'status',
    ];

$sIndexColumn = 'id';
$sTable       = 'tblproposals';
$join         = [];

$custom_fields = get_table_custom_fields('proposal');

foreach ($custom_fields as $key => $field) {
    $selectAs = (is_cf_date($field) ? 'date_picker_cvalue_' . $key : 'cvalue_' . $key);

    array_push($customFieldsColumns, $selectAs);
    array_push($aColumns, 'ctable_' . $key . '.value as ' . $selectAs);
    array_push($join, 'LEFT JOIN tblcustomfieldsvalues as ctable_' . $key . ' ON tblproposals.id = ctable_' . $key . '.relid AND ctable_' . $key . '.fieldto="' . $field['fieldto'] . '" AND ctable_' . $key . '.fieldid=' . $field['id']);
}

$where = 'AND rel_id = ' . $rel_id . ' AND rel_type = "' . $rel_type . '"';

if ($rel_type == 'customer') {
    $this->ci->db->where('userid', $rel_id);
    $customer = $this->ci->db->get('tblclients')->row();
    if ($customer) {
        if (!is_null($customer->leadid)) {
            $where .= ' OR rel_type="lead" AND rel_id=' . $customer->leadid;
        }
    }
}

$where = [$where];

if (!has_permission('proposals', '', 'view')) {
    array_push($where, 'AND ' . get_proposals_sql_where_staff(get_staff_user_id()));
}

$aColumns = do_action('proposals_relation_table_sql_columns', $aColumns);

// Fix for big queries. Some hosting have max_join_limit
if (count($custom_fields) > 4) {
    @$this->ci->db->query('SET SQL_BIG_SELECTS=1');
}

$result = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, [
    'currency',
    'invoice_id',
    'hash',
    ]);

$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];

    $numberOutput = '<a href="' . admin_url('proposals/list_proposals/' . $aRow['id']) . '">' . format_proposal_number($aRow['id']) . '</a>';

    $numberOutput .= '<div class="row-options">';

    $numberOutput .= '<a href="' . site_url('proposal/' . $aRow['id'] . '/' . $aRow['hash']) . '" target="_blank">' . _l('view') . '</a>';
    if (has_permission('proposals', '', 'edit')) {
        $numberOutput .= ' | <a href="' . admin_url('proposals/proposal/' . $aRow['id']) . '">' . _l('edit') . '</a>';
    }
    $numberOutput .= '</div>';

    $row[] = $numberOutput;

    $row[] = '<a href="' . admin_url('proposals/list_proposals/' . $aRow['id']) . '">' . $aRow['subject'] . '</a>';

   $amount = format_money($aRow['total'], ($aRow['currency'] != 0 ? $this->ci->currencies_model->get_currency_symbol($aRow['currency']) : $baseCurrencySymbol));

    if ($aRow['invoice_id']) {
        $amount .= '<br /> <span class="hide"> - </span><span class="text-success">' . _l('estimate_invoiced') . '</span>';
    }

    $row[] = $amount;


    $row[] = _d($aRow['date']);

    $row[] = _d($aRow['open_till']);

    $row[] = render_tags($aRow['tags']);

    $row[] = _d($aRow['datecreated']);

    $row[] = format_proposal_status($aRow['status']);

    // Custom fields add values
    foreach ($customFieldsColumns as $customFieldColumn) {
        $row[] = (strpos($customFieldColumn, 'date_picker_') !== false ? _d($aRow[$customFieldColumn]) : $aRow[$customFieldColumn]);
    }

    $output['aaData'][] = $row;
}
