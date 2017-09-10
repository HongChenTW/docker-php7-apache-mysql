<?php

try {
    $db = new PDO(
	    'mysql:host=db;dbname=docker-table;port=3306;charset=utf8',
		'root',
		'rootpassword'
	);
} catch (PDOException $e) {
    echo 'DB connection failed';
	exit;
}

$data = $db->query('select * from comments');
$data = $data->fetchAll();
var_dump($data);

