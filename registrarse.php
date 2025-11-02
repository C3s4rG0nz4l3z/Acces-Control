<?php
include "conexion.php"; 
 // capturar datos del formulario

 $usuario = $_POST['nombre'];
 $contrasena = $_POST['password'];
 $confirmar_contrasena = $_POST['confirmar'];
 $email = $_POST['email'];

 // crear la instancia de la conexion
 $conexion = new Conexion();
 // obtener la conexion
 $conn = $conexion->getConexion();

 //consulta sql para insertar datos
 $sql = "INSERT INTO usuarios (usuario, contrasena, confirmar_contrasena, email) VALUES ('$usuario', '$contrasena', '$confirmar_contrasena', '$email')";

 if ($conn->query($sql) === TRUE) {
   
    header('Content-Type: aplication/json');
    echo json_encode(["success"=> true, "message"=> "Registro exitoso"]);
    echo '<script> window.location.href ="login.html"; </script>';
 } else {
   header('Content-Type: aplication/json');
   echo json_encode(["success"=> false, "message"=> "Registro fallido".$sql . $conn->error]);
 }
 
?>