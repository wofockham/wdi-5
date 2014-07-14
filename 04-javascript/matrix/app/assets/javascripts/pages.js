$(document).ready(function () {
  var numbers = [];

  var add_number = function () {
    var number = parseInt($('#number').val());

    numbers.push(number);

    // jQuery can create new elements on the fly, instead of selecting them.
    var $box = $('<div></div>');
    $box.addClass('box');
    $box.text(number);

    $('#boxes').prepend($box);
  };

  $('#add_number').click(add_number);
});
