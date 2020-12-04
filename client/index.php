<?php
require '../admin/src/connection.php';
require '../admin/src/addHall.php';
require '../admin/src/addMovie.php';
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

  <nav class="page-nav">
    <a class="page-nav__day page-nav__day_today" href="#">
      <span class="page-nav__day-week">Пн</span><span class="page-nav__day-number">31</span>
    </a>
    <a class="page-nav__day" href="#">
      <span class="page-nav__day-week">Вт</span><span class="page-nav__day-number">1</span>
    </a>
    <a class="page-nav__day page-nav__day_chosen" href="#">
      <span class="page-nav__day-week">Ср</span><span class="page-nav__day-number">2</span>
    </a>
    <a class="page-nav__day" href="#">
      <span class="page-nav__day-week">Чт</span><span class="page-nav__day-number">3</span>
    </a>
    <a class="page-nav__day" href="#">
      <span class="page-nav__day-week">Пт</span><span class="page-nav__day-number">4</span>
    </a>
    <a class="page-nav__day page-nav__day_weekend" href="#">
      <span class="page-nav__day-week">Сб</span><span class="page-nav__day-number">5</span>
    </a>
    <a class="page-nav__day page-nav__day_next" href="#">
    </a>
  </nav>

  <main>
    <?php
    $sql = "select * from Movies";
    $res = mysqli_query($conn, $sql);
    if (mysqli_num_rows($res) > 0) {
      while ($row = mysqli_fetch_assoc($res)) {
      ?>
        <section class="movie">
          <div class="movie__info">

            <div class="movie__poster">
              <img class="movie__poster-image" alt="Звёздные войны постер" src="i/poster1.jpg">
            </div>

            <div class="movie__description">
              <h2 class="movie__title"><?= $row['movie'] ?></h2>
              <p class="movie__synopsis"><?= $row['aboutMovie'] ?></p>
              <p class="movie__data">
                <span class="movie__data-duration"><?= $row['duration'] ?> минут </span>
                <span class="movie__data-origin"><?= $row['country'] ?></span>
              </p>
            </div>
          </div>

          <?php
          $sql = "select hallName from cinemaHalls";
          $res2 = mysqli_query($conn, $sql);
          while ($row2 = mysqli_fetch_assoc($res2)) {
            foreach ($row2 as $key => $value) {
            ?>
              <div class="movie-seances__hall">
                <h3 class="movie-seances__hall-title"><?= $value ?></h3>
                  <ul class="movie-seances__list">
                  <?php
                  $sql = "select * from shows";
                  $res3 = mysqli_query($conn, $sql);
                  while ($row3 = mysqli_fetch_assoc($res3)) {
                    $time = [$row3['time']];
                    $addedHall = [$row3['hall']];
                    $addedMovie = [$row3['movie']];
                    foreach ($time as $key => $value1) {
                      $newVal = substr($value1, 0, 5);
                      foreach ($addedHall as $key => $value2) {
                        foreach ($addedMovie as $key => $value3) {
                          if ($value === $value2 && $row['movie'] === $value3) {
                  ?>
                            <li class="movie-seances__time-block"><a data-="<?= $row['movie'] ?>" data-2="<?= $value ?>" class="movie-seances__time" href="hall.php"><?= $newVal ?></a></li>
                  <?php
                          }
                        }
                      }
                    }
                  }
                  ?>
                </ul>
            <?php
            }
          }
          ?>
          </div>
        </section>
        <?php
          }
        }
      ?>
  </main>
  <script src="../admin/js/jquery-3.5.1.js"></script>
  <script src="client.js"></script>
</body>

</html>