# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing database..."
Offer.destroy_all
Sneaker.destroy_all
User.destroy_all

puts "database cleared"
puts "creating users..."

user1 = User.create!(
  email: "user1@example.com",
  password: "password"
)
user2 = User.create!(
  email: "user2@example.com",
  password: "password"
)
user3 = User.create!(
  email: "user3@example.com",
  password: "password"
)
marty_mcfly = User.create!(
  email: "marty@mcfly.com",
  password: "password"
)
benny_rodriguez = User.create!(
  email: "benny@thesandlot.com",
  password: "password"
)
forrest_gump = User.create!(
  email: "forrest@gump.com",
  password: "password"
)
run_dmc = User.create!(
  email: "rundmc@hiphop.com",
  password: "password"
)
kanye_west = User.create!(
  email: "kanye@west.com",
  password: "password"
)
michael_johnson = User.create!(
  email: "michael@johnson.com",
  password: "password"
)

puts "#{User.count} users created"

puts "Creating Sneakers..."
sneaker_1 = Sneaker.create!(
  title: "Air Jordan 1 Retro High OG",
  brand: "Nike",
  model: "Air Jordan 1",
  description: "The Air Jordan 1 Retro High OG returns the legendary silhouette to its most accurate-to-original shape and height.",
  size: 42,
  price: 160,
  status: 1,
  user_id: user1.id
)
sneaker_2 = Sneaker.create!(
  title: "Yeezy Boost 350 V2",
  brand: "Adidas",
  model: "Yeezy Boost 350",
  description: "The Yeezy Boost 350 V2 'Zebra' showcases a dual-tone Primeknit upper in white and core black.",
  size: 43,
  price: 220,
  status: 0,
  user_id: user2.id
)
sneaker_3 = Sneaker.create!(
  title: 'Stan Smith',
  brand: "Adidas",
  model: "Stan Smith",
  description: "With a clean and minimalist look, the Adidas Stan Smith shoes keep the essence of the 1971 original.",
  size: 44,
  price: 80,
  status: 1,
  user_id: user3.id
)
sneaker_4 = Sneaker.create!(
  title: "Nike Dunk Low Retro White Black",
  brand: "Nike",
  model: "Dunk Low",
  description: "Made famous in the college hoops scene, the Dunk Low now lives on in this silhouette that's ready for everyday wear.",
  size: 41,
  price: 150,
  status: 1,
  user_id: user1.id
)
sneaker_5 = Sneaker.create!(
  title: "Nike Air Mag 'Back to the Future'",
  brand: "Nike",
  model: "Air Mag",
  description: "Marty McFly's futuristic Nike sneakers from 'Back to the Future Part II'.",
  size: 45,
  price: 10000,
  status: 0,
  user_id: user2.id
)
sneaker_6 = Sneaker.create!(
  title: "Puma Future Rider Play On",
  brand: "Puma",
  model: "Future Rider",
  description: "Inspired by the 80s. Reimagined for today. Play On.",
  size: 44,
  price: 80,
  status: 0,
  user_id: user3.id
)
sneaker_7 = Sneaker.create!(
  title: "Adidas Ultraboost DNA",
  brand: "Adidas",
  model: "Ultraboost DNA",
  description: "Running shoes that celebrate a rich legacy with modern innovations.",
  size: 46,
  price: 180,
  status: 1,
  user_id: user1.id
)
sneaker_8 = Sneaker.create!(
  title: "New Balance 327",
  brand: "New Balance",
  model: "327",
  description: "Inspired by our 70s heritage designs, the 327 men's running shoes boast unmatched comfort and a casual aesthetic.",
  size: 43,
  price: 90,
  status: 0,
  user_id: user2.id
)

sneaker_9 = Sneaker.create!(
  title: "Nike Mag",
  brand: "Nike",
  model: "Mag",
  description: "The self-lacing futuristic shoes from Back to the Future II.",
  size: 42,
  price: 10000,
  status: 1,
  user_id: marty_mcfly.id
)

sneaker_10 = Sneaker.create!(
  title: "Converse Chuck Taylor All-Stars",
  brand: "Converse",
  model: "Chuck Taylor All-Stars",
  description: "Classic sneakers, known for outrunning 'The Beast' in The Sandlot.",
  size: 42,
  price: 60,
  status: 1,
  user_id: benny_rodriguez.id
)

sneaker_11 = Sneaker.create!(
  title: "Nike Cortez",
  brand: "Nike",
  model: "Cortez",
  description: "Forrest Gump's shoes during his cross-country run.",
  size: 44,
  price: 80,
  status: 1,
  user_id: forrest_gump.id
)

sneaker_12 = Sneaker.create!(
  title: "Adidas Superstar",
  brand: "Adidas",
  model: "Superstar",
  description: "Made famous by the hip-hop group Run-DMC.",
  size: 45,
  price: 90,
  status: 1,
  user_id: run_dmc.id
)

sneaker_13 = Sneaker.create!(
  title: "Yeezy 700 V3",
  brand: "Adidas",
  model: "Yeezy 700 V3",
  description: "A part of Kanye West's Yeezy line with Adidas.",
  size: 46,
  price: 300,
  status: 1,
  user_id: kanye_west.id
)

sneaker_14 = Sneaker.create!(
  title: "Golden Spikes",
  brand: "Nike",
  model: "Golden Spikes",
  description: "Worn by Michael Johnson during his 200m world record race in Atlanta 1996.",
  size: 44,
  price: 1000,
  status: 0,
  user_id: michael_johnson.id
)

puts "#{Sneaker.count} sneakers created"
