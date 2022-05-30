<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);

$id=$_POST['id'];
$tipo=$_POST['tipo'];

$query = "select id,nombre, apellidos FROM usuarios WHERE rol ='".$tipo."'
EXCEPT (SELECT id,nombre, apellidos FROM usuarios u, participaciones p WHERE u.id=p.id_user and p.id_curso='".$id."');";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));


$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('id' => $row['id'], 'nombre' => $row['nombre'],'apellidos' => $row['apellidos']);
    array_push($arr1, $arra);

}


echo json_encode(array('curso' => $arr1));




    


mysqli_close($conn);


?>