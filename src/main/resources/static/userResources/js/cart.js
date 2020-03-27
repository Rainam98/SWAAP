async function changeQuantity(cartId, price, sign) {
    let totalPrice = document.getElementById('cart-' + cartId);
    let quantity = parseInt(document.getElementById('quant-' + cartId).value);
    quantity = sign === '+' ? quantity + 1 : quantity - 1;
    if (quantity != 0) {
        totalPrice.innerText = (quantity * price) + '';
        await fetch(USER_API_LINK + '/modifyCart/' + cartId + '/' + quantity).then(res => {
            if (res.status == 416) {
                alert("No more products available")
                return;
            }
        });
        let final_total_elem = document.getElementsByClassName('final_total')[0];
        let final_total = parseFloat(final_total_elem.innerHTML);
        final_total = (sign === '+') ? final_total + price : final_total - price;
        document.getElementById('header-total').innerHTML = final_total;
        [].forEach.call(document.getElementsByClassName('final_total'), e => e.innerHTML = final_total);
    }

}

function removeElementFromCart(idPrefix, cartId) {
    fetch(USER_API_LINK + '/removeFromCart/' + cartId);
    let headerQuantityElem = document.getElementById('header-quantity');
    let quantity = parseInt(headerQuantityElem.innerHTML);
    headerQuantityElem.innerHTML = (quantity - 1) + "";

    let final_total_elem = document.getElementsByClassName('final_total')[0];
    let final_total = parseFloat(final_total_elem.innerHTML);
    let subTotal;
    if (document.getElementById('cart-' + cartId)) {
        subTotal = parseFloat(document.getElementById('cart-' + cartId).innerHTML);

    }
    final_total = final_total - subTotal;
    [].forEach.call(document.getElementsByClassName('final_total'), e => e.innerHTML = final_total);

    let headerTotal = document.getElementById('header-total');
    headerTotal.innerHTML = final_total + "";

    let elems = document.getElementsByClassName('product' + '-' + cartId);
    let count = elems.length;
    for (let i = 0; i < count; i++)
        elems[0].parentNode.removeChild(elems[0]);

}

function updateHeader() {
    fetch(USER_API_LINK + '/getCartDetails').then(response => response.json()).then(res => {
        document.getElementById('header-quantity').innerHTML = res['quantity'];
        document.getElementById('header-total').innerHTML = res['totalAmount'];
    });
}

// (function () {
//     var subTotal = 0;
//     [].forEach.call(document.getElementsByClassName('sub-totals'), (e) => subTotal += parseFloat(e.innerText));
// [].forEach.call(document.getElementsByClassName('final_total'), e => e.innerHTML = document.getElementById('header-total').innerHTML);
// })();

