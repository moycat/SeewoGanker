<?php
function connect_db()
{
	global $db;
	$db = new DB(DB_HOST, DB_USER, DB_PASS, DB_BASE);
	$db->connect();
}

function send_software_list($category, $page)
{
	$category = (int)$category;
	global $db;
	$start = ((int)$page - 1) * 10;
	$respond = array('totalPage' => 0, 'apk' => array(), 'statusCode' => 200);
	if ($category > 0)
	{
		$sql = 'SELECT COUNT(*) AS total FROM `app` WHERE `subId` = ?';
		$db->prepare($sql);
		$db->bind('i', $category);
		$result = $db->execute();
		$count = (int)$result[0]['total'];
		$sql = 'SELECT * FROM `app` WHERE `subId` = ? LIMIT '.$start.',10';
		$db->prepare($sql);
		$db->bind('i', $category);
	}
	else
	{
		$sql = 'SELECT COUNT(*) AS total FROM `app`';
		$db->prepare($sql);
		$result = $db->execute();
		$count = (int)$result[0]['total'];
		$sql = 'SELECT * FROM `app` LIMIT '.$start.',10';
		$db->prepare($sql);
	}
	$respond['apk'] = $db->execute();
	$respond['totalPage'] = ceil($count / 10);
	echo json_encode($respond, JSON_UNESCAPED_UNICODE);
}

function send_category_list()
{
	global $db;
	$respond = array('category' => array(), 'statusCode' => 200);
	$sql = 'SELECT * FROM `category`';
	$db->prepare($sql);
	$respond['category'] = $db->execute();
	echo json_encode($respond, JSON_UNESCAPED_UNICODE);
}

function send_icon($filename)
{
	$file = './icon/'.$filename;
	if (!file_exists($file))
		exit(0);
	header('Content-Disposition: attachment; filename='.$filename);
	header('Content-Length: '.filesize($file));
	header('Content-Type: application/octet-stream');
	readfile($file);
}

function send_apk($filename)
{
	$file = './apk/'.$filename;
	if (!file_exists($file))
		exit(0);
	header('Content-Disposition: attachment; filename='.$filename);
	header('Content-Length: '.filesize($file));
	header('Content-Type: application/octet-stream');
	readfile($file);
}

function if_null($check)
{
	return !($check == '');
}