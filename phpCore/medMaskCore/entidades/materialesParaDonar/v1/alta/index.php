<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$input = $_GET;
	$id_Donacion = $_GET["idDonacion"];
	$id_Material = $_GET["idMaterial"];
	$cantidad = $_GET["cantidad"];
	$StrgSql = "INSERT INTO materialesParaDonar (idDonacion, idMaterial, cantidad) 
				values(" . $id_Donacion . ", " . $id_Material . ", " . $cantidad . ")";
	$dbConn =  connect($db);
	$statement = $dbConn->prepare($StrgSql);
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
