<?php 
require_once '../model/database.php';

class marca {

    public $codigo;
    public $marca;

    public function __construct($codigo = '', $marca ='') {

        $this->codigo = $codigo;
        $this->marca = $marca;
    }

    public function listar(){
        try {

            $pdo = new DB();
            $stm = $pdo->conexion()->prepare("select * from marca order by marca");
            $stm->execute();
            
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }
}