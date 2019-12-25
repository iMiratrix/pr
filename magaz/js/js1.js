function del() {
    let elem = document.getElementById("item");
    elem.parentNode.removeChild(elem);
}

function plus() {
    let plus = document.getElementById('val');
    plus.value = +plus.value + 1;
    let priceP = document.getElementById('total-price');
    priceP.value = +priceP.value+1;
}

function minus() {
    let minus = document.getElementById('val');
    const v = 1;
    if (minus.value == v) {
        minus.value = 1
    } else {
        minus.value = +minus.value - 1;
    }
}

function addItem() {
    let array = ["${_SESSION['price']}₽", "${_SESSION['id_book']}", 5];
    console.log(array);
    localStorage.setItem("array", JSON.stringify(array));
    array = JSON.parse(localStorage.getItem("array"));
    console.log(typeof array);
    console.log(array);

}