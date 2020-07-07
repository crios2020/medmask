<?php

include $_SERVER['DOCUMENT_ROOT']."/medmask/phpCore/medMaskCore/php/config.php";
include $_SERVER['DOCUMENT_ROOT']."/medmask/phpCore/medMaskCore/php/connector.php";

if(!isset($_GET['pais']) || $_GET['pais']=='') $_GET['pais']='Argentina';

if(!isset($_GET['provincia']) || $_GET['provincia']=='')      $_GET['provincia']='CABA';

    $dbConn = connect($db);
    $sql = $dbConn->prepare("SELECT a.id, a.idUsuario, u.nombre, u.apellido, u.email FROM armadores a JOIN usuarios u ON a.idUsuario=u.id where pais=:pais and provincia=:provincia and localidad=:localidad");
    $sql->bindValue(1,':pais', $_GET['pais']);
    $sql->bindValue(2,':provincia', $_GET['provincia']);
    $sql->bindValue(3,':localidad', $_GET['localidad']);
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    header("HTTP/1.1 200 OK");
    header('Content-type:application/json');
    echo json_encode($sql->fetchAll());
    exit();


?>
