# Line reader program

ARGF.each do |line|
  puts line unless line =~ /#/
end
