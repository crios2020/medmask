<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$dbConn =  connect($db);
	$sql = $dbConn->prepare("SELECT dc.id,dc.idDonante,dc.estado,dc.fechaPublicacion,dc.fechaDonacion,dc.mensaje,u.id,u.nombre,u.apellido,u.localidad,u.provincia,u.pais,u.email FROM donaciones dc JOIN donantes dn ON dc.idDonante = dn.id JOIN usuarios u ON dn.idUsuario = u.id");
	$sql->execute();
	$sql->setFetchMode(PDO::FETCH_ASSOC);
	header("HTTP/1.1 200 OK");
	header('Content-type:application/json');
	echo json_encode($sql->fetchAll());
	exit();
?>
