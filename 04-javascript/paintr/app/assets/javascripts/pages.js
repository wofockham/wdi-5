$(document).ready(function () {

  var add_color = function () {
    var color = $('#color').val();
    var $box = $('<div></div>');
    $box.addClass('box');
    $box.css('background-color', color);
    $box.prependTo('#colors'); // equivalent to $('#colors').prepend($box);
  };

  var set_color = function () {
    var $box = $(this);
    var color = $box.css('background-color');
    $('#selected').css('background-color', color);
  };

  var clear_colors = function () {
    $('#colors').empty();
    $('#selected').css('background-color', 'white');
  };

  var paint = function () {
    var color = $('#selected').css('background-color');
    var $pixel = $(this);
    $pixel.css('background-color', color);
  };

  $('#add_color').on('click', add_color);
  $('#clear').on('click', clear_colors);
  $('#colors').on('click', '.box', set_color); // Delegation!
  $('#canvas').on('mouseover', '.pixel', paint); // Delegation!

  var create_pixels = function () {
    var $canvas = $('#canvas'); // Cache this to prevent repeatedly querying for it.
    _(5000).times(function () {
      var $pixel = $('<div/>');
      $pixel.addClass('pixel');
      $pixel.appendTo($canvas);
    });
  };

  create_pixels();
});















