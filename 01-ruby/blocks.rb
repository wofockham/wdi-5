brothers = ['groucho marx', 'harpo marx', 'chico marx', 'gummo marx']

brothers.each do |b|
  p b.upcase
end

brothers.each { |b| p b.upcase } # Equivalent to above

brothers.each do |brother|
  unless brother == 'chico marx'
    p brother.split(' ').map(&:capitalize).join(' ')
  else
    p brother
  end
end

33.times do
  puts "Happy birthday to you"
end
puts "Happy birthday Rodrigo"
puts "Happy birthday to you"

10.downto(1) do |i|
  puts i
end
puts "Blast off!"

squares = []
[1, 2, 3, 9].each do |n|
  squares << (n * n)
end
p squares

fullnames = []
["Groucho", "Harpo", "Chico", "Zeppo"].each do |name|
  fullnames << "#{name} Marx"
end
p fullnames


# As above but using map() to reduce the amount of code we need to write.
squares = [1, 2, 3, 9].map do |n|
  n * n
end
p squares

fullnames = ["Groucho", "Harpo", "Chico", "Zeppo"].map do |name|
  "#{name} Marx"
end
p fullnames


brothers = ["Groucho", "Harpo", "Chico", "Zeppo"]
brothers.shuffle.each_with_index do |brother_name, index|
  puts "#{brother_name} is Joel's no. #{ index + 1 } favourite Marx brother"
end

nums = [1, 3, 6, 8, 11, 15, 20, 23]
evens = nums.select do |n|
  n.even? # select the numbers for which this test returns true.
end
p evens

odds = nums.reject do |n|
  n.even?
end
p odds

"this is the coolest thing in the whole world".split(' ').each do |w|
  if w.length.odd?
    puts w.upcase
  else
    puts w.downcase
  end
end

s = "this is the coolest thing in the whole world".split(' ').map do |w|
  if w.length.odd?
    w.upcase
  else
    w.downcase
  end
end.join(' ')

p s


# split, join
# shuffle
# index

