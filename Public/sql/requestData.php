<?php 

include("./Admin/config/conexion.php");
include("./Admin/models/Proyecto.php");

$proyecto = new Proyecto();

$registros = $proyecto -> getAll();


?>