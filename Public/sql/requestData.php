<?php 

include_once("./Admin/config/conexion.php");
include_once("./Admin/models/Proyecto.php");

$proyecto = new Proyecto();


if(isset($_POST['custom'])){
    if(isset($_POST['operador'])){
        $registros = $proyecto -> filterByPeriod($_POST['inicio'],$_POST['fin'],$_POST['operador']);
    }else{
        $registros = $proyecto -> filterByPeriod($_POST['inicio'],$_POST['fin'],1);
    }
}else{
    $registros = $proyecto -> getAll();
}


?>