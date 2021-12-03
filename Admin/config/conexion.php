<?php

class Conexion{
    protected $db;

    public function Conexion(){
        try {
            $conectar = $this -> db = new PDO("mysql:host=localhost;dbname=odeco","root","");
            return $conectar;
        } catch (Exception $e) {
            print "Error al conectar".$e -> getMessage()."<br>";
            die();
        }
    }

    public function set_names(){
        return $this -> db -> query("SET NAMES 'utf8'");
    }
}


?>