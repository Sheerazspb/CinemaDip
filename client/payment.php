<?php
require '../admin/src/connection.php';
$sql = "select id from makeOrder";
$res = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($res)) {
    $getId = $row['id'];
  }
?>

  <!DOCTYPE html>
  <html lang="ru">
  <?php
  include '../admin/head.html';
  ?>

  <body>
    <header class="page-header">
      <h1 class="page-header__title">Идём<span>в</span>кино</h1>
    </header>
    <main>
      <section class="ticket">
        <header class="tichet__check">
          <h2 class="ticket__check-title">Вы выбрали билеты:</h2>
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
        ?>
            <div class="ticket__info-wrapper" data-="<?= $row['id'] ?>">
              <p class="ticket__info" id="movieInfo">На фильм: <span class="ticket__details ticket__title"><?= $row['movieName'] ?></span></p>
              <?php
              foreach ($newRows as $key1 => $rowValue) {
                foreach ($newSeats as $key2 => $seatValue) {
                  if ($key1 === $key2) {
              ?>
                    <p class="ticket__info seatRowInfo">
                      Ряд:<span class="ticket__details ticket__chairs"> <?= $rowValue ?></span>
                      Место:<span class="ticket__details ticket__chairs"> <?= $seatValue ?></span>
                    </p>
              <?php
                  }
                }
              }
              ?>
              <p class="ticket__info" id="hallInfo">В зале: <span class="ticket__details ticket__hall"><?= $row['hallName'] ?></span></p>
              <p class="ticket__info" id="timeInfo">Начало сеанса: <span class="ticket__details ticket__start"><?= substr($row['time'], 0, 5); ?></span></p>
              <p class="ticket__info" id="priceInfo">Стоимость: <span class="ticket__details ticket__cost"><?= $row['totalPrice'] ?></span> рублей</p>
        <?php
          }
        }
      ?>
        <button id="getQrCode" class="acceptin-button">Получить код бронирования</button>

        <p class="ticket__hint">После оплаты билет будет доступен в этом окне, а также придёт вам на почту. Покажите QR-код нашему контроллёру у входа в зал.</p>
        <p class="ticket__hint">Приятного просмотра!</p>
            </div>
      </section>
    </main>
    <script src="../admin/js/jquery-3.5.1.js"></script>
    <script src="client.js"></script>
  </body>

  </html>