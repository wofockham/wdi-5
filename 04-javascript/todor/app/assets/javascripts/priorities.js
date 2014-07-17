$(document).ready(function () {

  var toggle_form = function (event) {
    event && event.preventDefault && event.preventDefault(); // Short circuit evaluation.

    $('form').fadeToggle(function () {
      $('#new_priority').toggle();
    });
    $('form')[0].reset();
  };

  $('#new_priority').on('click', toggle_form);
  $('#cancel_priority').on('click', toggle_form);

  $('#priorities').on('submit', function (event) {
    event.preventDefault();

    var priority_name = $('#name').val();
    var priority_color = $('#color').val();
    var priority_urgency = $('#urgency').val();

    console.log(name, color, urgency);

    toggle_form();

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
        // This is why we have templating, people.
        var $li = $('<li/>');
        var $span1 = $('<span/>');
        $span1.text(p.name);
        var $span2 = $('<span/>');
        $span2.addClass('invisible color');
        $span2.text(p.color);
        var $span3 = $('<span/>');
        $span3.addClass('invisible urgency');
        $span3.text(p.urgency);
        var $span4 = $('<span/>');
        $span4.addClass('priority_id invisible');
        $span4.text(p.id);
        var $box = $('<div/>');
        $box.addClass('priority');
        $box.css('background-color', p.color);
        $li.prepend($box);
        $li.append($span1);
        $li.append($span2);
        $li.append($span3);
        $li.append($span4);
        $li.prependTo('#priority-list');
      }
    });
  });

  var edit_priority = function () {
    if ($('form').is(':hidden')) {
      toggle_form();
    }

    var $li = $(this).closest('li');
    var name = $li.find('.name').text();
    var color = $li.find('.color').text();
    var urgency = $li.find('.urgency').text();
    var priority_id = $li.find('.priority_id').text();

    $('#name').val( name );
    $('#color').val( color );
    $('#urgency').val( urgency );
    $('#priority_id').val( priority_id );
  };

  // Delegation! Make sure you understand this.
  $('#priority-list').on('click', '.priority', edit_priority);

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
