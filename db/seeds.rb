# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# Create users:
rentee = User.create!(email: "rentee@example.com", password: "123456", lender: false)
lender = User.create!(email: "lender@example.com", password: "123456", lender: true)

# Create costumes:
costume1 = Costume.create!(name: "Magician", size: "S", price_per_day: 10.00, category: "Kids", description: "Great magician costume for kids!", user: lender)
costume1.photo.attach(io: File.open(Rails.root.join('app','assets','images','magician.jpg')), filename: 'magician.jpg', content_type: 'image/jpg')

costume2 = Costume.create!(name: "Pikachu", size: "XL", price_per_day: 15.00, category: "Anime", description: "Orignal Pickachu costume, top condition!", user: lender)
costume2.photo.attach(io: File.open(Rails.root.join('app','assets','images','pikachu.jpeg')), filename: 'pikachu.jpeg', content_type: 'image/jpeg')

costume3 = Costume.create!(name: "Astronaut", size: "M", price_per_day: 20.00, category: "Space", description: "Cool astronaut suit, including helmet!", user: lender)
costume3.photo.attach(io: File.open(Rails.root.join('app','assets','images','astronaut.jpeg')), filename: 'astronaut.jpeg', content_type: 'image/jpeg')

costume4 = Costume.create!(name: "Dog Unicorn", size: "S", price_per_day: 12.00, category: "Pet", description: "Turn your dog into a unicorn and be happy :)!", user: lender)
costume4.photo.attach(io: File.open(Rails.root.join('app','assets','images','unicorn.jpeg')), filename: 'unicorn.jpeg', content_type: 'image/jpeg')

#Create bookings:
Booking.create!(user: rentee, costume: costume1)
Booking.create!(user: rentee, costume: costume2)

