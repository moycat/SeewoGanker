<?php
require 'config.php';
require 'class-db.php';
require 'function.php';

$request = array_merge(array_filter(explode('/', $_SERVER['REQUEST_URI']), 'if_null'));

connect_db();

if ($request[3] == 'getCategory')
	send_category_list();
elseif ($request[3] == 'getSoftware')
	send_software_list($request[5], $request[6]);
