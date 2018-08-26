<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2018-08-02 09:06:06 --> 404 Page Not Found: Faviconico/index
ERROR - 2018-08-02 09:11:25 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:22:09 --> 404 Page Not Found: Faviconico/index
ERROR - 2018-08-02 14:44:53 --> Could not find the language line "als_kb_towns"
ERROR - 2018-08-02 14:47:15 --> Query error: Unknown column 'property_towns.town_category_id' in 'on clause' - Invalid query: SELECT `property_towns`.*, `category_name`
FROM `property_towns`
INNER JOIN `property_categories` ON `property_categories`.`category_id` = `property_towns`.`town_category_id`
ORDER BY `town_order` ASC
ERROR - 2018-08-02 14:48:29 --> Query error: Unknown column 'category_name' in 'field list' - Invalid query: SELECT `property_towns`.*, `category_name`
FROM `property_towns`
INNER JOIN `property_locations` ON `property_locations`.`location_id` = `property_towns`.`town_location_id`
ORDER BY `town_order` ASC
ERROR - 2018-08-02 14:50:45 --> Severity: Notice --> Undefined variable: types C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\manage_towns.php 21
ERROR - 2018-08-02 09:55:01 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:55:58 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:56:18 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:56:26 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:56:46 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:56:59 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:57:12 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:57:16 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 09:57:21 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 14:59:28 --> Severity: Notice --> Undefined property: stdClass::$property_tow_id C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 141
ERROR - 2018-08-02 09:59:29 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 15:00:17 --> Query error: Unknown column 'property_tow_id' in 'field list' - Invalid query: SELECT `property_id`, `property_name`, `property_avatar`, `property_content`, `property_category_id`, `property_type_id`, `property_location_id`, `property_tow_id`, `property_status`, `property_price`, `property_bedroom`, `property_bathroom`, `property_acreage`, `property_facade`, `property_slug`, `property_seo_title`, `property_seo_description`, `property_created_at`, `property_active`, `property_order`, `property_stick`, `category_name`, `category_slug`, `category_description`, `category_active`, `category_order`, `location_name`, `location_description`, `location_slug`, `location_active`, `location_order`, `type_name`, `type_slug`, `type_description`, `type_active`, `type_order`, `location_seo_title`, `location_seo_description`, `category_seo_title`, `category_seo_description`, `type_seo_title`, `type_seo_description`, `town_name`, `town_slug`, `town_description`, `town_seo_title`, `town_seo_description`
FROM `property`
LEFT JOIN `property_categories` ON `property_categories`.`category_id` = `property`.`property_category_id`
LEFT JOIN `property_locations` ON `property_locations`.`location_id` = `property`.`property_location_id`
LEFT JOIN `property_types` ON `property_types`.`type_id` = `property`.`property_type_id`
LEFT JOIN `property_towns` ON `property_towns`.`town_id` = `property`.`property_town_id`
WHERE `property_id` = '1'
ORDER BY `property_id` DESC
ERROR - 2018-08-02 15:00:32 --> Severity: Notice --> Undefined property: stdClass::$property_tow_id C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 141
ERROR - 2018-08-02 10:00:33 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:00:56 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:01:11 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:01:25 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:05:55 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:06:50 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:07:54 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:17:16 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:17:18 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 15:28:52 --> Severity: error --> Exception: syntax error, unexpected '?', expecting end of file C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 256
ERROR - 2018-08-02 15:29:18 --> Severity: error --> Exception: syntax error, unexpected '?', expecting end of file C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 256
ERROR - 2018-08-02 10:41:05 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:44:12 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:44:33 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:45:00 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 10:45:45 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 15:49:51 --> Severity: Notice --> Undefined property: stdClass::$property_matbang C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 136
ERROR - 2018-08-02 15:49:51 --> Severity: Notice --> Undefined property: stdClass::$canhonen C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 139
ERROR - 2018-08-02 15:49:51 --> Severity: Notice --> Undefined property: stdClass::$tienich C:\XAMPP2\htdocs\batdongsan\application\views\admin\property\article.php 142
ERROR - 2018-08-02 15:55:20 --> Query error: Unknown column 'property_matbang' in 'field list' - Invalid query: SELECT `property_id`, `property_theloai`, `property_name`, `property_avatar`, `property_content`, `property_category_id`, `property_type_id`, `property_location_id`, `property_town_id`, `property_status`, `property_price`, `property_bedroom`, `property_bathroom`, `property_acreage`, `property_facade`, `property_slug`, `property_seo_title`, `property_seo_description`, `property_created_at`, `property_active`, `property_order`, `property_stick`, `category_name`, `category_slug`, `category_description`, `category_active`, `category_order`, `location_name`, `location_description`, `location_slug`, `location_active`, `location_order`, `type_name`, `type_slug`, `type_description`, `type_active`, `type_order`, `location_seo_title`, `location_seo_description`, `category_seo_title`, `category_seo_description`, `type_seo_title`, `type_seo_description`, `town_name`, `town_slug`, `town_description`, `town_seo_title`, `town_seo_description`, `property_socan`, `property_solo`, `property_quyhoach`, `vitri_google`, `property_matbang`, `property_canhonen`, `property_tienich`
FROM `property`
LEFT JOIN `property_categories` ON `property_categories`.`category_id` = `property`.`property_category_id`
LEFT JOIN `property_locations` ON `property_locations`.`location_id` = `property`.`property_location_id`
LEFT JOIN `property_types` ON `property_types`.`type_id` = `property`.`property_type_id`
LEFT JOIN `property_towns` ON `property_towns`.`town_id` = `property`.`property_town_id`
WHERE `property_id` = '1'
ORDER BY `property_id` DESC
ERROR - 2018-08-02 11:13:29 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 11:13:53 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 11:47:14 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 11:47:57 --> 404 Page Not Found: Assets/plugins
ERROR - 2018-08-02 11:48:09 --> 404 Page Not Found: Assets/plugins
