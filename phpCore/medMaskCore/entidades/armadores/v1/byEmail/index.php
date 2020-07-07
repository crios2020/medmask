<?php
include $_SERVER['DOCUMENT_ROOT']."/medmask/phpCore/medMaskCore/php/config.php";
include $_SERVER['DOCUMENT_ROOT']."/medmask/phpCore/medMaskCore/php/connector.php";
if (isset($_GET['email']))
{
    $dbConn = connect($db);
    $sql = $dbConn->prepare("SELECT a.id, a.idUsuario, u.nombre, u.apellido,
      u.pais, u.provincia, u.localidad FROM armadores a JOIN usuarios u
      ON a.idUsuario=u.id where email=:email");
    $sql->bindValue(':email', $_GET['email']);
    $sql->execute();
    header("HTTP/1.1 200 OK");
    header('Content-type:application/json');
    echo json_encode($sql->fetch(PDO::FETCH_ASSOC));
    exit();
}
?>
