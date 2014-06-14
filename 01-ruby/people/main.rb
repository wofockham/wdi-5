require_relative 'person'

f = File.new('database.txt', 'a+')

print 'Add a person? '
response = gets.chomp.downcase

while response == 'y'
  print "Name: "
  name = gets.chomp

  print "Age: "
  age = gets.chomp

  print "Gender: "
  gender = gets.chomp

  f.puts "#{name}, #{age}, #{gender}"

  print 'Add another person? '
  response = gets.chomp.downcase
end

f.close


f = File.new('database.txt', 'r')
people = []

f.each do |line|
  things = line.split(', ')
  person = Person.new(things[0], things[1], things[2])
  people << person
end

f.close

people.each do |p|
  puts p.to_s
end