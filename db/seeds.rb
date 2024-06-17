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

Customer.create!(full_name: "John Black", phone_number: "1234567890", email_address: nil, notes: "First customer.")
Customer.create!(full_name: "Jane Smith", phone_number: "2345678901", email_address: "jane@gmail.com", notes: "Second customer.")
Customer.create!(full_name: "Mike Johnson", phone_number: "3456789012", email_address: nil, notes: "Third customer.")
Customer.create!(full_name: "Alice Brown", phone_number: "4567890123", email_address: "alice@gmail.com", notes: "Fourth customer.")
Customer.create!(full_name: "Bob White", phone_number: "5678901234", email_address: nil, notes: "Fifth customer.")


