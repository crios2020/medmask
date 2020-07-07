<?php
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/config.php";
	include $_SERVER['DOCUMENT_ROOT']."/medMaskCore/php/connector.php";
	$dbConn =  connect($db);
	$StrgSql = "SELECT * FROM materialesParaDonar MD, materiales M, donaciones D 
				where MD.idMaterial=M.id and MD.idDonacion=D.id";
	$sql = $dbConn->prepare($StrgSql);
	$sql->execute();
	$sql->setFetchMode(PDO::FETCH_ASSOC);
	header("HTTP/1.1 200 OK");
	header('Content-type:application/json');
	echo json_encode($sql->fetchAll());
	exit();
?>