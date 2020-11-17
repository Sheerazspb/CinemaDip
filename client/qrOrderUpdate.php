<?php
require '../admin/connection.php';
$id = $_POST['nId'];
$qr = $_POST['nQr'];
$sql = "UPDATE  makeOrder SET qrCode = ('$qr') WHERE id = $id";
$res = mysqli_query($conn, $sql);
if ($res) {
    echo 1;
}
