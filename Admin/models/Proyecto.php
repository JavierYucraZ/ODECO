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

    public function filterByPeriod($inicio, $fin, $operador){
        $startDate = date("d/m/Y",strtotime($inicio));
        $endDate = date("d/m/Y",strtotime($fin));
        
        $conexion = parent::Conexion();
        parent::set_names();
        if($operador == 1){
            $sql = "SELECT * FROM registros WHERE fecha_reclamo BETWEEN :inicio AND :fin ORDER BY fecha_reclamo ASC";
            $sql = $conexion -> prepare($sql);
        }else{
            $sql = "SELECT * FROM registros WHERE operador = :operador AND fecha_reclamo BETWEEN :inicio AND :fin ORDER BY fecha_reclamo ASC";
            $sql = $conexion -> prepare($sql);
            $sql -> bindParam(":operador",$operador);
        }
        $sql -> bindParam(":inicio",$startDate);
        $sql -> bindParam(":fin",$endDate);
        $sql -> execute();
        $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
        return $resultado;
    }

    
   
}


?>