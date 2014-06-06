$toothbrush_color = 'pink'
puts $toothbrush_color

another_toothbrush = 'green'

toothbrush = "some weird string"

def color_shower(toothbrush)
  toothbrush = toothbrush * 10
  puts toothbrush
  toothbrush
end

another_other_toothbrush = color_shower(another_toothbrush)
puts another_toothbrush
