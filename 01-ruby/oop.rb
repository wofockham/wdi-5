require 'pry'
require 'pry-debugger'

class Person
  def initialize
    puts "OMG THIS WORKS"
  end

  def speak
    puts "Good afternoon"
  end

  def talk(words_to_say)
    puts "I like to say: #{ words_to_say }"
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

  def gender=(gender)
    @gender = gender
  end

  def gender
    @gender
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

binding.pry
