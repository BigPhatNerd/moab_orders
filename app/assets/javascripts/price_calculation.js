$(document).on('turbolinks:load', function() {


    $(function() {


        $('#order_description').change(function() {
            var style = $('#order_description').val();
            if (style === "Men's") {
                $('#mens_sizes').show();
                $('#womens_sizes').hide();
                $('#mens').removeAttr("disabled");
                $('#womens').attr("disabled", "disabled");
            } else if (style === "Women's") {
                $('#womens_sizes').show();
                $('#mens_sizes').hide();
                $('#womens').removeAttr("disabled");
                $('#mens').attr("disabled", "disabled");

            }

        })



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