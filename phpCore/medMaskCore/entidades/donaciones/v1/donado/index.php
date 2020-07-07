<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$input = $_GET;
	$sql = "UPDATE donaciones SET estado='Donado', fechaDonacion=curdate() WHERE id=:id";
	$dbConn =  connect($db);
	$statement = $dbConn->prepare($sql);
	bindAllValues($statement, $input);
	$statement->execute();
  $sql = "UPDATE materialesParaDonar SET cantidad=:cantidad WHERE idDonacion=:id";
	$dbConn =  connect($db);
	$statement = $dbConn->prepare($sql);
	bindAllValues($statement, $input);
	$statement->execute();
	header("HTTP/1.1 200 OK");
	header('Content-type:application/json');
	echo json_encode($input);
	exit();
?>
