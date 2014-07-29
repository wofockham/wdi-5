var app = {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },
  initialize: function () {
    console.log('router initialized');
  },
  index: function () {
    console.log('you reached index');
    var appView = new app.AppView();
    appView.render();
  },
  getPost: function () {
    console.log('you reached getPost');
  }
});

app.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    console.log('AppView initialized');
  },
  render: function () {
    this.$el.html( app.templates.appView );
  }
});

$(document).ready(function () {
  app.templates = {
    appView: $('#app-template').html()
  };

  var router = new app.Router();
  Backbone.history.start();
});





