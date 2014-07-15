$(document).ready(function () {

/*
  var show_form = function () {
    $('form').show();
    $('#new_priority').hide();
  };
  $('#new_priority').on('click', show_form);

  var hide_form = function (event) {
    event.preventDefault();
    $('form').hide();
    $('#new_priority').show();
  };
*/

  var toggle_form = function (event) {
    event.preventDefault();
    $('form').fadeToggle(function () {
      $('#new_priority').toggle();
    });
  };

  $('#new_priority').on('click', toggle_form);
  $('#cancel_priority').on('click', toggle_form);

  var render_priority_boxes = function () {
    var $colors = $('.color');
    $colors.each(function (i, color) {
      var $color = $(color);
      var hex = $color.text();
      var $box = $('<div/>');
      $box.addClass('priority');
      $box.css('background-color', hex);
      $color.closest('li').prepend($box);
    });
  };

  render_priority_boxes();
});
