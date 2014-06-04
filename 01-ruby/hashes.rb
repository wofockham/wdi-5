require 'pry'
require 'pry-debugger'

brothers = {
  :groucho => {
    :vice => 'cigars',
    :instrument => 'guitar'
  },

  :harpo => {
    :vice => 'women',
    :instrument => 'harp'
  },

  :chico => {
    :vice => ['women', 'booze'],
    :instrument => 'piano'
  }
}

binding.pry
