<?php
require 'connection.php';
  if (isset($_REQUEST['delHall'])) {
      $id = $_REQUEST['id'];
      $sql = "DELETE FROM cinemaHalls WHERE id = $id";
      $res = mysqli_query($conn, $sql);
      if ($res) {
          header("Location: index.php");
      }
    }
    ?>
