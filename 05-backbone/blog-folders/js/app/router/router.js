var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },
  initialize: function () {
    console.log('router initialized');
    app.posts = new app.Posts([
      new app.Post({id: 1, title: 'First post', content: 'Backbone is hell'}),
      new app.Post({id: 2, title: 'Second post', content: 'Backbone is slightly hellish'}),
      new app.Post({id: 3, title: 'Third post', content: 'Backbone is getting better'}),
      new app.Post({id: 4, title: 'Fourth post', content: 'Backbone is okay'})
    ]);
  },
  index: function () {
    console.log('you reached index');
    var appView = new app.AppView({collection: app.posts});
    appView.render();
  },
  getPost: function (id) {
    var post = app.posts.get(id);
    new app.PostView({model: post}); // Renders itself via initialize()
  }
});

