<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = new mysqli($host, $username, $pass, $db_name);


$Evento =$_POST['evento'];
$Curso=$_POST['curso'];
$Usuario=$_POST['usuario'];


$query = "insert into asistencias (id_asistencias, fk_evento, fk_cursos,fk_usuarios, insersiones) values 
(NULL,'$Evento','$Curso','$Usuario',current_timestamp())";

$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));
