var app = app || {};

app.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    console.log('AppView initialized');
    this.listenTo(this.collection, 'add', this.addOne);
  },
  render: function () {
    this.$el.html( app.templates.appView );
    console.log('Here are the posts', this.collection);
    var view = this;
    this.collection.each(function (p) {
      var view = new app.PostListView({model: p});
      var liNode = view.render();
      $('#posts').append( liNode );
    });
  }
});
