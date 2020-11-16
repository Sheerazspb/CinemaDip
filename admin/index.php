<?php
ob_start();
require 'login_submit.php';
if (isset($_SESSION['logged_in'])) {
?>
  <!DOCTYPE html>
  <html lang="ru">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ИдёмВКино</title>
    <link rel="stylesheet" href="CSS/normalize.css">
    <link rel="stylesheet" href="CSS/styles.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
  </head>

  <body>
    <header class="page-header">
      <h1 class="page-header__title">Идём<span>в</span>кино</h1>
      <span class="page-header__subtitle">Администраторррская</span>
    </header>
    <main class="conf-steps">
      <section class="conf-step">
        <header class="conf-step__header conf-step__header_opened">
          <h2 class="conf-step__title">Управление залами</h2>
        </header>
        <div class="conf-step__wrapper">
          <p class="conf-step__paragraph">Доступные залы:</p>
          <!--------------------------------------Add Hall-------------------------------->
          <ul class="conf-step__list">
            <?php
            $sql = "select * from cinemaHalls";
            $res = mysqli_query($conn, $sql);
            if (mysqli_num_rows($res) > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
            ?>
                <li class="halls"> <?= $row['hallName'] ?>
                  <button name="<?php echo $row['hallName'] ?>" id="<?php echo $row['id'] ?>" class="conf-step__button conf-step__button-trash del-hall"> </button>
                  <!--------------------------------------delete popup-------------------------------->
                  <div class="popup delete-popup">
                    <div class="popup__container">
                      <div class="popup__content">
                        <div class="popup__header">
                          <h2 class="popup__title">
                            Удаление зала
                            <a class="popup__dismiss" href="index.php"><img src="i/close.png" alt="Закрыть"></a>
                          </h2>

                        </div>
                        <div class="popup__wrapper">
                          <form action="delete-hall.php" method="GET" accept-charset="utf-8">
                            <p class="conf-step__paragraph">Вы действительно хотите удалить <span id="span" style="color:red; font-weight: bold; font-size: 18px;"></span><span style="font-size: 20px;">?</span></p>
                            <!-- В span будет подставляться название зала -->
                            <div class="conf-step__buttons text-center">
                              <input type="hidden" class="hidenId" name="id" value="$row['id']">
                              <input name="delHall" type="submit" value="Удалить" class="conf-step__button conf-step__button-accent">
                              <button class="conf-step__button conf-step__button-regular"><a href="index.php">Отменить</a></button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
            <?php
              }
            }
            ?>
          </ul>
          <button id="open-popup" class="conf-step__button conf-step__button-accent">Создать зал</button>
        </div>
        <!----------------------------------popup window------------------------------------------->
        <div class="popup add_popup">
          <div class="popup__container">
            <div class="popup__content">
              <div class="popup__header">
                <h2 class="popup__title">
                  Добавление зала
                  <a class="popup__dismiss" href="index.php"><img src="i/close.png" alt="Закрыть"></a>
                </h2>

              </div>
              <div class="popup__wrapper">
                <form action="add_hall.php" method="POST" accept-charset="utf-8">
                  <label class="conf-step__label conf-step__label-fullsize" for="name">
                    Название зала
                    <input class="conf-step__input clear-field" type="text" placeholder="Например, &laquo;Зал 1&raquo;" name="name" required>
                  </label>
                  <div class="conf-step__buttons text-center">
                    <input type="submit" name="addHall" value="Добавить зал" class="conf-step__button conf-step__button-accent">
                    <button id="clear-feild" class="conf-step__button conf-step__button-regular">Отменить</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="conf-step">
        <header class="conf-step__header conf-step__header_opened">
          <h2 class="conf-step__title">Конфигурация залов</h2>
        </header>
        <div class="conf-step__wrapper">
          <p class="conf-step__paragraph">Выберите зал для конфигурации:</p>
          <ul class="conf-step__selectors-box">
            <!-----------------------------config add hall------------------------------------->
            <?php
            $sql = "select * from cinemaHalls";
            $res = mysqli_query($conn, $sql);
            if (mysqli_num_rows($res) > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
            ?>
                <li class="config-hall"><input type="radio" class="conf-step__radio" name="chairs-hall" value=<?= $row['id'] ?>><span class="conf-step__selector"><?= $row['hallName'] ?></span></li>
            <?php
              }
            }
            ?>
          </ul>
          <p class="conf-step__paragraph">Укажите количество рядов и максимальное количество кресел в ряду:</p>
          <div class="conf-step__legend">
            <label class="conf-step__label">Рядов, шт<input name="hallRow" id="hallRow" type="text" class="conf-step__input" placeholder="10"></label>
            <span class="multiplier">x</span>
            <label class="conf-step__label">Мест, шт<input name="hallChairs" type="text" class="conf-step__input" placeholder="8"></label>
          </div>
          <button id="creat-hall" class="conf-step__button conf-step__button-accent">Нарисовать</button>
          <p class="conf-step__paragraph">Теперь вы можете указать типы кресел на схеме зала:</p>
          <div class="conf-step__legend">
            <span class="conf-step__chair conf-step__chair_standart"></span> — обычные кресла
            <span class="conf-step__chair conf-step__chair_vip"></span> — VIP кресла
            <span class="conf-step__chair conf-step__chair_disabled"></span> — заблокированные (нет кресла)
            <p class="conf-step__hint">Чтобы изменить вид кресла, нажмите по нему левой кнопкой мыши</p>
          </div>
          <!-- <div id="res-msg" style="font-size: 20px; color:deeppink;margin-left:400px;"></div> -->
          <!--------------------------config rows and seats--------------------------------------->
          <div class="conf-step__hall">
            <div class="conf-step__hall-wrapper" id="stepRows">
            </div>
          </div>
          <fieldset class="conf-step__buttons text-center">
            <button id="clear-row" class="conf-step__button conf-step__button-regular">Отмена</button>
            <input id="submit1" type="submit" value="Сохранить" class="conf-step__button conf-step__button-accent">
          </fieldset>
        </div>
      </section>

      <section class="conf-step">
        <header class="conf-step__header conf-step__header_opened">
          <h2 class="conf-step__title">Конфигурация цен</h2>
        </header>
        <div class="conf-step__wrapper">
          <p class="conf-step__paragraph">Выберите зал для конфигурации:</p>
          <ul class="conf-step__selectors-box">
            <?php
            $sql = "select * from cinemaHalls";
            $res = mysqli_query($conn, $sql);
            if (mysqli_num_rows($res) > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
            ?>
                <li class="hallPrice"><input type="radio" class="conf-step__radio" name="prices-hall" value=<?= $row['id'] ?>><span class="conf-step__selector"><?= $row['hallName'] ?></span></li>
            <?php
              }
            }
            ?>
          </ul>
          <p class="conf-step__paragraph">Установите цены для типов кресел:</p>
          <div class="conf-step__legend">
            <label class="conf-step__label">Цена, рублей<input id="standardPrice" type="text" class="conf-step__input" placeholder="0"></label>
            за <span class="conf-step__chair conf-step__chair_standart"></span> обычные кресла
          </div>
          <div class="conf-step__legend">
            <label class="conf-step__label">Цена, рублей<input id="vipPrice" type="text" class="conf-step__input" placeholder="0" value="350"></label>
            за <span class="conf-step__chair conf-step__chair_vip"></span> VIP кресла
          </div>
          <fieldset class="conf-step__buttons text-center">
            <button id="cancel-price" class="conf-step__button conf-step__button-regular">Отмена</button>
            <input id="submitPrice" type="submit" value="Сохранить" class="conf-step__button conf-step__button-accent">
          </fieldset>
        </div>
      </section>

      <section class="conf-step" id="add-show">
        <header class="conf-step__header conf-step__header_opened">
          <h2 class="conf-step__title">Сетка сеансов</h2>
        </header>
        <div class="conf-step__wrapper">
          <p class="conf-step__paragraph">
            <button id="addMoviePopup" class="conf-step__button conf-step__button-accent">Добавить фильм</button>
          </p>
          <!---------------------------------add movie popup------------------------------------------>
          <div class="popup active">
            <div class="popup__container">
              <div class="popup__content">
                <div class="popup__header">
                  <h2 class="popup__title">
                    Добавление фильма
                    <a class="popup__dismiss close-addmovie" href="index.php"><img src="i/close.png" alt="Закрыть"></a>
                  </h2>

                </div>
                <div class="popup__wrapper">
                  <form action="addMovie.php" method="post" accept-charset="utf-8">
                    <label class="conf-step__label conf-step__label-fullsize" for="name">
                      Название фильма
                      <input class="conf-step__input clear-name-field" type="text" placeholder="Например, &laquo;Гражданин Кейн&raquo;" name="name" required>
                    </label>
                    <label class="conf-step__label conf-step__label-fullsize" for="duration"> Длительность Фильма
                      <input class="conf-step__input clear-addMovie-time-field" type="text" placeholder="Например, &laquo;120 Минут&raquo;" name="duration" required>
                    </label>
                    <label class="conf-step__label conf-step__label-fullsize" for="country"> Страна
                      <input class="conf-step__input clear-country-field" type="text" placeholder="Например, &laquo;Мозамбик&raquo;" name="country" required>
                    </label>
                    <label class="conf-step__label conf-step__label-fullsize" for="description"> О Фильме
                      <input class="conf-step__input clear-description-field" type="text" placeholder="Например, &laquo;....&raquo;" name="description" required>
                    </label>
                    <div class="conf-step__buttons text-center">
                      <input name="submitMovie" id="submitMovie" type="submit" value="Добавить фильм" class="conf-step__button conf-step__button-accent">
                      <button id="clear-addMovie-field" class="conf-step__button conf-step__button-regular">Отменить</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <p class="conf-step__label" style="margin-bottom: 1px;">Чтобы добавить сеанс, нажмите на фильм!</p>
          <div class="conf-step__movies">
            <?php
            $sql = "select * from Movies";
            $res = mysqli_query($conn, $sql);
            if (mysqli_num_rows($res) > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
            ?>
                <div class="conf-step__movie" data-="<?= $row['movie'] ?>">
                  <img class="conf-step__movie-poster" alt="poster" src="i/poster.png">
                  <h3 class="conf-step__movie-title"><?= $row['movie'] ?></h3>
                  <p class="conf-step__movie-duration"><?= $row['duration'] ?><span> минут</span></p>
                </div>
            <?php
              }
            }
            ?>
          </div>

          <div class="conf-step__seances">
            <?php
            $sql = "select * from cinemaHalls";
            $res1 = mysqli_query($conn, $sql);
            if (mysqli_num_rows($res1) > 0) {
              while ($row = mysqli_fetch_assoc($res1)) {
                $addedHall = [$row['hallName']];
                foreach ($addedHall as $key => $hallValue) {
            ?>
                  <div class="conf-step__seances-hall seancHall">
                    <h3 class="conf-step__seances-title"><?= $hallValue ?></h3>
                    <p class="conf-step__label" style="margin:1px 0px;">Чтобы удалить сеанс, нажмите на него!</p>
                    <div class="conf-step__seances-timeline ">
                      <?php
                      $sql2 = "select * from shows";
                      $res2 = mysqli_query($conn, $sql2);
                      if (mysqli_num_rows($res2) > 0) {
                        while ($row2 = mysqli_fetch_assoc($res2)) {
                          $time = substr($row2['time'], 0, 5);
                      ?>
                          <?php
                          $allHalls = [$row2['hall']];
                          foreach ($allHalls as $hall => $value) {
                            if ($hallValue == $value) {
                          ?>
                              <div data-="<?= $row2['movie'] ?>" data2-="<?= $row2['id'] ?>" class="conf-step__seances-movie" style="width: 60px; background-color: rgb(133, 255, 137); left: <?= $row2['style'] ?>px;">
                                <p class="conf-step__seances-movie-title"><?= $row2['movie'] ?></p>
                                <p class="conf-step__seances-movie-start"><?= $time ?></p>
                              </div>
                        <?php
                            }
                          }
                        }
                        ?>
                      <?php
                      }
                      ?>
                    </div>
                  </div>
            <?php
                }
              }
            }
            ?>
          </div>
          <!-----------------------------showtime add popup------------------------------------>
          <div class="popup show-time-addPopup">
            <div class="popup__container">
              <div class="popup__content">
                <div class="popup__header">
                  <h2 class="popup__title">
                    Добавление сеанса
                    <a class="popup__dismiss closePopupDismiss" href="index.php"><img src="i/close.png" alt="Закрыть"></a>
                  </h2>
                </div>
                <div class="popup__wrapper">
                  <form action="index.php" method="post" accept-charset="utf-8" id="nform">
                    <label class="conf-step__label conf-step__label-fullsize" for="hall">
                      Название зала
                      <select id="hallOption" class="conf-step__input" name="hall" required>
                        <?php
                        $sql = "select * from cinemaHalls";
                        $res = mysqli_query($conn, $sql);
                        if (mysqli_num_rows($res) > 0) {
                          while ($row = mysqli_fetch_assoc($res)) {
                        ?>
                            <option value="<?= $row['id'] ?>"><?= $row['hallName'] ?></option>
                        <?php
                          }
                        }
                        ?>
                      </select>
                    </label>
                    <label class="conf-step__label conf-step__label-fullsize" for="name">
                      Время начала
                      <input id="timeValue" class="conf-step__input" type="time" value="00:00" name="start_time" required>
                    </label>
                   <div class="conf-step__buttons text-center">
                      <input id="addShow" type="submit" value="Добавить" class="conf-step__button conf-step__button-accent">
                      <button class="conf-step__button conf-step__button-regular">Отменить</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-----------------------------showtime delete popup------------------------------------>
        <div class="popup show-time-deletePopup">
          <div class="popup__container">
            <div class="popup__content">
              <div class="popup__header">
                <h2 class="popup__title">
                  Снятие с сеанса
                  <a class="popup__dismiss close-delete-popup-dismiss" href="#"><img src="i/close.png" alt="Закрыть"></a>
                </h2>
              </div>
              <div class="popup__wrapper">
                <form action="#" method="post" accept-charset="utf-8">
                  <p class="conf-step__paragraph">Вы действительно хотите снять с сеанса фильм <span id="seanceSpan" style="color:red; font-weight: bold;"></span>?</p>
                  <!-- В span будет подставляться название фильма -->
                  <div class="conf-step__buttons text-center">
                    <input id="deleteScance" name="" type="submit" value="Удалить" class="conf-step__button conf-step__button-accent">
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-----------------------------ready to sale------------------------------------>
      <section class="conf-step">
        <header class="conf-step__header conf-step__header_opened">
          <h2 class="conf-step__title">Открыть продажи</h2>
        </header>
        <div class="conf-step__wrapper text-center">
          <p class="conf-step__paragraph">Всё готово, теперь можно:</p>
          <form action="../client/index.php" method="POST">
          <button id="openSale" name="open_sale" class="conf-step__button conf-step__button-accent">Открыть продажу билетов</button>
          </form>
        </div>
      </section>
    </main>
    <script src="js/jquery-3.5.1.js"></script>
    <script src="js/accordeon.js"></script>
  </body>

  </html>
<?php
} else {
  header("Location: login.php");
}
?>