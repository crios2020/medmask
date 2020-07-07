<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	if (isset($_GET['estado']))
    {
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT dc.id,dc.idDonante,dc.estado,dc.fechaPublicacion,dc.fechaDonacion,dc.mensaje,u.id,u.nombre,u.apellido,u.localidad,u.provincia,u.pais,u.email FROM donaciones dc JOIN donantes dn ON dc.idDonante = dn.id JOIN usuarios u ON dn.idUsuario = u.id WHERE dc.estado=:estado");
		$sql->bindValue(':estado', $_GET['estado']);
		$sql->execute();
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
		exit();
    }
?>
