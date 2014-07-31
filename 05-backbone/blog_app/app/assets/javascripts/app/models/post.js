var app = app || {};

app.Post = Backbone.Model.extend({
  defaults: {
    title: 'New post about Backbone',
    content: 'New post about Backbone content goes here'
  }
});
