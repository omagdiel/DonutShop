Donut.create!(title: "glazed", dough: 1, frosting: 0, price: 0.99)

User.create!(
   email: "admin@test.com",
   password: "asdfasdf",
   password_confirmation: "asdfasdf",
   roles: "site_admin"
)

puts "1 admin user created"

User.create!(
   email: "test@test.com",
   password: "asdfasdf",
   password_confirmation: "asdfasdf"
)

puts "1 regular user created"


Donut.create!(title: "glazed", dough: 0, frosting: 0, price: 0.99)

Donut.create!(title: "maple", dough: 1, frosting: 1, price: 0.99)

Donut.create!(title: "sprinkles", dough: 1, frosting: 0, topping: 0, price: 1.25)

Donut.create!(title: "maple bacon", dough: 1, frosting: 1, topping: 1, price: 1.99)
