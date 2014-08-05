$(document).ready(function () {
  $('#get_brother').on('click', function () {
    $.ajax({
      url: '/brothers',
      dataType: 'json'
    }).done(function (response) {
      $('#brothers').append(response.brother);
      $('#magic_number').html(response.magic);
    }).fail(function (response) {
      alert('Something bad happened');
    }).complete(function (response) {
      console.log('AJAX transaction complete');
    });
  });

  $('.button_to').on('ajax:success', function (event, response) {
    $('#brothers').append(response.brother);
  });
});