# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

# Create users:
rentee = User.create!(email: "rentee@example.com", password: "123456", lender: false)
lender = User.create!(email: "lender@example.com", password: "123456", lender: true)
lender2 = User.create!(email: "lender2@example.com", password: "123456", lender: true)

# Create costumes:
costume1 = Costume.create!(name: "Magician", size: "S", price_per_day: 10.00, category: "Kids", description: "Great magician costume for kids!", user: lender)
costume1.photo.attach(io: File.open(Rails.root.join('app','assets','images','magician.jpg')), filename: 'magician.jpg', content_type: 'image/jpg')

costume2 = Costume.create!(name: "Pikachu", size: "XL", price_per_day: 15.00, category: "Anime", description: "Orignal Pickachu costume, top condition!", user: lender)
costume2.photo.attach(io: File.open(Rails.root.join('app','assets','images','pikachu.jpeg')), filename: 'pikachu.jpeg', content_type: 'image/jpeg')

costume3 = Costume.create!(name: "Astronaut", size: "M", price_per_day: 20.00, category: "Space", description: "Cool astronaut suit, including helmet!", user: lender)
costume3.photo.attach(io: File.open(Rails.root.join('app','assets','images','astronaut.jpeg')), filename: 'astronaut.jpeg', content_type: 'image/jpeg')

costume4 = Costume.create!(name: "Dog Unicorn", size: "S", price_per_day: 12.00, category: "Pet", description: "Turn your dog into a unicorn and be happy :)!", user: lender2)
costume4.photo.attach(io: File.open(Rails.root.join('app','assets','images','unicorn.jpeg')), filename: 'unicorn.jpeg', content_type: 'image/jpeg')

costume5 = Costume.create!(name: "Chef", size: "S", price_per_day: 14.00, category: "Kids", description: "Be an awesome chef (muffin not included)!", user: lender2)
costume5.photo.attach(io: File.open(Rails.root.join('app','assets','images','chef.jpeg')), filename: 'chef.jpeg', content_type: 'image/jpeg')

costume6 = Costume.create!(name: "Fairy", size: "M", price_per_day: 30.00, category: "Fantasy", description: "Great fairy costume, including nice wings!", user: lender2)
costume6.photo.attach(io: File.open(Rails.root.join('app','assets','images','fairy.jpeg')), filename: 'fairy.jpeg', content_type: 'image/jpeg')

costume7 = Costume.create!(name: "Fire Woman", size: "S", price_per_day: 24.50, category: "Kids", description: "Save your neighborhood from fire - and have fun screaming at everyone with your megaphone!", user: lender2)
costume7.photo.attach(io: File.open(Rails.root.join('app','assets','images','firewoman.jpeg')), filename: 'firewoman.jpeg', content_type: 'image/jpeg')

costume8 = Costume.create!(name: "Indian Princess", size: "M", price_per_day: 40.50, category: "Royal", description: "Make an impression and dress as an Indian princess!", user: lender2)
costume8.photo.attach(io: File.open(Rails.root.join('app','assets','images','indianprincess.jpeg')), filename: 'indianprincess.jpeg', content_type: 'image/jpeg')

costume9 = Costume.create!(name: "Marshmello", size: "XL", price_per_day: 10.00, category: "Music", description: "Go incognito and dress like Marshmello!", user: lender2)
costume9.photo.attach(io: File.open(Rails.root.join('app','assets','images','marshmellow.jpeg')), filename: 'marshmellow.jpeg', content_type: 'image/jpeg')

costume10 = Costume.create!(name: "Santa Claus", size: "L", price_per_day: 23.00, category: "Fantasy", description: "You can never go wrong with a great Santa costume!", user: lender)
costume10.photo.attach(io: File.open(Rails.root.join('app','assets','images','santaclaus.jpeg')), filename: 'santaclaus.jpeg', content_type: 'image/jpeg')

costume11 = Costume.create!(name: "Spiderman", size: "M", price_per_day: 23.00, category: "Fantasy", description: "Be Spidey, be happy!", user: lender)
costume11.photo.attach(io: File.open(Rails.root.join('app','assets','images','spiderman.jpeg')), filename: 'spiderman.jpeg', content_type: 'image/jpeg')

costume12 = Costume.create!(name: "Witch Hat", size: "M", price_per_day: 5.00, category: "Fantasy", description: "Just a witch hat, nothing more, nothing less :)!", user: lender)
costume12.photo.attach(io: File.open(Rails.root.join('app','assets','images','witchhat.jpeg')), filename: 'witchhat.jpeg', content_type: 'image/jpeg')

# Create bookings:
