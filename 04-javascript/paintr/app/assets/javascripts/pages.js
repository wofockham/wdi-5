$(document).ready(function () {

  var add_color = function () {
    var color = $('#color').val();
    var $box = $('<div></div>');
    $box.addClass('box');
    $box.css('background-color', color);
    $box.prependTo('#colors'); // equivalent to $('#colors').prepend($box);
  };

  var set_color = function () {
    alert("you clicked a color");
  };

  $('#add_color').on('click', add_color);
  $('.box').on('click', set_color);
});
