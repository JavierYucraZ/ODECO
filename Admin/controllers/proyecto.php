<?php

require_once("../config/conexion.php");
require_once("../models/Proyecto.php");
require_once("../config/headers.php");

$proyecto = new Proyecto();
$body = json_decode(file_get_contents("php://input"),true);

switch ($_GET['service']) {
    case 'getAll':
        $result = $proyecto -> getAll();
        echo json_encode($result);
        break;
    case "filterByPeriod":
        if(isset($body['operador'])){
            $result = $proyecto -> filterByPeriod($body['inicio'],$body['fin'],$body['operador']);
        }else{
            $result = $proyecto -> filterByPeriod($body['inicio'],$body['fin'], 1);
        }
        echo json_encode($result);
        break;
    case "getAllClaimByOperator":
        $result = $proyecto -> reqProcedure($body['operador']);
        echo json_encode($result);
        break;
}



?>