<?php

defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'subject',
    'datecreated',
    ];
$sIndexColumn     = 'articleid';
$sTable           = 'pages';
$additionalSelect = [
    'articleid',
    'slug',
    ];
$join = [
    ];

$where   = [];
$filter  = [];

if (!has_permission('pages', '', 'create') && !has_permission('pages', '', 'edit')) {
    array_push($where, ' AND pages.active=1');
}

$result  = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];
        if ($aColumns[$i] == 'subject') {
            $link = site_url(PAGES_SLUG . $aRow['slug']);
            $_data = '<b>' . $_data . '</b>';
            if (has_permission('pages', '', 'edit')) {
                $_data = '<a href="'.admin_url('pages/article/' . $aRow['articleid']).'" class="font-size-14">' . $_data . '</a>';
            } else {
                $_data = '<a href="' . $link . '" target="_blank" class="font-size-14">' . $_data . '</a>';
            }

            $_data .= '<div class="row-options">';

            $_data .= '<a href="' . $link . '" target="_blank">' . _l('view') . '</a>';

            if (has_permission('pages', '', 'edit')) {
                $_data .= ' | <a href="'.admin_url('pages/article/' . $aRow['articleid']).'">' . _l('edit') . '</a>';
            }

            if (has_permission('pages', '', 'delete')) {
                $_data .= ' | <a href="'.admin_url('pages/delete_article/' . $aRow['articleid']).'" class="_delete text-danger">' . _l('delete') . '</a>';
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
