<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = new mysqli($host, $username, $pass, $db_name);


$titulo =$_POST['titulo'];
$descripcion=$_POST['descripcion'];
$creador=$_POST['creador'];
$cursp=$_POST['curso'];



$query = "insert into novedades (titulos_novedad, descripciones_novedad, creador_novedad,curso_novedad, creacion_novedad) values 
('$titulo','$descripcion','$creador','$cursp',current_timestamp())";

$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));
