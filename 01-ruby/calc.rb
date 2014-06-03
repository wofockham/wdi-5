def read_choice
  basic_calc
  gets.chomp.downcase
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
end

def advanced_calc
  print "(p)ower, (s)qrt: "
end


response = read_choice

while response != 'q'
  response = read_choice
end