# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing records
Restaurant.destroy_all

# Define an array of categories
categories = %w(chinese italian japanese french belgian)

# Seed 5 restaurant records with valid categories
5.times do |i|
  Restaurant.create!(
    name: "Restaurant #{i+1}",
    address: "Address #{i+1}",
    phone_number: "123-456-789#{i}",
    category: categories[i % categories.length] # This ensures the category is valid
  )
end
