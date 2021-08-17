<?php 
require_once '../model/database.php';

class tamaño {

    public $codigo;
    public $tamaño;

    public function __construct($codigo = '', $tamaño ='') {

        $this->codigo = $codigo;
        $this->tamaño = $tamaño;
    }

    public function listar(){
        try {

            $pdo = new DB();
            $stm = $pdo->conexion()->prepare("select * from tamaño order by tamaño");
            $stm->execute();
            
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }
}