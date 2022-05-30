<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);

$id=$_POST['id'];

$query = "select * from eventos where fk_cursos = '".$id."'";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));

$arr1 = array();
while ($row=mysqli_fetch_array($query_execute)) {
    $arra = array('id_eventos' => $row['id_eventos'],'titulos_eventos' => $row['titulos_eventos'],'descripciones_eventos' => $row['descripciones_eventos'],
     'fechaHora_eventos' => $row['fechaHora_eventos'], 'lugar_eventos' => $row['lugar_eventos'], 'fk_usuarios' => $row['fk_usuarios'],
      'fk_cursos' => $row['fk_cursos'], 'inserciones' => $row['inserciones']);
    array_push($arr1, $arra);
	

}
echo json_encode(array('user' => $arr1));

mysqli_close($conn);


?>