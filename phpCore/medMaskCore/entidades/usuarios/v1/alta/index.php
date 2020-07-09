<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/utils.php";
	$input = $_POST;
	if(!isset($input['provincia']) || $input['provincia']=='') $input['provincia']='CABA';
	if(!isset($input['pais']) || $input['pais']=='') $input['pais']='Argentina';
	$sql = "INSERT INTO usuarios
		  (nombre, apellido, localidad, provincia, pais, email, pass)
		  VALUES
		  (:nombre, :apellido, :localidad, :provincia, :pais, :email, :pass)";
	header("HTTP/1.1 200 OK");
	header('Content-type:application/json');
	try {
		$dbConn =  connect($db);
		$statement = $dbConn->prepare($sql);
		bindAllValues($statement, $input);
		$statement->execute();
		$postId = $dbConn->lastInsertId();
		if($postId){
			echo json_encode('true');
		}else{
			echo json_encode('false');
		}
	} catch (Throwable $e) {
		echo json_encode('false');
	}
	exit();
?>
