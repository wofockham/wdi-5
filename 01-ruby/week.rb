# 1
days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

# 2
days_of_the_week.unshift days_of_the_week.pop

# 3
days = [days_of_the_week[1..5], [days_of_the_week.last, days_of_the_week.first]]

# 4
days.pop

# 5
days.flatten!.sort!
p days