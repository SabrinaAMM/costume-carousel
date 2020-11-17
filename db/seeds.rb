# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "rentee@example.com", password: "123456", lender: false)
User.create!(email: "lender@example.com", password: "123456", lender: true)
Costume.create!(name: "Cost1", size: "XL", price_per_day: 5.15, category: "Carneval", description: "Great costume", user_id: 2)
Costume.create!(name: "Cost2", size: "S", price_per_day: 5.15, category: "Scary", description: "Great costume !!", user_id: 2)
Booking.create!(user_id: 2, costume_id: 1)
Booking.create!(user_id: 2, costume_id: 1)
