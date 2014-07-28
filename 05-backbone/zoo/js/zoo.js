var Animal = Backbone.Model.extend({
  defaults: {
    type: 'animal',
    ecosystem: '',
    stripes: 0
  },
  initialize: function () {
    console.log("I am an animal");
    this.on('change:type', function (animal) {
      var type = animal.get('type');
      alert("I am now a " + type);
    });
  }
});

var Zoo = Backbone.Collection.extend({
  model: Animal
});

var ZooView = Backbone.View.extend({
  el: '#main',
  initialize: function () {

  },
  events: {
    'click p': 'paraClick'
  },
  render: function () {
    var view = this;
    view.$el.empty();
    view.collection.each(function (animal) {
      var $p = $('<p/>');
      $p.text(animal.get('type'));
      var $a = $('<a>');
      $a.text('click here');
      $a.attr('href', '#animals/' + animal.cid);
      $p.append($a);
      view.$el.append($p);
    });
  },
  paraClick: function () {
    alert('thank you for clicking a paragraph');
  }
});

var animal = new Animal();
var gerry = new Animal({type: 'giraffe', ecosystem: 'savannah', stripes: 7});
var berty = new Animal({type: 'butterfly', ecosystem: 'mud flats'});

var gaZoo = new Zoo([animal, gerry, berty]);

var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'animals/:id': 'viewAnimal',
    '*actions': 'defaultRoute'
  },

  index: function () {
    console.log('you found the home page');
    var zooView = new ZooView({collection: gaZoo});
    zooView.render();
  },

  viewAnimal: function (id) {
    console.log('you are viewing animal ' + id);
  },

  defaultRoute: function () {
    console.log(404);
    location.hash = '';
  }
});

$(document).ready(function () {
  var router = new AppRouter();
  Backbone.history.start();
});








