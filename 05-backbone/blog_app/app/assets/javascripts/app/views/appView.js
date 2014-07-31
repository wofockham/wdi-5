var app = app || {};

app.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    console.log('AppView initialized');
  },
  render: function () {
    this.$el.html( app.templates.appView );
    this.collection.each(function (p) {
      var view = new app.PostListView({model: p});
      var liNode = view.render();
      $('#posts').append( liNode );
    });
  }
});
