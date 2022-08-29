$(document).ready(function(){
  $('a.edit_train').on('click', function (e) {
    e.preventDefault();
    var train_id;
    var form;
    var number;

    train_id = $(this).data('trainId');
    form = $('#edit_train_' + train_id);
    title = $('#train_number_' + train_id);

    if (!$(this).hasClass('cancel')) {
      $(this).html('cancel');
      $(this).addClass('cancel');
      } else {
      $(this).html('edit');
      $(this).removeClass('cancel');
      }

      form.toggle();
      number.toggle();
    });
});