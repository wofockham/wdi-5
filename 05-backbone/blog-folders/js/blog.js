var app = app || {};

$(document).ready(function () {
  app.templates = {
    appView: $('#app-template').html(),
    postListView: $('#list-template').html(),
    postView: $('#post-template').html()
  };

  app.router = new app.Router();
  Backbone.history.start();
});





















