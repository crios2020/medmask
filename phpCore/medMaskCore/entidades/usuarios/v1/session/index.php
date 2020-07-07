<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	$input = $_POST;
	if (isset($input['email']) && isset($input['pass']))
    {
		$dbConn =  connect($db);
		$sql = $dbConn->prepare("SELECT * FROM usuarios where email=:email and pass=:pass");
		$sql->bindValue(':email', $input['email']);
		$sql->bindValue(':pass', $input['pass']);
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
