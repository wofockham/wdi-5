require 'pry'
require 'pry-debugger'

class Animal
  def masticate
    puts "chew chew chew"
  end
end


class Person < Animal
  attr_accessor :age, :name, :gender
  def initialize(age=nil, name=nil, gender=:indeterminate)
    @name = name
    @age = age
    @gender = gender
  end

  def speak
    puts "Good afternoon"
  end

  def talk(words_to_say)
    puts "I like to say: #{ words_to_say }"
  end

  def to_s
    "#{ @name } is a #{ @age } year old #{ @gender }"
  end
end







binding.pry

