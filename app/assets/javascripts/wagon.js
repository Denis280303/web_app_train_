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
        $('.high_seats').show();
        $('.low_seats').hide();
        break;
      case 'CVWagon':
        $('.low_seats').show();
        break;
      case 'EconomWagon':
        $('.high_seats').show();
        $('.low_seats').show();
        $('.side_high_seats').show();
        $('.side_low_seats').show();
        break;
      case 'SeatWagon':
        $('.econom_seats').show();
        break;
    }
  };
});