const getTime = dateTo => {
    let now = new Date(),
        time = (new Date(dateTo) - now + 1000) / 1000,
        seconds = ('0' + Math.floor(time % 60)).slice(-2),
        minutes = ('0' + Math.floor(time / 60 % 60)).slice(-2),
        hours = ('0' + Math.floor(time / 3600 % 24)).slice(-2),
        days = Math.floor(time / (3600 * 24));

    return {
        seconds,
        minutes,
        hours,
        days,
        time
    }
};

const countdown = (dateTo, element) => {
    const item = document.getElementById(element);

    const timerUpdate = setInterval(() => {
        let currenTime = getTime(dateTo);
        item.innerHTML = `
            <div class="d-flex row justify-content-center">
                <div class="col-2 col-lg-3">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.days}
                        </div>
                        <div class="concept">
                            Días
                        </div>
                    </div>
                </div>
                <div class="col-2 col-lg-3">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.hours}
                        </div>
                        <div class="concept">
                            Hs.
                        </div>
                    </div>
                </div>
                <div class="col-2 col-lg-3">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.minutes}
                        </div>
                        <div class="concept">
                            Min.
                        </div>
                    </div>
                </div>
                <div class="col-2 col-lg-2">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.seconds}
                        </div>
                        <div class="concept">
                            Seg.
                        </div>
                    </div>
                </div>
            </div>`;

        if (currenTime.time <= 1) {
            clearInterval(timerUpdate);
            alert('Fin de la cuenta ' + element);
        }

    }, 1000);
};
// obtenemos la fecha actual
var date = new Date()
var new_date1 = new Date(2021, 08, 02, 15, 25);

// si el partido es dentro de 7 días, 3 horas y 25 minutos, y hoy es 9/5/21 a las 12:00, 
// sería el 16/5/21 a las 15:25

document.getElementById('new_date1').innerHTML = new_date1;

countdown(new_date1, 'countdown1');


/*
Codigo original, para trabajar con fechas de fin aleatorias respecto de hoy. Pagina:
https://www.jose-aguilar.com/blog/cuenta-atras-con-javascript/#codesyntax_1

const getTime = dateTo => {
    let now = new Date(),
        time = (new Date(dateTo) - now + 1000) / 1000,
        seconds = ('0' + Math.floor(time % 60)).slice(-2),
        minutes = ('0' + Math.floor(time / 60 % 60)).slice(-2),
        hours = ('0' + Math.floor(time / 3600 % 24)).slice(-2),
        days = Math.floor(time / (3600 * 24));

    return {
        seconds,
        minutes,
        hours,
        days,
        time
    }
};

const countdown = (dateTo, element) => {
    const item = document.getElementById(element);

    const timerUpdate = setInterval( () => {
        let currenTime = getTime(dateTo);
        item.innerHTML = `
            <div class="row">
                <div class="col-lg-2">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.days}
                        </div>
                        <div class="concept">
                            Días
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.hours}
                        </div>
                        <div class="concept">
                            Horas
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.minutes}
                        </div>
                        <div class="concept">
                            Minutos
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="countdown-container">
                        <div class="number">
                            ${currenTime.seconds}
                        </div>
                        <div class="concept">
                            Segundos
                        </div>
                    </div>
                </div>
            </div>`;

        if (currenTime.time <= 1) {
            clearInterval(timerUpdate);
            alert('Fin de la cuenta '+ element);
        }

    }, 1000);
};

// obtenemos la fecha actual
var date = new Date()
var new_date1 = new Date(date);

// Obtenemos un numero aleatorio entre 1 y 12
var add_hours = Math.floor((Math.random()*12)+1);

// Obtenemos un numero aleatorio entre 1 y 60
var add_days = Math.floor((Math.random()*60)+1);

// Obtenemos un numero aleatorio entre 1 y 13
var add_months = Math.floor((Math.random()*13)+1);

// Incrementamos las horas
new_date1.setDate(date.getHours() + add_hours);
// Incrementamos los dias
new_date1.setDate(date.getDate() + add_days);
// Incrementamos los meses
new_date1.setMonth(date.getMonth() + add_months);

var new_date2 = new Date(date);

// Obtenemos un numero aleatorio entre 1 y 12
var add_hours = Math.floor((Math.random()*12)+1);

// Obtenemos un numero aleatorio entre 1 y 60
var add_days = Math.floor((Math.random()*60)+1);

// Obtenemos un numero aleatorio entre 1 y 13
var add_months = Math.floor((Math.random()*13)+1);

// Incrementamos las horas
new_date2.setDate(date.getHours() + add_hours);
// Incrementamos los dias
new_date2.setDate(date.getDate() + add_days);
// Incrementamos los meses
new_date2.setMonth(date.getMonth() + add_months);

var new_date3 = new Date(date);
new_date3.setMinutes(date.getMinutes() + 1);

document.getElementById('new_date1').innerHTML = new_date1;
document.getElementById('new_date2').innerHTML = new_date2;
document.getElementById('new_date3').innerHTML = new_date3;

countdown(new_date1, 'countdown1');
countdown(new_date2, 'countdown2');
countdown(new_date3, 'countdown3');*/