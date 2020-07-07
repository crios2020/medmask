<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$input = $_GET;
	if(!isset($input['provincia']) || $input['provincia']=='') $input[provincia]='CABA';
	if(!isset($input['pais']) || $input['pais']=='') $input['pais']='Argentina';
	$sql = "INSERT INTO solicitantes
		  (nombre, apellido, localidad, provincia, pais, email, institucion)
		  VALUES
		  (:nombre, :apellido, :localidad, :provincia, :pais, :email, :institucion)";
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

