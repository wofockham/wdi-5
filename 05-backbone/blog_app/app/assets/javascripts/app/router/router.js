var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },
  initialize: function () {
    console.log('router initialized');
    app.posts = new app.Posts();
    app.posts.fetch().done(function () {
      Backbone.history.start();
    });
  },
  index: function () {
    console.log('you reached index');
    var appView = new app.AppView({collection: app.posts});
    appView.render();
  },
  getPost: function (id) {
    var post = app.posts.get(id);
    new app.PostView({model: post});
  }
});

