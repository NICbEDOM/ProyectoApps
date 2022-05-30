<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);

$id=$_POST['id'];

$query = "select * from novedades where curso_novedad  = '".$id."'";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));

$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('id_novedad' => $row['id_novedad'],'titulos_novedad' => $row['titulos_novedad'],'descripciones_novedad' => $row['descripciones_novedad'],
     'creador_novedad' => $row['creador_novedad'], 'curso_novedad' => $row['curso_novedad'], 'creacion_novedad' => $row['creacion_novedad'],);
    array_push($arr1, $arra);
	

}
echo json_encode(array('novedad' => $arr1));

mysqli_close($conn);


?>