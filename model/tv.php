<?php 

require_once '../model/database.php';

class TV {
    private $pdo;

    public $codigo;
    public $descripcion;
    public $familia;
    public $cod_marca;
    public $cod_tamaño;
    public $tipo;
    public $definicion;
    public $smart_tv;
    public $android_tv;
    public $medidas_sin_peana;
    public $color;
    public $usb;
    public $hdmi;
    public $wifi;
    public $compatible;
    public $precio;


    function __construct ($codigo = "", $descripcion = "", $familia = "", $cod_marca = "", $cod_tamaño = "", $tipo = "", $definicion = "", $smart_tv = "", $android_tv = "", $medidas_sin_peana = "", $color = "", $usb = "", $hdmi = "", $wifi = "", $compatible = "", $precio = ""){

    $this->codigo = $codigo;
    $this->descripcion = $descripcion;
    $this->familia = $familia;
    $this->cod_marca = $cod_marca;
    $this->cod_tamaño = $cod_tamaño;
    $this->tipo = $tipo;
    $this->definicion = $definicion;
    $this->smart_tv = $smart_tv;
    $this->android_tv = $android_tv;
    $this->medidas_sin_peana = $medidas_sin_peana;
    $this->color = $color;
    $this->usb = $usb;
    $this->hdmi = $hdmi;
    $this->wifi = $wifi;
    $this->compatible = $compatible;
    $this->precio = $precio;

        try {
            $this->pdo = new DB;
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function obtener($var){
        try {
            $res = $this->pdo->conexion()->prepare("select * FROM articulos WHERE codigo = '$var'");

            $res->execute();

            return $res->fetch(PDO::FETCH_OBJ);
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function insertar(){
        try {
            $resultado = $this->pdo->conexion()->prepare("insert into articulos (codigo, descripcion, familia, cod_marca, cod_tamaño, tipo, definicion, smart_tv, android_tv, medidas_sin_peana, color, usb, hdmi, wifi, compatible, precio) values ('$this->codigo', '$this->descripcion', '$this->familia', '$this->cod_marca', '$this->cod_tamaño', '$this->tipo','$this->definicion', '$this->smart_tv', '$this->android_tv', '$this->medidas_sin_peana', '$this->color', '$this->usb', '$this->hdmi', '$this->wifi', '$this->compatible', '$this->precio')");

            $resultado->execute();
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function actualizar(){
        try {
            $resultado = $this->pdo->conexion()->prepare("update articulos set codigo = '$this->codigo', descripcion = '$this->descripcion', familia = '$this->familia', cod_marca = '$this->cod_marca', cod_tamaño = '$this->cod_tamaño', tipo = '$this->tipo', definicion = '$this->definicion', smart_tv = '$this->smart_tv', android_tv = '$this->android_tv', medidas_sin_peana = '$this->medidas_sin_peana', color = '$this->color', usb = '$this->usb', hdmi = '$this->hdmi', wifi = '$this->wifi', compatible = '$this->compatible', precio = '$this->precio' where codigo = '$this->codigo'");

            $resultado->execute();
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }

    
    public function borrar(){
        try {

            $stm = $this->pdo->conexion()->prepare("delete from articulos where codigo = :codigo");
            $stm->bindValue(':codigo', $this->codigo, PDO::PARAM_STR);
            $stm->execute();
        } 
        catch (Exception $e) {
            die($e->getMessage());
        }
    }
}