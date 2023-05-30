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

puts "#{Sneaker.count} sneakers created"
