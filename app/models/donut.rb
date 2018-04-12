class Donut < ApplicationRecord
  enum dough: [:regular, :cake, :chocolate, :chocolate_cake, :strawberry, :vegan]
  enum frosting: [:glazed, :maple, :chocolate_frosting, :strawberry_frosting]
  enum topping: [:sprinkles, :bacon, :chocolate_chips, :oreo, :candy, :cookie]
	acts_as_votableend
end
