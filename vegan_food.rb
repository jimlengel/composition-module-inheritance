require_relative 'expire'
require_relative 'fridge'

class VeganFood
  # all vegan food expires - require module
  include Expire

  attr_accessor :age

  CONTAINS_NO_MEAT = true

  def initialize(args = {})
    @age = args.fetch(:age, 0)
  end

  def check_if_expired
    expire?(@age, self.class::VEGAN_FOOD_EXPIRATION)
  end

end

# thing = VeganFood.new
# p thing.expire?(4, 5)



# module Expire

#   def expire?(age, expiration)
#     age >= expiration ? true : false
#   end

# end

