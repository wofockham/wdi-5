var app = app || {};

app.Post = Backbone.Model.extend({
  defaults: {
    id: 0,
    title: 'New post about Backbone',
    content: 'New post about Backbone content goes here'
  }
});
