<?php
require 'connection.php';
if (isset($_POST['addHall'])) {
    $hallName = $_POST['name'];
    $sql = "INSERT INTO cinemaHalls (hallName) VALUES ('$hallName')";
    $res = mysqli_query($conn,$sql);
    if ($res){
        header("Location: ../index.php");
            } else {
                echo 'Something went wrong';
            }
        }
?>