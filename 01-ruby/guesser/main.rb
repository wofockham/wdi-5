require 'pry'
require 'pry-debugger'

require_relative 'guesser.rb'

game = Guesser.new(10)
# game2 = Guesser.new # Defaults to 100

puts "Welcome to the guessing game"
puts "Please guess the secret number which is less than #{game.max_guess}"

user_guess = gets.chomp.to_i

until (game.try(user_guess))
  puts "Wrong! Try again"
  puts "You have made #{game.guesses} attempts."
  user_guess = gets.chomp.to_i
end

puts "You guessed it"

binding.pry
