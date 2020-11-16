<?php
require 'connection.php';
$id = $_POST['id'];
$standardPrice = $_POST['standard'];
$vipPrice = $_POST['vip'];
$sql = "UPDATE  cinemaHalls SET standardPrice = '$standardPrice' WHERE id = $id";
$sql2 = "UPDATE  cinemaHalls SET vipPrice = '$vipPrice' WHERE id = $id";
$res = mysqli_query($conn, $sql);
$res2 = mysqli_query($conn, $sql2);
if($res || $res2) {
    echo 1;
    } else {
    echo 0;
}
?>