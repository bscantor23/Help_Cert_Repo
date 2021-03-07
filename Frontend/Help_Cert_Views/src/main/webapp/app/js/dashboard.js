let options_button = document.getElementById("options-button");
let options_container = document.getElementById("options");
let options_icon = document.getElementById("options-icon");
let alert_container = document.getElementById("alert-container");
let menu_button = document.getElementById("button-menu");
let menu_container = document.getElementById("menu-aside");

options_button.addEventListener("click", function () {
    if (alert_container != null) {
        alert_container.classList.toggle("invisible");
    }
    options_container.classList.toggle("visible");
});

menu_button.addEventListener("click", function () {
    menu_container.classList.toggle("visible");
});

document.addEventListener("click", (evt) => {
    let targetEl = evt.target; // clicked element 
    if (targetEl != options_button && targetEl != options_icon) {
        options_container.classList.remove("visible");
    }
});

function contador() {
    const counters = document.querySelectorAll('.counter');
    const speed = 50;
    counters.forEach(counter => {
        const target = +counter.getAttribute('data-target');
        const updateCount = (target, moment) => {
            const inc = target / speed;
            if (moment < target) {
                counter.innerText = Math.round(moment + inc);
                moment = moment + inc;
                setTimeout(updateCount, 50, target, moment);
            } else {
                counter.innerText = target;
            }
        };
        updateCount(target, 0);
    });
}

setTimeout(contador(), 100);

var inputTelefono = document.getElementById('telefonoInput');
var inputDoc = document.getElementById('docInput');

if (inputTelefono && inputDoc) {
    
    inputTelefono.addEventListener('input', function () {
        if (this.value.length > 12)
            this.value = this.value.slice(0, 12);
    });

    inputDoc.addEventListener('input', function () {
        if (this.value.length > 12)
            this.value = this.value.slice(0, 12);
    })
}