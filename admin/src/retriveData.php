<?php
require 'connection.php';
$id = $_GET['id'];
$sql = "SELECT (configHall)  FROM cinemaHalls WHERE id = $id "; 
$res = mysqli_query($conn,$sql);
if (mysqli_num_rows($res) > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
    echo $row['configHall'];
    }
}
?>