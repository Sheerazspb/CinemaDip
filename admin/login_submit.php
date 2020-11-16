<?php
session_start();
require 'connection.php';
if (isset($_POST['login'])) {
    $user = $_POST["mail"];
    $pass = $_POST["pwd"]; 
    $sql = "SELECT * FROM users WHERE login = '$user' and pass = '$pass'";
    $res = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($res);
    if ($user === $row['login'] && $pass === $row['pass']) {
        $_SESSION['logged_in'] = '1';
        header("Location: index.php");
    } else {
        header("Location: login.php");
    }
} 
?>