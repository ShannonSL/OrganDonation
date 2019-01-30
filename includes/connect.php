<?php
$db_dsn = array(
	'host' => 'localhost',
	'dbname' => 'db_organs',
	'charset' => 'utf8'
	);
$dsn = 'mysql:' .http_build_query($db_dsn,'',';');
//set up connection credentials
$db_user = 'root';
$db_pass = '';
//check connection
try{
	$pdo = new PDO($dsn,$db_user,$db_pass);
}catch(PDOException $exception){
	echo 'Connection Error: '.$exception->getMessage();
	exit();
}
