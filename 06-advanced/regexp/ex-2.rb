# Line reader program

ARGF.each do |line|
  puts line if line =~ /fred/i # //i is a case "i"nsensitive regular expression.
end
