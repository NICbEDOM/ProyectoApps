<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);


$cedulas =$_POST['cedulas'];
$nombre=$_POST['nombre'];
$apellidos=$_POST['apellidos'];
$facultad=$_POST['facultad'];
$programa=$_POST['programa'];
$usuario=$_POST['usuario'];
$contrasena=$_POST['contrasena'];
$rol=$_POST['rol'];


$query = "insert into usuarios (cedulas,nombre,apellidos,facultad,programa,usuario,contrasena,rol) values ('".$cedulas."','".$nombre."','".$apellidos."','".$facultad."','".$programa."','".$usuario."','".$contrasena."','".$rol."')";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));


?>