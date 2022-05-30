<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);

$id=$_POST['id'];


$query = "select * FROM cursos WHERE id_curs=(SELECT max(id_curs) FROM cursos);";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));

$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('id_curs' => $row['id_curs'],'nombre_curso' => $row['nombre_curso'],'descripcion' => $row['descripcion'], 'duracion' => $row['duracion'], 'dia' => $row['dia'],
     'horaInico' => $row['horaInico'], 'horaFin' => $row['horaFin'], 'primParcial' => $row['primParcial'], 'segParcial'=>$row['segParcial'],
      'terParcial'=>$row['terParcial'], 'novedades'=>$row['novedades']);
    array_push($arr1, $arra);
	

}
echo json_encode(array('user' => $arr1));

mysqli_close($conn);


?>