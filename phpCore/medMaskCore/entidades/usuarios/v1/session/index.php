<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	if (isset($_GET['email']) && isset($_GET['pass']))
    {
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT * FROM usuarios where email=:email and pass=:pass");
		$sql->bindValue(':email', $_GET['email']);
		$sql->bindValue(':pass', $_GET['pass']);
		$sql->execute();
		$sql->setFetchMode(PDO::FETCH_ASSOC);
		$resultado = $sql->fetchAll();
		$cant=count($resultado);
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		if($cant==1) echo 'true';
		else echo 'false';
		exit();
    }
?>