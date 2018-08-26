<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|   example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|   http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|   $route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|   $route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|   $route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples: my-controller/index -> my_controller/index
|       my-controller/my-method -> my_controller/my_method
*/

$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['admin']  = "admin/dashboard";
// Misc controller rewrites
$route['admin/access_denied']  = "admin/misc/access_denied";
$route['admin/not_found']  = "admin/misc/not_found";

// Staff rewrites
$route['admin/profile']  = "admin/staff/profile";
$route['admin/profile/(:num)']  = "admin/staff/profile/$1";
$route['admin/tasks/view/(:any)']  = "admin/tasks/index/$1";

// Items search rewrite
$route['admin/items/search'] = 'admin/invoice_items/search';

/* Clients links and routes */
// // In case if client access directly to url without the arguments redirect to clients url
$route['/']  = "home";

// Deprecated
$route['viewinvoice/(:num)/(:any)']  = "invoice/index/$1/$2";

// New url from version 2.0.
$route['invoice/(:num)/(:any)']  = "invoice/index/$1/$2";

// Deprecated
$route['viewestimate/(:num)/(:any)']  = "estimate/index/$1/$2";

// New url from version 2.0
$route['estimate/(:num)/(:any)']  = "estimate/index/$1/$2";

$route['subscription/(:any)']  = "subscription/index/$1";

// Deprecated
$route['viewproposal/(:num)/(:any)']  = "proposal/index/$1/$2";
// New url from version 2.0
$route['proposal/(:num)/(:any)']  = "proposal/index/$1/$2";

// Available from version 2.0
$route['contract/(:num)/(:any)']  = "contract/index/$1/$2";
$route['survey/(:num)/(:any)']  = "survey/index/$1/$2";

// Deprecated
//$route['knowledge_base']  = "knowledge_base/index";
// $route[PROPERTY_SLUG.'(:any)']  = "property/index/$1";

// Available from version 2.0
$route['knowledge-base']  = "knowledge_base/index";
$route['knowledge-base/search']  = "knowledge_base/search";
$route['knowledge-base/article']  = "knowledge_base/index";
$route['knowledge-base/article/(:any)']  = "knowledge_base/article/$1";
$route['knowledge-base/category']  = "knowledge_base/index";
$route['knowledge-base/category/(:any)']  = "knowledge_base/category/$1";

// Deprecated
if(strpos($_SERVER['REQUEST_URI'],'add_kb_answer') === false) {
    $route['knowledge-base/(:any)']  = "knowledge_base/article/$1";
    $route['knowledge_base/(:any)']  = "knowledge_base/article/$1";
    $route['clients/knowledge_base/(:any)']  = "knowledge_base/article/$1";
    $route['clients/knowledge-base/(:any)']  = "knowledge_base/article/$1";
}
// $route['knowledge-base/(:any)']  = "knowledge_base/index/$1";
$route['terms-and-conditions']  = "clients/terms_and_conditions";
$route['privacy-policy']  = "clients/privacy_policy";

$route[PROPERTY_LOCATION . '(:any)'] = 'property/location/$1';
$route[PROPERTY_LOCATION . '(:any)/page/(:num)'] = 'property/location/$1/$2';

$route[PROPERTY_CATEGORY . '(:any)'] = 'property/category/$1';
$route[PROPERTY_CATEGORY . '(:any)/page/(:num)'] = 'property/category/$1/$2';

$route[PROPERTY_TYPE . '(:any)'] = 'property/type/$1';
$route[PROPERTY_TYPE . '(:any)/page/(:num)'] = 'property/type/$1/$2';

$route[str_replace('/', '', PROPERTY_SLUG)] = 'property/index';
$route[PROPERTY_SLUG . 'page/(:num)'] = 'property/index/$1';
$route[PROPERTY_SLUG . '(:any)'] = 'property/detail/$1';

$route[SEARCH_SLUG . str_replace('/', '', PROPERTY_SLUG)] = 'property/search';
$route[SEARCH_SLUG . PROPERTY_SLUG . 'page/(:num)'] = 'property/search/$1';

$route['lien-he-bat-dong-san'] = 'property/add_contact';


$route[str_replace('/', '', NEWS_SLUG)] = 'news/index';
$route[NEWS_SLUG . 'page/(:num)'] = 'news/index/$1';
$route[NEWS_GROUP_SLUG . '(:any)'] = 'news/group/$1';
$route[NEWS_GROUP_SLUG . '(:any)/page/(:num)'] = 'news/group/$1/$2';

$route[NEWS_LOCATION_SLUG . '(:any)'] = 'news/location/$1';
$route[NEWS_LOCATION_SLUG . '(:any)/page/(:num)'] = 'news/location/$1/$2';

$route[NEWS_SLUG . '(:any)'] = 'news/detail/$1';



$route[SEARCH_SLUG . str_replace('/', '', NEWS_SLUG)] = 'news/search';
$route[SEARCH_SLUG . NEWS_SLUG . 'page/(:num)'] = 'news/search/$1';


// new
$route[str_replace('/', '', PRODUCT_SLUG)] = 'property/get_product';
$route[str_replace('/', '', PROJECT_SLUG)] = 'property/get_project';
$route[PRODUCT_SLUG . 'page/(:num)'] = 'property/get_product';
$route[PROJECT_SLUG . 'page/(:num)'] = 'property/get_project';




$route[PRODUCT_SLUG . '(:any)'] = 'property/product_detail/$1';
$route[PROJECT_SLUG . '(:any)'] = 'property/project_detail/$1';

$route[str_replace('/', '', ADVICES_SLUG)] = 'advices/index';
$route[ADVICES_SLUG . 'page/(:num)'] = 'advices/index/$1';
$route[ADVICES_GROUP_SLUG . '(:any)'] = 'advices/group/$1';
$route[ADVICES_GROUP_SLUG . '(:any)/page/(:num)'] = 'advices/group/$1/$2';
$route[ADVICES_LOCATION_SLUG . '(:any)'] = 'advices/location/$1';
$route[ADVICES_LOCATION_SLUG . '(:any)/page/(:num)'] = 'advices/location/$1/$2';
$route[ADVICES_SLUG . '(:any)'] = 'advices/detail/$1';


$route[str_replace('/', '', MREPORTS_SLUG)] = 'mreports/index';
$route[MREPORTS_SLUG . 'page/(:num)'] = 'mreports/index/$1';
$route[MREPORTS_GROUP_SLUG . '(:any)'] = 'mreports/group/$1';
$route[MREPORTS_GROUP_SLUG . '(:any)/page/(:num)'] = 'mreports/group/$1/$2';
$route[MREPORTS_LOCATION_SLUG . '(:any)'] = 'mreports/location/$1';
$route[MREPORTS_LOCATION_SLUG . '(:any)/page/(:num)'] = 'mreports/location/$1/$2';
$route[MREPORTS_SLUG . '(:any)'] = 'mreports/detail/$1';



$route[str_replace('/', '', PHU_QUOC_SLUG)] = 'home/phuquoc';
$route[str_replace('/', '', VAN_DON_SLUG)] = 'home/vandon';
$route[str_replace('/', '', BAC_VAN_PHONG_SLUG)] = 'home/bacvanphong';

$route['add_contact'] = 'home/add_contact';

$route[str_replace('/', '', SEARCH_SLUG)] = 'home/search';

// $route['gioi-thieu'] = 'home/about';
$route['lien-he'] = 'home/contact';

$route['(:any)'] = 'pages/detail/$1';