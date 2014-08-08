# Line reader program

ARGF.each do |line|
  puts line if line =~ /(\S)\1/ # \1 is a "back reference" to what we captured in ()
end
