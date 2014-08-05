array_range = [20..0]
loop_range = [21..0] # 21 is the threshold

$(document).ready ->
  $('.slug').on 'click', ->
    $(this).fadeOut()

items = ['beer', "more beer", "further beer"]
fridge = 'full of beer'

beer_lover = true if fridge == 'full of beer'

if fridge == 'full of beer' and items.length > 0
  beer_lover = true

for item in items
  console.log item

for i in [50..0]
  console.log i

for item in items when item isnt 'more beer'
  console.log item

drinkBeer = ->
  item = items.pop()
  console.log item

while items.length > 0 then drinkBeer()

# Object example
fridge =
  unplugged: true
  beer: items
  chips: ['potato', 'bbq']
  consumeBeer: ->
    @beer.pop() # Not an instance! @ refers to 'this'

author = 'Wittgenstein'
quote = "A picture is a fact -- #{ author } AKA Witto"









