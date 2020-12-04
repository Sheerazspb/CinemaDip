<?php
require '../admin/src/connection.php';
$id = $_POST['nId'];
$qr = $_POST['nQr'];
$sql = "UPDATE  makeOrder SET qrCode = ('$qr') WHERE id = $id";
$res = mysqli_query($conn, $sql);
echo $res ? 1 : 0;
