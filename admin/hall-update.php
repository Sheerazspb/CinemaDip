<?php
require 'connection.php';

$data = file_get_contents("php://input");
$mydata = json_decode($data,true);
$id = $mydata['id'];
$newdata = $mydata['data'];
    if (strlen($newdata) <= 95) {
        echo "Ошибка зал пустой!";
    } else {
    $sql = "UPDATE  cinemaHalls SET configHall = '$newdata' WHERE id = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        echo "Схема зала в БД добавлена успешно!";
    }else {
        echo "Ошибка при добавлении зала в БД!";
    };
 };
?>