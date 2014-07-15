$(document).ready(function () {
  var search_flickr = function () {
    var query = $('#search').val();
    var page = 1;

    var process_images = function (data) {
      var images = data.photos.photo;

      for (var i = 0; i < images.length; i++) {
        var item = images[i];
        var img_url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
        var $img = $('<img>');
        $img.attr('src', img_url);
        $('#images').append($img);
      }
    };

    $.getJSON('https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=2f5ac274ecfac5a455f38745704ad084&text=' + query + '&per_page=500&page=' + page + '&format=json&jsoncallback=?', process_images);
  };

  $('#search_flickr').on('click', search_flickr);
});