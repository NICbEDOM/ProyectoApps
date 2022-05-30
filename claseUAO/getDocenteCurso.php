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

$query = "select nombre, apellidos, id from usuarios u, cursos c, participaciones p where p.id_curso='".$id."' and u.rol='".$tipo."' and(c.id_curs=p.id_curso and u.id=p.id_user);";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));


$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('nombre' => $row['nombre'],'apellidos' => $row['apellidos'],'id' => $row['id']);
    array_push($arr1, $arra);

}


echo json_encode(array('curso' => $arr1));




    


mysqli_close($conn);


?>