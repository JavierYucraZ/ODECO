<?php

class Proyecto extends Conexion{
    public function getAll(){
        $conexion = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM registros";
        $sql = $conexion -> prepare($sql);
        $sql -> execute();
        $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
        return $resultado;
    }


    // SELECT * FROM registros WHERE `fecha_reclamo` BETWEEN '01/09/2021' AND '21/09/2021' ORDER BY `fecha_reclamo` ASC 

    public function filterByPeriod($inicio, $fin, $operador="*"){
        $conexion = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM registros WHERE `fecha_reclamo` BETWEEN :inicio AND :fin AND operador = ':operador' ORDER BY `fecha_reclamo` ASC";
        $sql = $conexion -> prepare($sql);
        $sql -> execute();
        $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
        return $resultado;
    }

    
   
}


?>