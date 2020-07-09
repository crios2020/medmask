<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	if (isset($_GET['localidad'])){
		if(!isset($_GET['provincia']) 	|| $_GET['provincia']=='') 	$_GET['provincia']='CABA';
		if(!isset($_GET['pais']) 		|| $_GET['pais']=='') 		$_GET['pais']='Argentina';
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT id,nombre,apellido,pais,provincia,localidad,email FROM usuarios where localidad=:localidad and provincia=:provincia and pais=:pais");
		bindAllValues($sql, $_GET);
		$sql->execute();
		$sql->setFetchMode(PDO::FETCH_ASSOC);
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetchAll());
		exit();
    }
?>
