# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
  require "open-uri"
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing database..."
Offer.destroy_all
Sneaker.destroy_all
User.destroy_all

  puts "database cleared"
  puts "creating users..."

# user1 = User.create!(
#   email: "user1@example.com",
#   password: "password"
# )
# user2 = User.create!(
#   email: "user2@example.com",
#   password: "password"
# )
# user3 = User.create!(
#   email: "user3@example.com",
#   password: "password"
# )
# marty_mcfly = User.create!(
#   email: "marty@mcfly.com",
#   password: "password"
# )
# benny_rodriguez = User.create!(
#   email: "benny@thesandlot.com",
#   password: "password"
# )
# forrest_gump = User.create!(
#   email: "forrest@gump.com",
#   password: "password"
# )
run_dmc = User.create!(
  email: "rundmc@hiphop.com",
  password: "password"
)
kanye_west = User.create!(
  email: "kanye@west.com",
  password: "password"
)
# michael_johnson = User.create!(
#   email: "michael@johnson.com",
#   password: "password"
# )

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
  user: kanye_west
)
sneaker_2 = Sneaker.create!(
  title: "Yeezy Boost 350 V2",
  brand: "Adidas",
  model: "Yeezy Boost 350",
  description: "The Yeezy Boost 350 V2 'Zebra' showcases a dual-tone Primeknit upper in white and core black.",
  size: 43,
  price: 220,
  status: 0,
  user: kanye_west
)
sneaker_3 = Sneaker.create!(
  title: 'Stan Smith',
  brand: "Adidas",
  model: "Stan Smith",
  description: "With a clean and minimalist look, the Adidas Stan Smith shoes keep the essence of the 1971 original.",
  size: 44,
  price: 80,
  status: 1,
  user: kanye_west
)
sneaker_4 = Sneaker.create!(
  title: "Nike Dunk Low Retro White Black",
  brand: "Nike",
  model: "Dunk Low",
  description: "Made famous in the college hoops scene, the Dunk Low now lives on in this silhouette that's ready for everyday wear.",
  size: 41,
  price: 150,
  status: 1,
  user: kanye_west
)
sneaker_5 = Sneaker.create!(
  title: "Nike Air Mag 'Back to the Future'",
  brand: "Nike",
  model: "Air Mag",
  description: "Marty McFly's futuristic Nike sneakers from 'Back to the Future Part II'.",
  size: 45,
  price: 10000,
  status: 0,
  user: kanye_west
)
sneaker_6 = Sneaker.create!(
  title: "Puma Future Rider Play On",
  brand: "Puma",
  model: "Future Rider",
  description: "Inspired by the 80s. Reimagined for today. Play On.",
  size: 44,
  price: 80,
  status: 0,
  user: kanye_west
)
sneaker_7 = Sneaker.create!(
  title: "Adidas Ultraboost DNA",
  brand: "Adidas",
  model: "Ultraboost DNA",
  description: "Running shoes that celebrate a rich legacy with modern innovations.",
  size: 46,
  price: 180,
  status: 1,
  user: kanye_west
)
sneaker_8 = Sneaker.create!(
  title: "New Balance 327",
  brand: "New Balance",
  model: "327",
  description: "Inspired by our 70s heritage designs, the 327 men's running shoes boast unmatched comfort and a casual aesthetic.",
  size: 43,
  price: 90,
  status: 0,
  user: kanye_west
)

sneaker_9 = Sneaker.create!(
  title: "Nike Mag",
  brand: "Nike",
  model: "Mag",
  description: "The self-lacing futuristic shoes from Back to the Future II.",
  size: 42,
  price: 10000,
  status: 1,
  user: kanye_west
)

sneaker_10 = Sneaker.create!(
  title: "Converse Chuck Taylor All-Stars",
  brand: "Converse",
  model: "Chuck Taylor All-Stars",
  description: "Classic sneakers, known for outrunning 'The Beast' in The Sandlot.",
  size: 42,
  price: 60,
  status: 1,
  user: kanye_west
)

sneaker_11 = Sneaker.create!(
  title: "Nike Cortez",
  brand: "Nike",
  model: "Cortez",
  description: "Forrest Gump's shoes during his cross-country run.",
  size: 44,
  price: 80,
  status: 1,
  user: kanye_west
)

sneaker_12 = Sneaker.create!(
  title: "Adidas Superstar",
  brand: "Adidas",
  model: "Superstar",
  description: "Made famous by the hip-hop group Run-DMC.",
  size: 45,
  price: 90,
  status: 1,
  user: kanye_west
)

sneaker_13 = Sneaker.create!(
  title: "Yeezy 700 V3",
  brand: "Adidas",
  model: "Yeezy 700 V3",
  description: "A part of Kanye West's Yeezy line with Adidas.",
  size: 46,
  price: 300,
  status: 1,
  user: kanye_west
)

sneaker_14 = Sneaker.create!(
  title: "Golden Spikes",
  brand: "Nike",
  model: "Golden Spikes",
  description: "Worn by Michael Johnson during his 200m world record race in Atlanta 1996.",
  size: 44,
  price: 1000,
  status: 0,
  user: kanye_west
)

file_1 = URI.open("https://images.stockx.com/images/Air-Jordan-1-Retro-High-Bred-Toe-Product.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&fm=webp&auto=compress&dpr=2&trim=color&updated_at=1606322598&q=75")
sneaker_1.photo.attach(io: file_1, filename: "Sneaker_1.img", content_type: "image/png")
sneaker_1.save

file_2 = URI.open("https://cdn.shopify.com/s/files/1/0020/2188/3950/products/ashblue_grande.png?v=1642706806")
sneaker_2.photo.attach(io: file_2, filename: "Sneaker_2.img", content_type: "image/png")
sneaker_2.save

file_3 = URI.open("https://assets.adidas.com/images/w_940,f_auto,q_auto/68ae7ea7849b43eca70aac1e00f5146d_9366/FX5502_01_standard.jpg")
sneaker_3.photo.attach(io: file_3, filename: "Sneaker_3.img", content_type: "image/png")
sneaker_3.save

file_4 = URI.open("https://cdn.shopify.com/s/files/1/0003/2689/3632/products/nike-nike-dunk-low-white-black-2021-w-sneakers-27594108502165.jpg?v=1655764751")
sneaker_4.photo.attach(io: file_4, filename: "Sneaker_4.img", content_type: "image/png")
sneaker_4.save


file_5 = URI.open("https://images.stockx.com/360/Nike-Air-Mag-Back-To-The-Future-BTTF/Images/Nike-Air-Mag-Back-To-The-Future-BTTF/Lv2/img01.jpg?fm=webp&auto=compress&w=480&dpr=2&updated_at=1647972404&h=320&q=75")
sneaker_5.photo.attach(io: file_5, filename: "Sneaker_5.img", content_type: "image/png")
sneaker_5.save

file_6 = URI.open("https://www.side-step.co.za/media/catalog/product/cache/f8df61b05911d279f59846ba6dcb8724/p/m/pma2196pn-puma-rider-blue-37114980-v1_jpg_3.jpg")
sneaker_6.photo.attach(io: file_6, filename: "Sneaker_6.img", content_type: "image/png")
sneaker_6.save

file_7 = URI.open("https://assets.adidas.com/images/w_1880,f_auto,q_auto/c608f554cb3b4d12b392af000188c513_9366/HQ4199_01_standard.jpg")
sneaker_7.photo.attach(io: file_7, filename: "Sneaker_7.img", content_type: "image/png")
sneaker_7.save

file_8 = URI.open("https://thefoschini.vtexassets.com/arquivos/ids/55006790-800-800?v=638195077575670000&width=800&height=800&aspect=true")
sneaker_8.photo.attach(io: file_8, filename: "Sneaker_8.img", content_type: "image/png")
sneaker_8.save

file_9 = URI.open("https://img.fruugo.com/product/9/18/586426189_max.jpg")
sneaker_9.photo.attach(io: file_9, filename: "Sneaker_9.img", content_type: "image/png")
sneaker_9.save

file_10 = URI.open("https://thefoschini.vtexassets.com/arquivos/ids/54174552-800-800?v=638190122782070000&width=800&height=800&aspect=true")
sneaker_10.photo.attach(io: file_10, filename: "Sneaker_10.img", content_type: "image/png")
sneaker_10.save

file_11 = URI.open("https://media.gq-magazine.co.uk/photos/642bf250b3a36f2c0564e370/master/w_1600%2Cc_limit/Cortez%25201.jpg")
sneaker_11.photo.attach(io: file_11, filename: "Sneaker_11.img", content_type: "image/png")
sneaker_11.save

file_12 = URI.open("https://assets.adidas.com/images/w_940,f_auto,q_auto/7ed0855435194229a525aad6009a0497_9366/EG4958_01_standard.jpg")
sneaker_12.photo.attach(io: file_12, filename: "Sneaker_12.img", content_type: "image/png")
sneaker_12.save

file_13 = URI.open("https://cdn.shopify.com/s/files/1/0601/6604/5888/products/18B7BE64-7C49-4BCB-85C4-4B64F927973E_1024x1024@2x.png?v=1631711776")
sneaker_13.photo.attach(io: file_13, filename: "Sneaker_13.img", content_type: "image/png")
sneaker_13.save

file_14 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX7kemAlKKkrlAfImVwqgD17PZkghOTIA8zfbs23qP0WtURTmy3E-p3r4lSF6hMR1S2wA&usqp=CAU")
sneaker_14.photo.attach(io: file_14, filename: "Sneaker_14.img", content_type: "image/png")
sneaker_14.save

puts "#{Sneaker.count} sneakers created"
