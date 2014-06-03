# Prompt the user for their name.
puts "What is your first name?"
first_name = gets.chomp

puts "What is your surname?"
surname = gets.chomp

fullname = "#{first_name} #{surname}"

puts "Where do you live?"
address = gets.chomp

puts "Your name is #{fullname} and you live at #{address}."
