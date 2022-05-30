<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = new mysqli($host, $username, $pass, $db_name);


$nombre =$_POST['nombre'];
$descripcion=$_POST['descripcion'];
$duracion=$_POST['duracion'];
$dia=$_POST['dia'];
$horaInico=$_POST['horaInico'];
$horaFin=$_POST['horaFin'];
$primParcial=$_POST['primParcial'];
$segParcial=$_POST['segParcial'];
$terParcial=$_POST['terParcial'];
$novedades=$_POST['novedades'];


$query = "insert into cursos (nombre_curso,descripcion,duracion,dia,horaInico,horaFin,primParcial,segParcial,terParcial,novedades) values
 ('$nombre','$descripcion','$duracion','$dia','$horaInico','$horaFin','$primParcial','$segParcial','$terParcial','1')";

$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));
