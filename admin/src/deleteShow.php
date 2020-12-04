<?php
require 'connection.php';
$id = $_POST['showIdN'];
    $sql = "DELETE FROM shows WHERE id = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
    echo "Сеанс удален!";
    } else 
    {echo "Ошибка при удалении сеанса!";}
?>