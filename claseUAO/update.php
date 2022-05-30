<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);


$id=$_POST['id'];
$cedulas =$_POST['cedulas'];
$nombre=$_POST['nombre'];
$apellidos=$_POST['apellidos'];
$facultad=$_POST['facultad'];
$programa=$_POST['programa'];
$usuario=$_POST['usuario'];
$contrasena=$_POST['contrasena'];
$rol=$_POST['rol'];



$query = "update usuarios set cedulas = '".$cedulas."', nombre = '".$nombre."', apellidos = '".$apellidos."', facultad = '".$facultad."'
,programa = '".$programa."',usuario = '".$usuario."',contrasena = '".$contrasena."',rol = '".$rol."' where usuario = '".$usuario."'";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));

mysqli_close($conn);

?>