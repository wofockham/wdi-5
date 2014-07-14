var numbers = [];


$(document).ready(function () {
  var add_number = function () {
    var number = parseInt($('#number').val());

    numbers.push(number);

    add_box(number);

    $('#number').val('').focus();
  };

  var square = function () {
    clear_boxes();
    numbers = _(numbers).map(function (n) {
      return n * n;
    });
    show_boxes();
  };

  var clear_boxes = function () {
    $('#boxes').empty();
  };

  var show_boxes = function () {
    _(numbers).each(function (n) {
      add_box(n);
    });
  };

  var add_box = function (n) {
    var $box = $('<div></div>');
    $box.addClass('box');
    $box.text(n);
    $('#boxes').prepend($box);
  };

  $('#add_number').click(add_number);
  $('#square').click(square);
});










