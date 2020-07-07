<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$input = $_GET;
	$sql = "INSERT INTO donantes
		  (idUsuario)
		  VALUES
		  (:idUsuario)";
	$dbConn =  connect($db);
	$statement = $dbConn->prepare($sql);
	bindAllValues($statement, $input);
	$statement->execute();
	$postId = $dbConn->lastInsertId();
	
	if($postId)
	{
		$input['id'] = $postId;
		header("HTTP/1.1 200 OK");
		header('Content-type:application/json');
		echo json_encode($input);
		exit();
	}
?>