<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	if (isset($_GET['email'])){
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT  s.id, u.id idUsuario, nombre,apellido,pais,provincia,localidad,email,institucion FROM usuarios u JOIN solicitantes s ON u.id=s.idUsuario where email=:email");
		$sql->bindValue(':email', $_GET['email']);
		$sql->execute();
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
		exit();
    }
?>
