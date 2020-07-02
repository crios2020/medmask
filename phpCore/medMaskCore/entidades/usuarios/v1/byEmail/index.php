<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	if (isset($_GET['email']))
    {
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT * FROM usuarios where email=:email");
		$sql->bindValue(':email', $_GET['email']);
		$sql->execute();
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
		exit();
    }
?>
