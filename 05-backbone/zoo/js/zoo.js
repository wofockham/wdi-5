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
  render: function () {
    var view = this;
    view.collection.each(function (animal) {
      var $p = $('<p/>');
      $p.text(animal.get('type'));
      view.$el.append($p);
    });
  }
});

var animal = new Animal();
var gerry = new Animal({type: 'giraffe', ecosystem: 'savannah', stripes: 7});
var berty = new Animal({type: 'butterfly', ecosystem: 'mud flats'});

var gaZoo = new Zoo([animal, gerry, berty]);

$(document).ready(function () {
  var zooView = new ZooView({collection: gaZoo});
  zooView.render();
});








