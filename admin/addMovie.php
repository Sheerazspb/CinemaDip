<?php
require 'connection.php';
// if (isset($_POST['openMovieSaleN'])) {
    $movie = $_POST['movieN'];
    $duration = $_POST['durationN'];
    $country = $_POST['countryN'];
    $description = $_POST['descriptionN'];
    $sql = "INSERT INTO Movies (movie,duration,country,aboutMovie) VALUES ('$movie','$duration','$country','$description')";
    $res = mysqli_query($conn,$sql);
    if ($res) {
        echo 1;
    }
?>