<?php 
require_once '../model/database.php';

class familia {

    public $codigo;
    public $familia;

    public function __construct($codigo = '', $familia ='') {

        $this->codigo = $codigo;
        $this->tamaño = $familia;
    }

    public function listar(){
        try {

            $pdo = new DB();
            $stm = $pdo->conexion()->prepare("select * from familias order by familia");
            $stm->execute();
            
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }
}