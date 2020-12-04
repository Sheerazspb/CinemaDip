<?php
require 'connection.php';
$hall = $_POST['hallN'];
$movie = $_POST['movieN'];
$time = $_POST['timeN'];
$styleLeft = $_POST['style'];
$sql = "INSERT INTO shows (hall,movie,time,style) VALUES ('$hall','$movie','$time','$styleLeft')";
$res = mysqli_query($conn, $sql);
echo $res ? 1 : 0;
?>