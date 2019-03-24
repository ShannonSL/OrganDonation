<?php 
	require_once('config.php');

	if (isset($_GET['sessioncheck'])) {
		$message = confirm_logged_in();
	} else if (empty($_POST['username']) || empty($_POST['password'])){
		$message = 'No Username or Password';
	} else {
		$username = $_POST['username'];
		$password = $_POST['password'];
		$ip = $_SERVER['REMOTE_ADDR'];
		$message = login($username, $password, $ip);
	}

	echo json_encode($message);
?>