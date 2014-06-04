nums = [6, 5, 4, 3, 2, 1]
p nums[0]
p nums[1]
p nums.first
p nums.last
nums.push 505
p nums.pop
nums << 808 # This is "appending" 808 to the array.

p nums

strings = ["Welcome", "to"]
strings << "array country"

p strings.shift

strings.unshift ["Say", "hello"]
p strings[0][1].upcase

strings.flatten!
strings.reverse!

p strings.pop
strings << "I"
strings.push "say"

#strings[1] = nil
strings.delete_at 1

p strings


bros = []
p bros.length
bros[1001] = 'groucho'
p bros.length

ints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p 1..10
p (1..10).to_a
p (1...10).to_a


lottery_numbers = [432847394, 3487348734, 344138479, 12948102948]
# p lottery_numbers.sample

works = ["Dubliners", "Portrait", "Ulysses", "Finnegans"]
p works
p works.include? "Portrait"
p works.include? 'Giacomo'

p works.index "Portrait"

title = "Ulysses"
index = works.index title
p works[index]


a = ["Groucho", "Groucho", "Harpo", "Groucho", "Harpo"]
p a
a.uniq!
p a













