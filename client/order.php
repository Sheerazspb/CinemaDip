<?php
require '../admin/src/connection.php';
$movie = $_POST['nMovie'];
$time = $_POST['nTime'];
$hall = $_POST['nHall'];
$sql = "INSERT INTO makeOrder (movieName,time,hallName) VALUES ('$movie','$time','$hall')";
$res = mysqli_query($conn,$sql);



