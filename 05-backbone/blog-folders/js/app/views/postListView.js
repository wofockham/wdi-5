var app = app || {};

app.PostListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'view'
  },
  initialize: function () {

  },
  render: function () {
    // WTF
    var list_html = Handlebars.compile(app.templates.postListView);
    var copy = list_html( this.model.toJSON() );

    this.$el.html( copy );

    return this.el;
  },
  view: function () {
    app.router.navigate('posts/' + this.model.get('id'), true);
  }
});

