<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'subject',
    'articlegroup',
    'datecreated',
    ];
$sIndexColumn     = 'articleid';
$sTable           = 'advices';
$additionalSelect = [
    'name',
    'groupid',
    'articleid',
    'slug',
    ];
$join = [
    'LEFT JOIN advicesgroups ON advicesgroups.groupid = advices.articlegroup',
    ];

$where   = [];
$filter  = [];
$groups  = $this->ci->advices_model->get_kbg();
$_groups = [];
foreach ($groups as $group) {
    if ($this->ci->input->post('kb_group_' . $group['groupid'])) {
        array_push($_groups, $group['groupid']);
    }
}
if (count($_groups) > 0) {
    array_push($filter, 'AND articlegroup IN (' . implode(', ', $_groups) . ')');
}
if (count($filter) > 0) {
    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
}

if (!has_permission('advices', '', 'create') && !has_permission('advices', '', 'edit')) {
    array_push($where, ' AND advices.active=1');
}

$result  = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];
        if ($aColumns[$i] == 'articlegroup') {
            $_data = $aRow['name'];
        } elseif ($aColumns[$i] == 'subject') {
            $link = site_url(ADVICES_SLUG . $aRow['slug']);
            $_data = '<b>' . $_data . '</b>';
            if (has_permission('advices', '', 'edit')) {
                $_data = '<a href="'.admin_url('advices/article/' . $aRow['articleid']).'" class="font-size-14">' . $_data . '</a>';
            } else {
                $_data = '<a href="' . $link . '" target="_blank" class="font-size-14">' . $_data . '</a>';
            }

            $_data .= '<div class="row-options">';

            $_data .= '<a href="' . $link . '" target="_blank">' . _l('view') . '</a>';

            if (has_permission('advices', '', 'edit')) {
                $_data .= ' | <a href="'.admin_url('advices/article/' . $aRow['articleid']).'">' . _l('edit') . '</a>';
            }

            if (has_permission('advices', '', 'delete')) {
                $_data .= ' | <a href="'.admin_url('advices/delete_article/' . $aRow['articleid']).'" class="_delete text-danger">' . _l('delete') . '</a>';
            }

            $_data .= '</div>';
        } elseif ($aColumns[$i] == 'datecreated') {
            $_data = _dt($_data);
        }

        $row[] = $_data;
        $row['DT_RowClass'] = 'has-row-options';
    }

    $output['aaData'][] = $row;
}
