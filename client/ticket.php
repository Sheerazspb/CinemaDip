<?php
require '../admin/connection.php';
$sql = "select id from makeOrder";
$res = mysqli_query($conn, $sql);
if (mysqli_num_rows($res) > 0) {
  while ($row = mysqli_fetch_assoc($res)) {
    $getId = $row['id'];
  }
?>

<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ИдёмВКино</title>
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/styles.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
</head>

<body>
  <header class="page-header">
    <h1 class="page-header__title">Идём<span>в</span>кино</h1>
  </header>

  <main>
    <section class="ticket">

      <header class="tichet__check">
        <h2 class="ticket__check-title">Электронный билет</h2>
      </header>
      <?php
      $sql = "select * from makeOrder where id = $getId";
      $res = mysqli_query($conn, $sql);
      if (mysqli_num_rows($res) > 0) {
        while ($row = mysqli_fetch_assoc($res)) {
          $hallSeats = $row['seats'];
          $hallRows = $row['rows'];
          $newSeats = unserialize($hallSeats);
          $newRows = unserialize($hallRows);
          $newQrCode = $row['qrCode'];
      ?>
          <div class="ticket__info-wrapper">
            <p class="ticket__info">На фильм: <span class="ticket__details ticket__title"><?= $row['movieName'] ?></span></p>
            <?php
            foreach ($newRows as $key1 => $rowValue) {
              foreach ($newSeats as $key2 => $seatValue) {
                if ($key1 === $key2) {
            ?>
            <p class="ticket__info">
              Ряд:<span class="ticket__details ticket__chairs"> <?= $rowValue ?></span>
              Место:<span class="ticket__details ticket__chairs"> <?= $seatValue ?></span>
            </p>
            <?php
                }
              }
            }
            ?>
            <p class="ticket__info">В зале: <span class="ticket__details ticket__hall"><?= $row['hallName'] ?></span></p>
            <p class="ticket__info">Начало сеанса: <span class="ticket__details ticket__start"><?= substr($row['time'], 0, 5); ?></span></p>

            <img class="ticket__info-qr" src="<?= $newQrCode ?>">

            <p class="ticket__hint">Покажите QR-код нашему контроллеру для подтверждения бронирования.</p>
            <p class="ticket__hint">Приятного просмотра!</p>
          </div>
      <?php
        }
      }
    }
      ?>
    </section>
  </main>
  <script src="../admin/js/jquery-3.5.1.js"></script>
  <script src="client.js"></script>
</body>

</html>