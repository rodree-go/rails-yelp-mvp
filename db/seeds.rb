# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Ton's Palace", address: "Pleasant Run", phone_number: "9722235601", category: "chinese")
puts "Create Ton's Palace"
Restaurant.create!(name: "Cici's Pizza", address: "Lancaster", phone_number: "2145785855", category: "italian")
puts "Create Cici's Pizza"
Restaurant.create!(name: "Sushi Paul", address: "Dallas", phone_number: "7951255478", category: "japanese")
puts "Create Sushi Paul"
Restaurant.create!(name: "Le Penotierv", address: "Paris", phone_number: "2520874695", category: "french")
puts "Create Le Penotierv"
Restaurant.create!(name: "Belgo", address: "Bruges", phone_number: "9658745632", category: "belgian")
puts "Create Belgo"

puts "Finished! Created #{Restaurant.count} restaurants."
