<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	if (isset($_GET['id'])){
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT id,nombre,apellido,pais,provincia,localidad,email FROM usuarios where id=:id");
		$sql->bindValue(':id', $_GET['id']);
		$sql->execute();
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
		exit();
    }
?>
