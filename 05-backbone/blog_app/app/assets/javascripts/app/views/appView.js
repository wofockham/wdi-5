var app = app || {};

app.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    console.log('AppView initialized', this.collection.models.length);
    this.listenTo(this.collection, 'add', this.addPost); // Render new posts as they are loaded.
  },
  render: function () {
    this.$el.html( app.templates.appView );
    console.log('Here are the posts', this.collection);
    var view = this;
    this.collection.each(this.addPost); // Render any posts already in the collection.
  },
  addPost: function (p) {
    var view = new app.PostListView({model: p});
    var liNode = view.render();
    $('#posts').append( liNode );
  }
});
