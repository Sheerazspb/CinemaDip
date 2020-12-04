<?php
$dbservername = "localhost";
$dbuser = "root";
$dbpassword = "root";
$dbname = "go2cinema";
$conn = mysqli_connect($dbservername,$dbuser,$dbpassword,$dbname);
if (!$conn) {
    die("no connection");
} 
?>