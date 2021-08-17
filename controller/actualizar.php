<?php 

require_once '../model/tv.php';

$tv = new TV($_POST['codigo'], $_POST['descripcion'], $_POST['familia'], $_POST['marca'], $_POST['tamaño'], $_POST['tipo'], $_POST['definicion'], $_POST['medidas_sin_peana'], $_POST['color'], $_POST['usb'], $_POST['hdmi'], $_POST['compatible'], $_POST['precio'] );

try{
    $tv->actualizar();

    $jsondata['success'] = true;

    echo json_encode($jsondata, JSON_FORCE_OBJECT);
}

catch (Exception $e) {
    die($e->getMessage());
}
