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
        $conexion = parent::Conexion();
        parent::set_names();
        if($operador == 1){
            $sql = "SELECT * FROM registros WHERE STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN :inicio AND :fin ORDER BY STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') ASC";
            $sql = $conexion -> prepare($sql);
        }else{
            $sql = "SELECT * FROM registros WHERE operador = :operador AND STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') BETWEEN :inicio AND :fin ORDER BY STR_TO_DATE(`fecha_reclamo`, '%d/%m/%Y') ASC";
            $sql = $conexion -> prepare($sql);
            $sql -> bindParam(":operador",$operador);
        }
        $sql -> bindParam(":inicio",$inicio);
        $sql -> bindParam(":fin",$fin);
        $sql -> execute();
        $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
        return $resultado;
    }

    public function reqProcedure($operador){
        $conexion = parent::Conexion();
        parent::set_names();
        $sql = 'CALL getAllByClaimAndOperator(:operador)';
        $sql = $conexion -> prepare($sql);
        $sql -> bindParam(":operador",$operador);
        $sql -> execute();
        $resultado = $sql -> fetch(PDO::FETCH_ASSOC);
        return $resultado;
    }

    
   
}


?>