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

// Obtener datos del formulario
$nombre_apellido = $_POST['nombre_apellido'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$region = $_POST['region'];
$comuna = $_POST['comuna'];
$candidato = $_POST['candidato'];
$como_se_entero = $_POST['como_se_entero'];

// Insertar datos en la base de datos
$sql = "INSERT INTO votantes (nombre_apellido, alias, rut, email, region, comuna, candidato, como_se_entero)
        VALUES ('$nombre_apellido', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$como_se_entero')";

try {
    if ($conn->query($sql) === TRUE) {
        echo "Datos guardados correctamente";
    } 
} catch (Exception $e) {

    if(str_contains($e->getMessage(), 'Duplicate')){
        echo "Este RUT ya hizo una votación";
    }else{
        echo "Error al insertar en bd";
    }    
}

// Cerrar la conexión
$conn->close();
?>
