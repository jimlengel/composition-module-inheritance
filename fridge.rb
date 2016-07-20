require_relative 'vegan_food'

class Fridge
  attr_accessor :food

  def initialize(args = {})
    @food = args.fetch(:food, [])
  end

  def place_food_in_fridge(food)
    @food << food
  end

  def time_passes
    @food.map do |item|
      item.age += 1
    end
  end

end
