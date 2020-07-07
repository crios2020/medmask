<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	if (isset($_GET['localidad']))
    {
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT id,nombre,apellido,pais,provincia,localidad,email FROM usuarios where localidad=:localidad");
		$sql->bindValue(':localidad', $_GET['localidad']);
		$sql->execute();
		$sql->setFetchMode(PDO::FETCH_ASSOC);
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetchAll());
		exit();
    }
?>
