<?php
require 'connection.php';
$id = $_POST['id'];
$standardPrice = $_POST['standard'];
$vipPrice = $_POST['vip'];
$sql = "UPDATE  cinemaHalls SET standardPrice = '$standardPrice' WHERE id = $id";
$sql2 = "UPDATE  cinemaHalls SET vipPrice = '$vipPrice' WHERE id = $id";
$res = mysqli_query($conn, $sql);
$res2 = mysqli_query($conn, $sql2);
echo $res || $res2 ? 1 : 0;
?>