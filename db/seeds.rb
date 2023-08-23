puts "Cleaning DB"
Instrument.destroy_all
User.destroy_all

puts "Creating users"

user1 = User.create(email: "marco@gmail.com", password: "123456")
user2 = User.create(email: "alex@gmail.com", password: "123456")

puts "Creating instruments"

Instrument.create(
  product_name: "fender stratocaster",
  price: 58.50,
  location: "12 Sclater St, London E1 6HT",
  category: "guitar",
  img_url: "https://d1aeri3ty3izns.cloudfront.net/media/92/921755/600/preview.jpg",
  user: user1)

Instrument.create(
  product_name: "Roland juno",
  price: 650.00,
  location: "Soames Walk, London SE10 0AX",
  category: "synthesizer",
  img_url: "https://d1aeri3ty3izns.cloudfront.net/media/82/826283/600/preview.jpg",
  user: user2)

puts "Done!"
