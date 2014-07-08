var catFactory = function (ageInYears, color, religion) {
  var cat = {
    age: ageInYears,
    furColor: color,
    religion: religion,
    meow: function() {
      console.log('meowww');
    },
    eat: function(food) {
      console.log('Yum, I merely tolerate ' + food);
    },
    sleep: function(numMinutes) {
      for (var i = 0; i < numMinutes; i++) {
        console.log('z');
      }
    },
    destroyFurniture: function () {
      console.log('Muahahaha');
    }
  };

  return cat;
};

var syntaxTheCat = catFactory(25, 'black and white tuxedo', 'Satanic');

var lizzieTheCat = catFactory();
lizzieTheCat.age = 18;
lizzieTheCat.furColor = 'grey';
lizzieTheCat.religion = 'Quaker';

var daemonTheCat = catFactory(1, 'black');
