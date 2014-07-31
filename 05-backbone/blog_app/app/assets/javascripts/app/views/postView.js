var app = app || {};

app.PostView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    this.render();
  },
  render: function () {
    var post_html = Handlebars.compile(app.templates.postView);
    var copy = post_html( this.model.toJSON() );

    this.$el.html( copy );
  }
});
