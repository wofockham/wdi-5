# Line reader program

ARGF.each do |line|
  puts line if line =~ /fred/
end
