<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);

$id=$_POST['Evento'];


$query = "select nombre, apellidos from usuarios u, asistencias a where a.fk_evento='".$id."' and u.id=a.fk_usuarios;";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));


$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('nombre' => $row['nombre'],'apellidos' => $row['apellidos']);
    array_push($arr1, $arra);

}


echo json_encode(array('curso' => $arr1));




    


mysqli_close($conn);


?>