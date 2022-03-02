chef_names = ["Anthony Bourdain", "Bobby Flay", "Julia Child"]

print "Creating restaurants"
50.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    rating: rand(1..5),
    chef_name: chef_names.sample
  )

  rand(5..10).times do
    Review.create!(
      content: Faker::Lorem.sentence(word_count: rand(10..20)),
      restaurant: restaurant
    )
  end
  print "."
end
puts " done!"
