<?php
include "conexion.php"; 

$conexion = new Conexion();

$conn = $conexion->getConexion();


$usuario = $_POST['usuario'];
$contrasena = $_POST['contrasena'];

$sql = "select  * from usuarios where usuario='$usuario' and contrasena='$contrasena'";

$result = $conn->query($sql);

if($result->num_rows > 0) {

    echo '<script> window.location.href ="Menu.html"; </script>';
} else {

    $mensaje = "Usuario o contraseña incorrectos";
    header("Location: login.html?mensaje= $mensaje ");

}
?>