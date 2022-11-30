puts "Seeding"
Pizza.create(name: "Hawaian Pizza", ingredients: Faker::Food.description)
Pizza.create(name: "Peperoni Pizza", ingredients: Faker::Food.description)
Pizza.create(name: "Veggie Pizza", ingredients: Faker::Food.description)
Pizza.create(name: "Chicken Pizza", ingredients: Faker::Food.description)
Pizza.create(name: "Smokie Pizza", ingredients: Faker::Food.description)
Pizza.create(name: "Meat Pizza", ingredients: Faker::Food.description)
Pizza.create(name: "Corn Pizza", ingredients: Faker::Food.description)

5.times do
 Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address)
end

20.times do
 RestaurantPizza.create(pizza_id: rand(0..8), restaurant_id: rand(0..6), price: rand(0..31))
end
puts "Seeding done"
