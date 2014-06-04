#require 'pry'
#require 'pry-debugger'

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

#binding.pry

cutlery = ['fork', 'spoon', 'knife', 'spork']
cutlery.each do |piece|
  puts "A piece of cutlery is a #{ piece.upcase }."
end

brothers.each do |name, info|
  puts "#{ name.to_s.upcase } plays #{ info[:instrument] }"
end

