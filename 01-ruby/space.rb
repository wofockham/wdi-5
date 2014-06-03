# Returns the length multiplied by the width.
def area (length, width)
  length * width
end

def volume (length, width, height)
  area(length, width) * height
end

def square (x)
  x * x
end

def cube (x)
  x ** 3
end

def name_tag_generator(first, last, gender, age)
  if gender == 'f'
    if age < 19
      "Miss #{ first } #{ last }"
    elsif age > 80
      "Old Lady #{ last }"
    else
      "Ms #{ first } #{ last }"
    end
  else
    "Mr #{ first } #{ last }"
  end
end