<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/opencart/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/opencart/');

$raiz = $_SERVER['DOCUMENT_ROOT']."/opencart";
// DIR
define('DIR_APPLICATION', $raiz.'/');
define('DIR_SYSTEM', $raiz.'/system/');
define('DIR_IMAGE', $raiz.'/image/');
define('DIR_LANGUAGE', $raiz.'/language/');
define('DIR_TEMPLATE', $raiz.'/view/template/');
define('DIR_CONFIG', $raiz.'/system/config/');
define('DIR_CACHE', $raiz.'/system/storage/cache/');
define('DIR_DOWNLOAD', $raiz.'/system/storage/download/');
define('DIR_LOGS', $raiz.'/system/storage/logs/');
define('DIR_MODIFICATION', $raiz.'/system/storage/modification/');
define('DIR_UPLOAD', $raiz.'/system/storage/upload/');
define('DIR_CATALOG', $raiz.'/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'opencart');
define('DB_PORT', '3306');
define('DB_PREFIX', '');
