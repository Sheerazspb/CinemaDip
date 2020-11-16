const headers = Array.from(document.querySelectorAll('.conf-step__header'));
headers.forEach(header => header.addEventListener('click', () => {
  header.classList.toggle('conf-step__header_closed');
  header.classList.toggle('conf-step__header_opened');
}));

document.getElementById('open-popup').addEventListener('click',function () {
  document.querySelector('.add_popup').style.display = 'block';
});

document.getElementById('clear-feild').addEventListener('click',function () {
  document.querySelector('.clear-field').value = '';
});
//------------------------------delete hall----------------------------------------

let delHall = document.querySelectorAll('.del-hall');
delHall.forEach(function (item,index) {
  item.addEventListener('click',function (e) {
    document.querySelector('.delete-popup').style.display = 'block';
    let selectedHall = e.target.name;
    let newid = e.target.id;
    // console.log(newid);
    // console.log(selectedHall);
    document.getElementById('span').innerHTML = selectedHall;
    document.querySelector(".hidenId").value = newid;
  })
});
//-----------------------------hall configuration--------------------------------

let configHall = document.querySelectorAll('.config-hall');
configHall.forEach(function (item, index) {
  
  item.addEventListener('click', function (e) {
    let confHallId = e.target.value;
    document.getElementById('creat-hall').addEventListener('click', function (e) {
        let row = document.querySelector('[name="hallRow"]').value;
        row = Number(row);
        let seats = document.querySelector('[name="hallChairs"]').value;
        seats = Number(seats);
        function clear() {
          let delRow = document.querySelector('[name="hallRow"]');
          let delSeats = document.querySelector('[name="hallChairs"]');
          delRow.value = '';
          delSeats.value = '';
        }
        let parentElm = document.getElementById("stepRows");
        for (let i = 1; i <= row; i++) {
          let newHtml = '<div class="conf-step__row"></div>';
          parentElm.insertAdjacentHTML('afterbegin', newHtml);
          for (let j = 1; j <= seats; j++) {
            let newHtml2 = '<span class="conf-step__chair conf-step__chair_standart"></span>';
            let parentElm2 = document.querySelector(".conf-step__row");
            parentElm2.insertAdjacentHTML('afterbegin', newHtml2);
            clear();
          }
        }
          $('body').on('click', '#stepRows .conf-step__chair', function () {
          if ($(this).hasClass('conf-step__chair_standart')) {
            $(this).removeClass('conf-step__chair_standart').addClass('conf-step__chair_vip');
          } else if ($(this).hasClass('conf-step__chair_vip')) {
            $(this).removeClass('conf-step__chair_vip').addClass('conf-step__chair_disabled');
          } else if ($(this).hasClass('conf-step__chair_disabled')) {
            $(this).removeClass('conf-step__chair_disabled').addClass('conf-step__chair_standart');
          }
        });
        document.getElementById('clear-row').addEventListener('click', function (e) {
      // e.preventDefault();
     parentElm.innerHTML = '';
    });
    // console.log(confHallId);
    });
      document.getElementById('submit1').addEventListener('click', function (e) {
      e.preventDefault();
      let parentElm = document.getElementById("stepRows");
      let innerHtml = parentElm.innerHTML;
      let xhr = new XMLHttpRequest();
      xhr.open("POST", "hall-update.php", true);
      xhr.onload = () => {
        if (xhr.status === 200) {
          alert(xhr.responseText);
          } else {
          console.log('problem occured');
        }
      }
      let myData = { data: innerHtml, id: confHallId };
      let ndata = JSON.stringify(myData);
      // console.log(ndata);
      xhr.send(ndata);
      e.stopImmediatePropagation();
      location.reload();
    });
    $.ajax({
            url: "retriveData.php",
            type: "GET",
            data: { id: confHallId },
            success: function (data) {
              $("#stepRows").html(data);
            }
        });
        $("#hallRow").click(function () {
        $("#stepRows").html('');
        });
    }); 
  });

//--------------------------------price configuration------------------------------------

let hallPrice = document.querySelectorAll('.hallPrice');
hallPrice.forEach(function (item) {
  item.addEventListener('click',function (e) {
    let hallId = e.target.value;
    $(document).ready(function () {
    $('body').on('click', '#submitPrice', function () {
    let standardPrice = document.getElementById("standardPrice").value;
    let vipPrice = document.getElementById("vipPrice").value;
    standardPrice = Number(standardPrice);
    vipPrice = Number(vipPrice);
        $.ajax({
        url: "seat-price.php",
        type: "POST",
        data: { id: hallId, standard: standardPrice, vip: vipPrice },
        success: function (data) {
          if (data == 1) {
                alert("Цены успешно добавлены!");
              } else {
                alert("Ошибка при добавлении цен!");
              }
            }
        });
        location.reload();
      });
      $("#cancel-price").click(function () {
        document.getElementById("standardPrice").value = '';
        document.getElementById("vipPrice").value = '';
        });
    });
  });
});
// -----------------------------------Add Movie--------------------------------------------

document.getElementById("addMoviePopup").addEventListener('click', function () {
  document.querySelector(".active").style.position = 'absolute';
});
document.querySelector(".close-addmovie").addEventListener('click', function (e) {
  document.querySelector(".active").style.position = 'fixed';
  e.preventDefault();
});
document.getElementById('clear-addMovie-field').addEventListener('click', function (e) {
  document.querySelector('.clear-name-field').value = '';
  document.querySelector('.clear-addMovie-time-field').value = '';
  document.querySelector('.clear-country-field').value = '';
  document.querySelector('.clear-description-field').value = '';
  e.preventDefault();
});
$(document).ready(function () {
  $('body').on('click', '#submitMovie', function (e) {
    let movie = document.querySelector('.clear-name-field').value;
    let duration = document.querySelector('.clear-addMovie-time-field').value;
    duration = Number(duration);
    let country = document.querySelector('.clear-country-field').value;
    let description = document.querySelector('.clear-description-field').value;
      $.ajax({
        url: "addMovie.php",
        type: "POST",
        data: {movieN:movie, durationN:duration, countryN:country, descriptionN:description},
        success: function (data) {
          if (data == 1) {
            alert('Фильм добавлен!');
            location.reload();
          } else {
            alert('Ошибка при добавлении Фильма!');
            location.reload();
          }
        }
      });
    });
  });
  
let showTime = document.querySelectorAll('.conf-step__movie');
showTime.forEach(function (item, index) {
  item.addEventListener('click',function (e) {
    e.preventDefault();
    let slectedMovie = item.getAttribute('data-');
    // console.log(slectedMovie);
    document.querySelector('.show-time-addPopup').style.display = 'block';
    document.querySelector('.show-time-addPopup').style.position = 'absolute';
    document.querySelector('.closePopupDismiss').addEventListener('click',function(e) {
      e.preventDefault();
      document.querySelector('.show-time-addPopup').style.display = 'hide';
      document.querySelector('.show-time-addPopup').style.position = 'fixed';
    });
    document.getElementById("addShow").addEventListener('click',function (e) {
      e.preventDefault();
      
      let startTime = document.getElementById('timeValue').value;  
      let hallOption = document.getElementById('hallOption');
      let selectedHall = hallOption.options[hallOption.selectedIndex].text;
      // console.log(selectedHallId);
      // console.log(selectedHall);
      // console.log(startTime);
      let nstyle = window.getComputedStyle(document.querySelector('.conf-step__seances-movie')).left;
      // console.log(nstyle);
      let styleLeft = startTime.split(":")[0] * 30;
        // console.log(styleLeft);
        nstyle = styleLeft;
      $('body').on('click', "#addShow", function (e) {
          $.ajax({
            url: "addShow.php",
            type: "POST",
            data: {hallN: selectedHall, movieN: slectedMovie, timeN: startTime,style:nstyle },
            success: function (data) {
              if (data == 1) {
                alert('Сеанс добавлен!');
                location.reload();
              } else {
                alert('Ошибка при добавлении Сеанса!');
                location.reload();
              }
            }
          });
        });
      });
      // console.log(movieShowHall);
    });
  });
       // --------------------------------showtime delete popup---------------------------------------
      
    let movieSeance = document.querySelectorAll(".conf-step__seances-movie");
    movieSeance.forEach(function (item,index) {
        item.addEventListener('click', function (e) {
        e.preventDefault();
        let seanceMovie = item.getAttribute('data-');
        let seanceMovieId = item.getAttribute('data2-');
        let seanceSpan = document.getElementById("seanceSpan").innerText = seanceMovie;
        let deleteShow = document.getElementById("deleteScance");
        deleteShow.addEventListener('click', function (e) {
            // e.preventDefault();
          let showId = deleteShow.getAttribute('name').innerText = seanceMovieId;
          $.ajax({
            url: "deleteShow.php",
            type: "POST",
            data: {showIdN:showId},
            success: function (data) {
              alert(data);
              // $('#add-show').load(document.URL + ' #add-show');
            }
          });
        })
        document.querySelector('.show-time-deletePopup').style.display = 'block';
        document.querySelector('.show-time-deletePopup').style.position = 'absolute';
        document.querySelector('.close-delete-popup-dismiss').addEventListener('click',function (e) {
        e.preventDefault();
        document.querySelector('.show-time-deletePopup').style.display = 'hide';
        document.querySelector('.show-time-deletePopup').style.position = 'fixed';
      });
    });
  });





























