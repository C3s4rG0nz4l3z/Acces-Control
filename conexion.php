<?php
class Conexion {
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "controlacces";
    private $conn;

    public function __construct() {
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);

        if ($this->conn->connect_error) {
            die("Error de conexión: " . $this->conn->connect_error);
        }

        // Establecer codificación UTF-8
        $this->conn->set_charset("utf8");
    }

    public function getConexion() {
        return $this->conn;
    }
}
?>

