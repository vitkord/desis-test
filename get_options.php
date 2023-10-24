<?php

// Conexión a la base de datos
$servername = "127.0.0.1";
$username = "desis";
$password = "desis";
$dbname = "bd_sistema_votacion";
$dbport = "4200";

$conn = new mysqli($servername, $username, $password, $dbname, $dbport);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener parámetros de la petición
$descripcion = $_POST['descripcion'];
$storedProcedure = $_POST['storedProcedure'];
$parametros = $_POST['parametros'];

// Ejecutamos el procedimiento almacenado y obtenemos los resultados
$sql = "CALL $storedProcedure($parametros)";


$result = $conn->query($sql);

if ($result) {
    $opciones = array();

    while ($row = $result->fetch_assoc()) {
        $opciones[] = $row;
    }

    // Devolver las opciones como JSON
    echo json_encode($opciones);
} else {
    echo "Error al ejecutar el procedimiento almacenado: ";
    //$conn->error
}

// Cerrar la conexión
$conn->close();

?>
