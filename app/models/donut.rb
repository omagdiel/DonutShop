class Donut < ApplicationRecord

  enum dough: {regular: 0, chocolate: 1, cake: 2}
  enum frosting: {no_frosting: 0, glazed: 1, maple: 2, chocolate_frosting: 3}
  enum topping: { no_topping: 0, sprinkles: 1, bacon: 2, gold_flakes: 3 }
  acts_as_votable

  def select_field_values(form_builder)
    form_builder.object.class.public_send(attribute.to_s.pluralize).keys.map do |v|
      [v.titleize, v]
    end
  end


	
end

