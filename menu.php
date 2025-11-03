<?php
include "conexion.php"; 
 // capturar datos del formulario
$tipo_empresa = $_POST ['opcion'];

// crear la instancia de la conexion

$conexion = new Conexion();

// obtener la conexion

$conn = $conexion->getConexion();

// Verificar si se seleccionó una opción
if (isset($_POST['opcion'])) {
    $tipo_usuario = $conn->real_escape_string($_POST['opcion']);

    // Insertar en la base de datos
    $sql = "INSERT INTO tipo_empresa (tipo_usuario) VALUES ('$tipo_usuario')";

    if ($conn->query($sql) === TRUE) {
        // Redirigir según la opción seleccionada
        switch ($tipo_usuario) {
            case "Contratista In House":
                header("Location: ContratistaInHouse.html");
                exit();
            case "Contratista Ocasional":
                header("Location: ContratistaOcacional.html");
                exit();
            case "Visitante":
                header("Location: Visitante.html");
                exit();
            default:
                echo "Opción no reconocida.";
        }
    } else {
        echo "Error al registrar: " . $conn->error;
    }
} else {
    echo "No se seleccionó ninguna opción.";
}

$conn->close();
?>
