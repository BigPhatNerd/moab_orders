$(document).on('turbolinks:load', function() {
    $(function() {
        var prices, cost, qty, whatever
        $('#order_item').change(function() {
            prices = ($(this).val());
            qty = $('#order_quantity').val();

            if (prices == 'jacket $35') {
                cost = 35 * qty
            } else if (prices == 'vest $35') {
                cost = 35 * qty
            }
            if (cost !== undefined) {
                $('#order_cost').val(cost)
                $('#test').text("Order Total = $" + cost)


            }
        });

        $("#order_quantity").change(function() {
            qty = ($(this).val());

            if (prices == 'jacket $35') {
                cost = 35 * qty
            } else if (prices == 'vest $35') {
                cost = 35 * qty
            }
            if (cost !== undefined) {
                $('#order_cost').val(cost)
                $('#test').text("Order Total = $" + cost)
            }
        });
    });
});