<?php
include "conexion.php";

// Capturar datos del formulario
$nombre_empresa = $_POST['nombre'];
$fecha_actividad = $_POST['fecha'];
$actividad = $_POST['actividad'];

// Manejo del archivo
$archivo = $_FILES['archivo'];
$nombre_archivo = basename($archivo['name']);
$ruta_destino = "uploads/" . $nombre_archivo;

// Mover archivo al servidor
if (move_uploaded_file($archivo['tmp_name'], $ruta_destino)) {
    // Crear instancia de conexión
    $conexion = new Conexion();
    $conn = $conexion->getConexion();

    // Consulta SQL con sentencia preparada
    $sql = "INSERT INTO contratista_in_house (nombre_empresa, fecha_actividad, nombre_archivo, actividad) 
            VALUES (?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssss", $nombre_empresa, $fecha_actividad, $nombre_archivo, $actividad);

    if ($stmt->execute()) {
        echo "✅ Actividad registrada correctamente.";
    } else {
        echo "❌ Error al registrar la actividad: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
} else {
    echo "❌ Error al subir el archivo.";
}
?>
