<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = new mysqli($host, $username, $pass, $db_name);


$user =$_POST['user'];
$Curso=$_POST['curso'];



$query = "insert into participaciones (id_participacion, id_user, id_curso) VALUES (NULL, '".$user."', '".$Curso."');";

$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));
