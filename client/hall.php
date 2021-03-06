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
      <section class="buying">
        <div class="buying__info">
          <?php
          $sql = "select * from makeOrder where id = $getId";
          $res = mysqli_query($conn, $sql);
          if (mysqli_num_rows($res) > 0) {
            while ($row = mysqli_fetch_assoc($res)) {
              $movie_name = $row['movieName'];
              $showTime = substr($row['time'], 0, 5);
              $hall_name = $row['hallName'];
          ?>
              <div class="buying__info-description" data-="<?= $row['id'] ?>">
                <h2 class="buying__info-title"><?= $movie_name ?></h2>
                <p class="buying__info-start">Начало сеанса: <?= $showTime ?></p>
                <p class="buying__info-hall"><?= $hall_name ?></p>
              </div>
              <div class="buying__info-hint">
                <p>Тапните дважды,<br>чтобы увеличить</p>
              </div>
        </div>
        <div class="buying-scheme">
          <div class="buying-scheme__wrapper" id="buying-scheme-wrapper">
            <?php
              $sql1 = "select * from cinemaHalls";
              $res1 = mysqli_query($conn, $sql1);
              if (mysqli_num_rows($res1) > 0) {
                while ($row1 = mysqli_fetch_assoc($res1)) {
                  $targetHall = [$row1['hallName']];
                  foreach ($targetHall as $key1 => $hallVal) {
                    if ($hallVal === $row['hallName']) {
            ?>
                    <div id="hall-info"><?= $row1['configHall'] ?></div>
                    <div class="priceConfig" data-="<?= $row1['standardPrice'] ?>" data-2="<?= $row1['vipPrice'] ?>"></div>

                    <script src="../admin/js/jquery-3.5.1.js"></script>
                    <script>
                      let dbRow = [];
                      let dbSeat = [];
                      <?php
                      $sql3 = "SELECT (rows),(seats) FROM makeOrder  WHERE time = '$showTime' AND hallName = '$hall_name' AND movieName = '$movie_name'";
                      $res3 = mysqli_query($conn, $sql3);
                      while ($row3 = mysqli_fetch_all($res3)) {
                        foreach ($row3 as $rowKey => $rowValue) {
                          $hallSeats = $rowValue['1'];
                          $hallRows = $rowValue['0'];
                          $newSeats = json_encode(unserialize($hallSeats));
                          $newRows = json_encode(unserialize($hallRows));
                      ?>
                          dbRow = <?= $newRows ?>;
                          dbSeat = <?= $newSeats ?>;
                          if (dbRow != false || dbSeat != false) {
                            dbRow.forEach((dbRowVal, key1) => {
                              console.log(dbRowVal);
                              dbSeat.forEach((dbSeatVal, key2) => {
                                // console.log(dbSeat)
                                if (key1 == key2) {
                                  console.log(dbSeatVal);
                                  let simpleChair = document.querySelectorAll(".conf-step__chair")
                                  for (let index = 0; index < simpleChair.length; index++) {
                                    let element4 = simpleChair[index];
                                    if (element4.classList.contains('conf-step__chair_standart') || element4.classList.contains('conf-step__chair_vip')) {
                                      $(element4).addClass("xxx");
                                    }
                                  }
                                  // console.log(element4);
                                  let selectedRow = document.querySelectorAll(".conf-step__row")
                                  for (let rowIndex = 0; rowIndex < selectedRow.length; rowIndex++) {
                                    let element = selectedRow[rowIndex];
                                    let xxxChair = element.querySelectorAll(".xxx")
                                    for (let seatInd = 0; seatInd < xxxChair.length; seatInd++) {
                                      let element2 = xxxChair[seatInd];
                                      if (element == selectedRow[dbRowVal - 1] && element2 == xxxChair[dbSeatVal - 1]) {
                                        $(element2).removeClass("conf-step__chair_standart conf-step__chair_vip").addClass("conf-step__chair_taken");
                                      }
                                    }
                                  }
                                }
                              });
                            });
                          }
                        <?php
                        }
                        ?>
                    </script>
      <?php
                      }
                    }
                  }
                }
              }
            }
          }
      ?>
          </div>
        <div class="buying-scheme__legend">
          <div class="col">
            <p class="buying-scheme__legend-price"><span class="conf-step__chair conf-step__chair_standart"></span> Свободно (<span id="standardPrice" class="buying-scheme__legend-value">250</span>руб)</p>
            <p class="buying-scheme__legend-price"><span class="conf-step__chair conf-step__chair_vip"></span> Свободно VIP (<span id="vipPrice" class="buying-scheme__legend-value">350</span>руб)</p>
          </div>
          <div class="col">
            <p class="buying-scheme__legend-price"><span class="conf-step__chair conf-step__chair_taken"></span> Занято</p>
            <p class="buying-scheme__legend-price"><span class="conf-step__chair conf-step__chair_selected"></span> Выбрано</p>
          </div>
        </div>
        </div>
        <button id="makePayment" class="acceptin-button">Забронировать</button>
      </section>
    </main>

    <script src="../admin/js/jquery-3.5.1.js"></script>
    <script src="client.js"></script>
    <script>
    </script>
  </body>

  </html>