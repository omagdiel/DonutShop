module DonutsHelper

def custom_donut_price(dough, frosting, topping)

  @customPrice = 0

  if dough == 'regular'
    doughPrice = 0.50
  elsif dough == 'chocolate'
    doughPrice = 0.60
  elsif dough == 'cake'
    doughPrice = 0.70
  end

  if frosting == 'no_frosting'
    frostingPrice = 0.0
  elsif frosting == 'glazed'
    frostingPrice = 0.50
  elsif frosting == 'maple'
    frostingPrice = 0.60
  elsif frosting == 'chocolate_frosting'
    frostingPrice = 0.70
  end

  if topping == 'no_topping'
    toppingPrice = 0.0
  elsif topping == 'sprinkles'
    toppingPrice = 0.60
  elsif topping == 'bacon'
    toppingPrice = 0.70
  elsif topping == 'gold_flakes'
    toppingPrice = 75    
  end

  @customPrice = doughPrice + frostingPrice + toppingPrice
    
end

end
