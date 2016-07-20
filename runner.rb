require_relative 'bananas'
require_relative 'apples'
require_relative 'kale'
require_relative 'broccoli'
require_relative 'fridge'

nanner = Bananas.new({age: 2})
red_delicious = Apples.new({age: 3})
our_fridge = Fridge.new
p our_fridge.place_food_in_fridge(red_delicious)
p our_fridge.place_food_in_fridge(nanner)

p our_fridge.time_passes

p nanner.check_if_expired


