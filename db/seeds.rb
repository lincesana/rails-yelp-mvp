# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
bella_napoli = {name: "Bella Napoli", address: "Villarroel, Barcelona", category: "italian"}
parking_pizza = {name: "Parking Pizza", address: "Passeig Sant Joan, Barcelona", category: "italian"}
takumi_ramen = {name: "Takumi Ramen", address: "Carrer Balmes, Barcelona", category: "japanese"}
ping_pong = {name: "Ping Pong", address: "Southbank, London", category: "italian"}
la_balabusta = {name: "La Balabusta", address: "Henry Granades, Barcelona", category: "belgian"}

[bella_napoli, parking_pizza, takumi_ramen, ping_pong, la_balabusta].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
