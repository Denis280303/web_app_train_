$(document).on('turbolinks:load', function () {
    $('.seats').hide();
    show_wagon_attr($('#wagon_type').val());

    $('#wagon_type').on('change', function (e) {
        $(".seats input").val("");
        $('.seats').hide();
        show_wagon_attr(e.target.value);
    });

    function show_wagon_attr(type) {
        switch (type) {
            case 'CoupeWagon':
                $('.top_seats').show();
                $('.bottom_seats').show();
                break;
            case 'CVWagon':
                $('.bottom_seats').show();
                break;
            case 'EconomWagon':
                $('.top_seats').show();
                $('.bottom_seats').show();
                $('.side_top_seats').show();
                $('.side_bottom_seats').show();
                break;
            case 'SeatWagon':
                $('.econom_seats').show();
                break;
        }
    };
});