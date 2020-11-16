<?php
require '../admin/connection.php';
$id = $_POST['nId'];
$totalPrice = $_POST['nTotalPrice'];
$seats = $_POST['nSeats'];
$rows = $_POST['nRows'];
$seats = serialize($_POST['nSeats']);
$rows = serialize($_POST['nRows']);
$sql = "UPDATE  makeOrder SET totalPrice = ('$totalPrice'), seats = ('$seats'), rows = ('$rows') WHERE id = $id";
$res = mysqli_query($conn, $sql);
if ($res) {
    echo 1;
}
