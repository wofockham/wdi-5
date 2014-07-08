var lizzieTheCat = {
  age: 18,
  furColor: 'grey',
  meow: function() {
    console.log('meowww');
  },
  eat: function(food) {
    console.log('Yum, I love ' + food);
  },
  sleep: function(numMinutes) {
    for (var i = 0; i < numMinutes; i++) {
      console.log('z');
    }
  }
};

