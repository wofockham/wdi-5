# require 'pry'
# require 'pry-debugger'

print "Enter a number to square: "
number = gets.to_i
# binding.pry
number = number * number
puts "The square number is #{ number }"
binding.pry
