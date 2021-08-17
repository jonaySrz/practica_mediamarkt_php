<?php 

require_once '../model/tv.php';

$tv = new TV($_POST['codigo']);

try{
    $tv->borrar();

    $jsondata['success'] = true;

    echo json_encode($jsondata, JSON_FORCE_OBJECT);
}

catch (Exception $e) {
    die($e->getMessage());
}
