# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# # Clear existing data
# Agent.destroy_all

# # Create sample agents
# Agent.create!(
#   [
#     {
#       name: "John Doe",
#       contact_information: "john@example.com | (123) 456-7890",
#       photo: "path/to/john_doe_photo.jpg" # Replace with the actual path to the image
#     },
#     {
#       name: "Jane Smith",
#       contact_information: "jane@example.com | (098) 765-4321",
#       photo: "path/to/jane_smith_photo.jpg" # Replace with the actual path to the image
#     },
#     {
#       name: "Emily Johnson",
#       contact_information: "emily@example.com | (555) 555-5555",
#       photo: "path/to/emily_johnson_photo.jpg" # Replace with the actual path to the image
#     }
#   ]
# )

# In db/seeds.rb
agent = Agent.create(name: "John Doe", contact_information: "john@example.com")
Property.create(name: "Luxury Apartment", price: 500000, location: "New York", agent: agent)

