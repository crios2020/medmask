<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
    include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	$dbConn = connect($db);
	$sql = $dbConn->prepare("SELECT a.id, a.idUsuario, u.nombre, u.apellido, u.pais, u.provincia, u.localidad, u.email FROM armadores a join usuarios u on u.id=a.idUsuario");
	$sql->execute();
	$sql->setFetchMode(PDO::FETCH_ASSOC);
	header("HTTP/1.1 200 OK"); 
	header('Content-type:application/json');
	echo json_encode($sql->fetchAll());
	exit();
?>
