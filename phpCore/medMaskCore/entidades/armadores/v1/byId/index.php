<?php
include $_SERVER['DOCUMENT_ROOT']."/medmask/phpCore/medMaskCore/php/config.php";
include $_SERVER['DOCUMENT_ROOT']."/medmask/phpCore/medMaskCore/php/connector.php";

if(isset($_GET['id']))
{
    $dbConn = connect($db);
    $sql = $dbConn->prepare("SELECT a.id, a.idUsuario, u.nombre, u.apellido,
u.pais, u.provincia, u.localidad, u.email FROM armadores a JOIN usuarios u
ON a.idUsuario=u.id where a.id=:id");
    $sql->bindValue(':id', $_GET['id']);
    $sql->execute();
    header("HTTP/1.1 200 OK");
    header('Content-type:application/json');
    echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
    exit();
}



 ?>
