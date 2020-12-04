<?php
require 'connection.php';
$hall = $_GET['hall'];
$sql = "SELECT * FROM shows "; 
$res = mysqli_query($conn,$sql);
if (mysqli_num_rows($res) > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
        echo $row['movie']; 
    }
}
