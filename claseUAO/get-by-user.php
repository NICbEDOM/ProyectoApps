<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);

$usuario=$_POST['usuario'];
$tabla=$_POST['tabla'];

$query = "select * from usuarios where ".$tabla." = '".$usuario."'";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));


$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('id' => $row['id'],'cedulas' => $row['cedulas'],'nombre' => $row['nombre'], 'apellidos' => $row['apellidos'], 'facultad' => $row['facultad'],
     'programa' => $row['programa'], 'usuario' => $row['usuario'], 'contrasena' => $row['contrasena'], 'rol'=>$row['rol']);
    array_push($arr1, $arra);
	

}
echo json_encode(array('user' => $arr1));

mysqli_close($conn);


?>