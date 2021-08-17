<?php 

require_once '../model/database.php'; 


if (isset($_POST['listar'])){

    $filtro = $_POST['filtro'];
    $inicio = 0;

    if (isset($_POST['inicio'])){
        $inicio = $_POST['inicio'];
    }

    try {

        try {
            $pdo = new DB();

            $stm = $pdo->conexion()->prepare("select count(*) as cantidad from televisores where (descripcion like '%".$filtro."%')");

            $stm->execute();

            $registros = $stm->fetch(PDO::FETCH_OBJ)->cantidad; 
            $jsondata["cantidad"] = $registros;

            $stm = $pdo->conexion()->prepare("select * from televisores where (descripcion like '%".$filtro."%') limit :inicio, 5");

            if ((int) $inicio > $registros) {
                $stm->bindValue(':inicio',(((int) $inicio) -5), PDO::PARAM_INT);    
            } 

            else {
                $stm->bindValue(':inicio',(int) $inicio,PDO::PARAM_INT);
            }

            $stm->execute();

            $jsondata["success"] =  $_POST;
            $jsondata["datos"] = array();

            while( $row = $stm->fetch(PDO::FETCH_OBJ) ) {
                $jsondata["datos"][] = $row;
            }

            echo json_encode($jsondata, JSON_FORCE_OBJECT);
        }

        catch(Exception $e){
            die($e->getMessage());
        }
    }

    catch(Exception $e){
        die($e->getMessage());
    }
}