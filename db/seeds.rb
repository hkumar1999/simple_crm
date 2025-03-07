# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


Customer.create!([
  { full_name: "Alice Johnson", phone_number: "1234567890", email: "alice@example.com", notes: "Regular customer" },
  { full_name: "Bob Smith", phone_number: "9876543210", email: nil, notes: "Prefers SMS" },
  { full_name: "Charlie Brown", phone_number: "5555555555", email: "charlie@example.com", notes: "VIP" },
  { full_name: "David Wilson", phone_number: "2223334444", email: nil, notes: "Referral from Alice" },
  { full_name: "Emma Watson", phone_number: "9998887777", email: "emma@example.com", notes: "Recent signup" }
])
