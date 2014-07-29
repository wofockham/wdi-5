var app = {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },
  initialize: function () {
    console.log('router initialized');
    var p = new app.Post({id: 1, title: 'First post', content: 'Backbone is hell'});
    console.log(p);
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

app.Post = Backbone.Model.extend({
  defaults: {
    id: 0,
    title: 'New post about Backbone',
    content: 'New post about Backbone content goes here'
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





