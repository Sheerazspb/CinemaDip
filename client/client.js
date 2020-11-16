    let movieShowTime = document.querySelectorAll(".movie-seances__time");
        movieShowTime.forEach(function (item,index) {
        item.addEventListener('click',function (e) {
        let getTime = e.target.innerText;
        console.log(getTime);
        let getMovie = item.getAttribute('data-');
        console.log(getMovie);
        let getHall = item.getAttribute('data-2');
            console.log(getHall);
        
    $.ajax({
            url: "order.php",
            type: "POST",
            data: {nTime: getTime, nMovie: getMovie, nHall: getHall},
            success: function (data) {
            }
        }); 
    });
})
$("#standardPrice").text($(".priceConfig").attr('data-'))
$("#vipPrice").text($(".priceConfig").attr('data-2'));

$('body').on("click", "#buying-scheme-wrapper .conf-step__chair", function () {
    if ($(this).hasClass('conf-step__chair_standart')) {
    $(this).toggleClass("conf-step__chair_selected");
    } 
    else if ($(this).hasClass('conf-step__chair_vip')) {
        $(this).toggleClass("conf-step__chair_selected");
    }
});
$(document).ready(function () {
    $('body').on("click", "#buying-scheme-wrapper .conf-step__row", function () {
        $(this).addClass("selectedRow");
    });
});

$('body').on("click", "#makePayment", function () {
       
        let rows = [];
        let seats = [];
        let standartSeats = [];
        let vipSeats = [];
        let newHallId = document.querySelector(".buying__info-description").getAttribute("data-");
        console.log(newHallId);
        let simpleChair = document.querySelectorAll(".conf-step__chair")
        for (let index = 0; index < simpleChair.length; index++) {
            let element4 = simpleChair[index];
            if (element4.classList.contains('conf-step__chair_standart') || element4.classList.contains('conf-step__chair_vip')) {
                $(element4).addClass("xxx");
            }
        }
        document.querySelectorAll(".selectedRow").forEach(function (selectedRow, selectedRowIndex) {
            selectedRow.querySelectorAll(".xxx").forEach(function (seat, seatIndex) {
            if (seat.classList.contains("conf-step__chair_selected")) {
                    seats.push(seatIndex + 1);
                }
                if (seat.classList.contains("conf-step__chair_selected") && (!seat.classList.contains("conf-step__chair_vip"))) {
                    standartSeats.push(seatIndex + 1);
                }
                if (seat.classList.contains("conf-step__chair_selected") && seat.classList.contains("conf-step__chair_vip")) {
                    vipSeats.push(seatIndex + 1);
                }
            })
        })
        console.log('Место '+seats)
        let selectedRow = document.querySelectorAll(".conf-step__row")
        for (let rowIndex = 0; rowIndex < selectedRow.length; rowIndex++) {
            const element = selectedRow[rowIndex];
            let xxxChair = element.querySelectorAll(".xxx")
            for (let seatInd = 0; seatInd < xxxChair.length; seatInd++) {
                let element2 = xxxChair[seatInd];
                // console.log(element2);
                if (element.classList.contains('selectedRow') && (element2.classList.contains('conf-step__chair_selected'))) {
                    rows.push(rowIndex + 1);
                }
            }
        }
        console.log("Ряд "+rows);
        let stanPrice = document.getElementById("standardPrice").innerText;
        let vPrice = document.getElementById("vipPrice").innerText;
        let sPrice = standartSeats.length * stanPrice
        let v_Price = vipSeats.length * vPrice
        let totalPrice = sPrice + v_Price
        console.log('Цена ' + totalPrice)
    $.ajax({
            url: "orderUpdate.php",
            type: "POST",
            data:{ nSeats: seats, nRows: rows, nTotalPrice: totalPrice, nId: newHallId },
            success: function (data) {
            }
        }); 
        window.location.href = 'payment.php';
    });
    
    $(document).ready(function () {
    $('body').on("click", "#getQrCode", function () {
        let hallId = document.querySelector(".ticket__info-wrapper").getAttribute("data-");
        console.log(hallId)
        let movie = document.getElementById("movieInfo").innerText;
        let rowsAndSeats = '';
        document.querySelectorAll(".seatRowInfo").forEach(function (info) {
            rowsAndSeats += info.innerText + "\n"; 
        });
        let hall = document.getElementById("hallInfo").innerText;
        let time = document.getElementById("timeInfo").innerText;
        let price = document.getElementById("priceInfo").innerText;
        let baseURL = "https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=";
        let url = `${baseURL}${movie}%0A${rowsAndSeats}%0A${hall}%0A${time}%0A${price}`;
        $.ajax({
            url: "qrOrderUpdate.php",
            type: "POST",
            data: { nQr: url, nId: hallId },
            success: function (data) {
            }
        });
        window.location.href = 'ticket.php';
    });
});
