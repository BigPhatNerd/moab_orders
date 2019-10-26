$(function() {
    var prices, cost, qty, whatever
    $('#order_item').change(function() {
        prices = ($(this).val());
        qty = $('#order_quantity').val();

        if (prices == 'jacket $30') {
            cost = 30 * qty
        } else if (prices == 'shirt $20') {
            cost = 20 * qty
        } else if (prices == 'pullover $50') {
            cost = 50 * qty
        }
        if (cost !== undefined) {
            $('#order_cost').val(cost)
            $('#test').text("$" + cost)


        }
    });

    $("#order_quantity").change(function() {
        qty = ($(this).val());

        if (prices == 'jacket $30') {
            cost = 30 * qty
        } else if (prices == 'shirt $20') {
            cost = 20 * qty
        } else if (prices == 'pullover $50') {
            cost = 50 * qty
        }
        if (cost !== undefined) {
            $('#order_cost').val(cost)
            $('#test').text("$" + cost)
        }
    });
});