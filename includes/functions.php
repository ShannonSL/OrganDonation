<?php
function getAll($tbl){
	include('connect.php');
	$queryAll = 'SELECT * FROM '.$tbl;
	$runAll = $pdo->query($queryAll);
	if($runAll){
		return $runAll;
	}else{
		$error = 'There was a problem';
		return $error;
	}

}
function getSingle($tbl,$col,$value){
	include ('connect.php');
	$query = 'SELECT * FROM '.$tbl.' WHERE '.$col.'='.$value;
	$runQuery = $pdo->query($query);
	if($runQuery){
		return $runQuery;
	}else{
		$error = 'There was a problem';
		return $error;
	}
}
