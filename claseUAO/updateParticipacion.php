<?php

$host = "localhost";
$db_name = "clasesuao";
$username = "root";
$pass = "";
$conn = mysqli_connect($host, $username, $pass)
or trigger_error (mysqli_error($conn), E_USER_ERROR);
mysqli_select_db($conn, $db_name);


$id=$_POST['id'];
$user =$_POST['nuevo'];
$actual =$_POST['actual'];


$query = "delete from participaciones where id_user = '".$actual."' and id_curso = '".$id."'";
//$query = "update participaciones set id_user = '".$user."' where id_user = '".$actual."' and id_curso = '".$id."'";
$query_execute = mysqli_query($conn, $query) or die (mysqli_error($conn));


mysqli_close($conn);

?>