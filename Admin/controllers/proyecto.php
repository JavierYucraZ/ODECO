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
    case "filter":
        $result = $proyecto -> filterByPeriod($body['inicio'], $body['fin']);
        echo json_encode($result);
        break;
    
}



?>