<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
|--------------------------------------------------------------------------
| Base Site URL
|--------------------------------------------------------------------------
|
| URL to your CodeIgniter root. Typically this will be your base URL,
| WITH a trailing slash:
|
|   http://example.com/
|
| If this is not set then CodeIgniter will try guess the protocol, domain
| and path to your installation. However, you should always configure this
| explicitly and never rely on auto-guessing, especially in production
| environments.
|
*/

define('APP_BASE_URL','http://batdongsan.local/');

/*
|--------------------------------------------------------------------------
| Encryption Key
| IMPORTANT: Do not change this ever!
|--------------------------------------------------------------------------
|
| If you use the Encryption class, you must set an encryption key.
| See the user guide for more info.
|
| http://codeigniter.com/user_guide/libraries/encryption.html
|
| Auto updated added on install
*/

define('APP_ENC_KEY','fe04eafe75f4bb09a875995f0f6fa77c');
/**
 * Database Credentials
 */
/* The hostname of your database server. */
define('APP_DB_HOSTNAME','localhost');
/* The username used to connect to the database */
define('APP_DB_USERNAME','root');
/* The password used to connect to the database */
define('APP_DB_PASSWORD','');
/* The name of the database you want to connect to */
define('APP_DB_NAME','batdongsan');


/**
 *
 * Session handler driver
 * By default the database driver will be used.
 *
 * For files session use this config:
 * define('SESS_DRIVER', 'files');
 * define('SESS_SAVE_PATH', NULL);
 * In case you are having problem with the SESS_SAVE_PATH consult with your hosting provider to set "session.save_path" value to php.ini
 *
 */

define('SESS_DRIVER','database');
define('SESS_SAVE_PATH','tblsessions');

/**
 * Enables CSRF Protection
 */
define('APP_CSRF_PROTECTION',true);

define('PER_PAGE', 10);
define('SEARCH_SLUG', 'tim-kiem/');


define('PROPERTY_SLUG', 'bat-dong-san/');
define('PROPERTY_LOCATION', 'vi-tri/');
define('PROPERTY_CATEGORY', 'danh-muc/');
define('PROPERTY_TYPE', 'the-loai/');


define('NEWS_SLUG', 'tin-tuc/');
define('NEWS_GROUP_SLUG', 'tin-tuc/danh-muc/');
define('NEWS_LOCATION_SLUG', 'tin-tuc/khu/');


define('PRODUCT', 1);
define('PROJECT', 2);

define('PRODUCT_SLUG', 'san-pham/');
define('PRODUCT_LOCATION_SLUG', 'san-pham/khu/');

define('PROJECT_SLUG', 'du-an/');
define('PROJECT_LOCATION_SLUG', 'du-an/khu/');


define('PHU_QUOC_SLUG', 'phu-quoc/');
define('VAN_DON_SLUG', 'van-don/');
define('BAC_VAN_PHONG_SLUG', 'bac-van-phong/');


define('ADVICES_SLUG', 'tu-van-dau-tu/');
define('ADVICES_GROUP_SLUG', 'tu-van-dau-tu/danh-muc/');
define('ADVICES_LOCATION_SLUG', 'tu-van-dau-tu/khu/');

define('MREPORTS_SLUG', 'bao-cao-thi-truong/');
define('MREPORTS_GROUP_SLUG', 'bao-cao-thi-truong/danh-muc/');
define('MREPORTS_LOCATION_SLUG', 'bao-cao-thi-truong/khu/');

define('CONTACT_TYPE_EMAIL', 1);
define('CONTACT_TYPE_INFO', 2);
define('CONTACT_TYPE_PROPERTY', 3);
define('CONTACT_TYPE_PAGE', 4);


define('MSG_CONTACT_SUCCESS', 'Thông tin của bạn đã được chúng tôi ghi nhận!');

define('PAGES_SLUG', '/');



