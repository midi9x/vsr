<?php
defined('BASEPATH') or exit('No direct script access allowed');
$aColumns = [
    'property_name',
    'category_name',
    'property_created_at',
    ];
$sIndexColumn     = 'property_id';
$sTable           = 'property';
$additionalSelect = [
    'property_slug',
    'property_id'
    ];
$join = [
    'LEFT JOIN property_categories ON property_categories.category_id = property.property_category_id',
    ];

$where   = [];
$filter  = [];

$categories  = $this->ci->property_model->get_cat();
$_categories = [];
foreach ($categories as $cat) {
    if ($this->ci->input->post('cat_' . $cat['category_id'])) {
        array_push($_categories, $cat['category_id']);
    }
}
if (count($_categories) > 0) {
    array_push($filter, 'AND property_category_id IN (' . implode(', ', $_categories) . ')');
}
if (count($filter) > 0) {
    array_push($where, 'AND (' . prepare_dt_filter($filter) . ')');
}

array_push($where, ' AND property.property_theloai=2');

if (!has_permission('property', '', 'create') && !has_permission('property', '', 'edit')) {
    array_push($where, ' AND property.active=1');
}
$result  = data_tables_init($aColumns, $sIndexColumn, $sTable, $join, $where, $additionalSelect);
$output  = $result['output'];
$rResult = $result['rResult'];

foreach ($rResult as $aRow) {
    $row = [];
    for ($i = 0; $i < count($aColumns); $i++) {
        $_data = $aRow[$aColumns[$i]];
        if ($aColumns[$i] == 'property_name') {
            $link = site_url(PROJECT_SLUG . $aRow['property_slug']);
            $_data = '<b>' . $_data . '</b>';
            if (has_permission('property', '', 'edit')) {
                $_data = '<a href="'.admin_url('property/article/' . $aRow['property_id']).'" class="font-size-14">' . $_data . '</a>';
            } else {
                $_data = '<a href="' . $link . '" target="_blank" class="font-size-14">' . $_data . '</a>';
            }

            $_data .= '<div class="row-options">';

            $_data .= '<a href="' . $link . '" target="_blank">' . _l('view') . '</a>';

            if (has_permission('property', '', 'edit')) {
                $_data .= ' | <a href="'.admin_url('property/article/' . $aRow['property_id']).'">' . _l('edit') . '</a>';
            }

            if (has_permission('property', '', 'delete')) {
                $_data .= ' | <a href="'.admin_url('property/delete_article/' . $aRow['property_id']).'" class="_delete text-danger">' . _l('delete') . '</a>';
            }

            $_data .= '</div>';
        } elseif ($aColumns[$i] == 'created_at') {
            $_data = _dt($_data);
        }

        $row[] = $_data;
        $row['DT_RowClass'] = 'has-row-options';
    }

    $output['aaData'][] = $row;
}
