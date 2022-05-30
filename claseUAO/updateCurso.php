<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);


$id=$_POST['id_curs'];
$nombre =$_POST['nombre_curso'];
$descripcion=$_POST['descripcion'];
$duracion=$_POST['duracion'];
$dia=$_POST['dia'];
$inicio=$_POST['horaInico'];
$final=$_POST['horaFin'];
$primParcial=$_POST['primParcial'];
$segParcial=$_POST['segParcial'];
$terParcial=$_POST['terParcial'];
$novedades=$_POST['novedades'];



$query = "update cursos set nombre_curso = '".$nombre."', descripcion = '".$descripcion."', duracion = '".$duracion."'
,dia = '".$dia."',horaInico = '".$inicio."',horaFin = '".$final."',primParcial = '".$primParcial."',segParcial = '".$segParcial."'
,terParcial = '".$terParcial."',novedades = '".$novedades."' where id_curs = '".$id."'";
//$query = "insert into personas(dni, nombre, telefono, email) values ('1', 'asd', 'asd', 'asd')";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));

mysqli_close($conn);

?>