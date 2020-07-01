<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$dbConn =  connect($db);
	$sql = $dbConn->prepare("SELECT * FROM materiales");
	$sql->execute();
	$sql->setFetchMode(PDO::FETCH_ASSOC);
	header("HTTP/1.1 200 OK");
	header('Content-type:application/json');
	echo json_encode($sql->fetchAll());
	exit();
?>
