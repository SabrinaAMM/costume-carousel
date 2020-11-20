# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

# Create users:
rentee = User.create!(email: "rentee@example.com", password: "123456", lender: false)
lender = User.create!(email: "lender@example.com", password: "123456", lender: true)
lender2 = User.create!(email: "lender2@example.com", password: "123456", lender: true)

# Create costumes:
costume1 = Costume.create!(name: "Magician", size: "S", price_per_day: 10.00, category: "Kids", description: "Great magician costume for kids!", user: lender, address: "Kartoffelgleis, Munich")
costume1.photo.attach(io: File.open(Rails.root.join('app','assets','images','magician.jpg')), filename: 'magician.jpg', content_type: 'image/jpg')

costume2 = Costume.create!(name: "Pikachu", size: "XL", price_per_day: 15.00, category: "Anime", description: "Orignal Pickachu costume, top condition!", user: lender, address: "Globe Rd, London")
costume2.photo.attach(io: File.open(Rails.root.join('app','assets','images','pikachu.jpeg')), filename: 'pikachu.jpeg', content_type: 'image/jpeg')

costume3 = Costume.create!(name: "Astronaut", size: "M", price_per_day: 20.00, category: "Space", description: "Cool astronaut suit, including helmet!", user: lender, address: "Calle de Sandoval, Madrid")
costume3.photo.attach(io: File.open(Rails.root.join('app','assets','images','astronaut.jpeg')), filename: 'astronaut.jpeg', content_type: 'image/jpeg')

costume4 = Costume.create!(name: "Dog Unicorn", size: "S", price_per_day: 12.00, category: "Pet", description: "Turn your dog into a unicorn and be happy :)!", user: lender2, address: "Viale Druso, Bolzano")
costume4.photo.attach(io: File.open(Rails.root.join('app','assets','images','unicorn.jpeg')), filename: 'unicorn.jpeg', content_type: 'image/jpeg')

costume5 = Costume.create!(name: "Chef", size: "S", price_per_day: 14.00, category: "Kids", description: "Be an awesome chef (muffin not included)!", user: lender2, address: "Gotlandsgatan, Stockholm")
costume5.photo.attach(io: File.open(Rails.root.join('app','assets','images','chef.jpeg')), filename: 'chef.jpeg', content_type: 'image/jpeg')

costume6 = Costume.create!(name: "Fairy", size: "M", price_per_day: 30.00, category: "Fantasy", description: "Great fairy costume, including nice wings!", user: lender2, address: "Hammer Landstrasse, Hamburg")
costume6.photo.attach(io: File.open(Rails.root.join('app','assets','images','fairy.jpeg')), filename: 'fairy.jpeg', content_type: 'image/jpeg')

costume7 = Costume.create!(name: "Fire Woman", size: "S", price_per_day: 24.50, category: "Kids", description: "Save your neighborhood from fire - and have fun screaming at everyone with your megaphone!", user: lender2, address: "Bischofsweg, Frankfurt")
costume7.photo.attach(io: File.open(Rails.root.join('app','assets','images','firewoman.jpeg')), filename: 'firewoman.jpeg', content_type: 'image/jpeg')

costume8 = Costume.create!(name: "Indian Princess", size: "M", price_per_day: 40.50, category: "Royal", description: "Make an impression and dress as an Indian princess!", user: lender2, address: "Rue de Dublin, Brussels")
costume8.photo.attach(io: File.open(Rails.root.join('app','assets','images','indianprincess.jpeg')), filename: 'indianprincess.jpeg', content_type: 'image/jpeg')

costume9 = Costume.create!(name: "Marshmello", size: "XL", price_per_day: 10.00, category: "Music", description: "Go incognito and dress like Marshmello!", user: lender2, address: "Werfstraat, Amsterdam")
costume9.photo.attach(io: File.open(Rails.root.join('app','assets','images','marshmellow.jpeg')), filename: 'marshmellow.jpeg', content_type: 'image/jpeg')

costume10 = Costume.create!(name: "Santa Claus", size: "L", price_per_day: 23.00, category: "Fantasy", description: "You can never go wrong with a great Santa costume!", user: lender, address: "Damstien, Copenhagen")
costume10.photo.attach(io: File.open(Rails.root.join('app','assets','images','santaclaus.jpeg')), filename: 'santaclaus.jpeg', content_type: 'image/jpeg')

costume11 = Costume.create!(name: "Spiderman", size: "M", price_per_day: 23.00, category: "Fantasy", description: "Be Spidey, be happy!", user: lender, address: "Rue Boulle, Paris")
costume11.photo.attach(io: File.open(Rails.root.join('app','assets','images','spiderman.jpeg')), filename: 'spiderman.jpeg', content_type: 'image/jpeg')

costume12 = Costume.create!(name: "Witch Hat", size: "M", price_per_day: 5.00, category: "Fantasy", description: "Just a witch hat, nothing more, nothing less :)!", user: lender, address: "U Slatin, Praha")
costume12.photo.attach(io: File.open(Rails.root.join('app','assets','images','witchhat.jpeg')), filename: 'witchhat.jpeg', content_type: 'image/jpeg')

costume13 = Costume.create!(name: "Catwomen Mask", size: "M", price_per_day: 5.00, category: "Comic", description: "Meow Meow! With this mask you take over control!", user: lender2, address: "Auenweg, Cologne")
costume13.photo.attach(io: File.open(Rails.root.join('app','assets','images','catmask.jpeg')), filename: 'catmask.jpeg', content_type: 'image/jpeg')

costume14 = Costume.create!(name: "Black Bow Tie", size: "L", price_per_day: 6.00, category: "Gentleman", description: "Look like a real Gentleman! Cheers!", user: lender, address: "Brinken, Oslo")
costume14.photo.attach(io: File.open(Rails.root.join('app','assets','images','bowtie.jpeg')), filename: 'bowtie.jpeg', content_type: 'image/jpeg')

costume15 = Costume.create!(name: "Ghost", size: "M", price_per_day: 5.00, category: "Scary", description: "Plain white simple Ghost dress!", user: lender2, address: "Schackstrasse, Hannover")
costume15.photo.attach(io: File.open(Rails.root.join('app','assets','images','ghost.jpeg')), filename: 'ghost.jpeg', content_type: 'image/jpeg')

costume16 = Costume.create!(name: "Carneval Mask", size: "M", price_per_day: 8.00, category: "Carneval", description: "Perfect Mask for the next street carneval!", user: lender, address: "Krowia, Warsaw")
costume16.photo.attach(io: File.open(Rails.root.join('app','assets','images','carnevalmask.jpeg')), filename: 'carnevalmask.jpeg', content_type: 'image/jpeg')

costume17 = Costume.create!(name: "Brown Bear", size: "XL", price_per_day: 5.00, category: "Animals", description: "Cozy, Fuzzy brownie Bear!", user: lender2, address: "Gurkgasse, Vienna")
costume17.photo.attach(io: File.open(Rails.root.join('app','assets','images','bear.jpeg')), filename: 'bear.jpeg', content_type: 'image/jpeg')

costume18 = Costume.create!(name: "Pink Boheme Dress", size: "M", price_per_day: 10.00, category: "Princess", description: "Look like a real Lady from last century", user: lender, address: "Via Morigi, Milan")
costume18.photo.attach(io: File.open(Rails.root.join('app','assets','images','pinkdress.jpeg')), filename: 'pinkdress.jpeg', content_type: 'image/jpeg')

costume19 = Costume.create!(name: "Safety Suit", size: "L", price_per_day: 5.00, category: "Streetstyle", description: "Safety first! Protect yourself! Avoid Risks!", user: lender2, address: "Radarstrasse, Bern")
costume19.photo.attach(io: File.open(Rails.root.join('app','assets','images','safetysuit.jpeg')), filename: 'safetysuit.jpeg', content_type: 'image/jpeg')

costume20 = Costume.create!(name: "Black Balloon", size: "M", price_per_day: 22.00, category: "Weird", description: "Always wanted to be a black ball? Great! Here you go!", user: lender, address: "Englerallee, Berlin")
costume20.photo.attach(io: File.open(Rails.root.join('app','assets','images','blackbaloon.jpeg')), filename: 'blackbaloon.jpeg', content_type: 'image/jpeg')

costume21 = Costume.create!(name: "Dinosaur", size: "M", price_per_day: 5.00, category: "Animals", description: "Sweet Dino costume here! Please rent it! Need the money!", user: lender2, address: "Minerviusstrasse, Munich")
costume21.photo.attach(io: File.open(Rails.root.join('app','assets','images','dino.jpeg')), filename: 'dino.jpeg', content_type: 'image/jpeg')

costume22 = Costume.create!(name: "Wrestling Suit", size: "S", price_per_day: 6.00, category: "Fantasy", description: "I wore this almost daily in office, but now I found another costume. So now I can rent this to you! Cool, right?", user: lender, address: "Rheinstrasse, Munich")
costume22.photo.attach(io: File.open(Rails.root.join('app','assets','images','wrestling.jpeg')), filename: 'wrestling.jpeg', content_type: 'image/jpeg')


# Create bookings:
