$(document).ready(function () {

  var toggle_form = function (event) {
    event.preventDefault();
    $('form').fadeToggle(function () {
      $('#new_priority').toggle();
    });
  };

  $('#new_priority').on('click', toggle_form);
  $('#cancel_priority').on('click', toggle_form);

  $('#priorities').on('submit', function (event) {
    event.preventDefault();

    var priority_name = $('#name').val();
    var priority_color = $('#color').val();
    var priority_urgency = $('#urgency').val();

    console.log(name, color, urgency);

    $.ajax({
      url: '/priorities',
      type: 'POST',
      dataType: 'json',
      data: {
        name: priority_name,
        color: priority_color,
        urgency: priority_urgency
      },
      success: function (p) {
        console.log('done', p);
      }
    });
  });

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
