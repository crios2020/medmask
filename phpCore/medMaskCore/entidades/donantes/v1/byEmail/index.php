<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	if (isset($_GET['email']))
    {
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT  d.id, u.id idUsuario, nombre,apellido,pais,provincia,localidad,email FROM usuarios u JOIN donantes d ON u.id=d.idUsuario where email=:email");
		$sql->bindValue(':email', $_GET['email']);
		$sql->execute();
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
		exit();
    }
?>
