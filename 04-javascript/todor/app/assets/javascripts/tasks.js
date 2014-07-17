$(document).ready(function () {
  display_map(-33.8698426, 151.2061608, 12);
});

var map;

var display_map = function (lat, long, zoom) {

  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var canvas = $('#map_canvas').get(0);

  map = new google.maps.Map(canvas, mapOptions);
};

var add_marker = function (lat, long, title) {
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({
    position: latlng,
    map: map,
    title: title
  });
};