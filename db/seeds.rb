# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# search function gems
require "open-uri"
require "yaml"

Booking.destroy_all
Equipment.destroy_all
User.destroy_all

url_glider = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534414134/mehcblzp9os0geudrwlf.jpg"
url_boat = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534412096/yyuvmvgoiupzetjkovxa.jpg"
url_car = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534423734/rmm89ddllxjrqsy7pex7.jpg"
url_bicycle = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534423735/wq3wgouqyx9eqiop3sh7.jpg"
url_golf = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534414138/gchmtwdthfimp3esbtsv.jpg"
url_football = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499902/football.jpg"
url_tug = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499902/tug.jpg"
url_paume = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499902/Jeu_de_Paume.jpg"
url_helicopter = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499902/helicopter.jpg"
url_skydiving = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499902/skydiving.jpg"
url_snorkelling = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499902/snorkelling.jpg"
url_surfboard = "https://res.cloudinary.com/dyoy2poun/image/upload/v1534499903/surfboard.jpg"

user = User.new(
  email: "bob@example.com",
  name: "Bob",
  password: "123456"
  )
user.save!

equipment = Equipment.new(
  category: "Air",
  brand: "Glider",
  product_name: "Glider",
  size: "for 3 people",
  location: "Berlin, Mitte",
  price_per_day: 550
  )
equipment.user = user
equipment.remote_photo_url = url_glider
equipment.save!

equipment = Equipment.new(
  category: "Air",
  brand: "Sky Lovers",
  product_name: "Helicopter",
  size: "for 5 people",
  location: "Amsterdam",
  price_per_day: 4450
  )
equipment.user = user
equipment.remote_photo_url = url_helicopter
equipment.save!

equipment = Equipment.new(
  category: "Air",
  brand: "Sky Lovers",
  product_name: "Skydiving",
  size: "for 2 people",
  location: "Amsterdam",
  price_per_day: 600
  )
equipment.user = user
equipment.remote_photo_url = url_skydiving
equipment.save!

equipment = Equipment.new(
  category: "Water",
  brand: "Golden Bomber",
  product_name: "Boat",
  size: "L size",
  location: "Tokyo",
  price_per_day: 30
  )
equipment.user = user
equipment.remote_photo_url = url_boat
equipment.save!

equipment = Equipment.new(
  category: "Water",
  brand: "Golden Bomber",
  product_name: "Surfing Board",
  size: "L size",
  location: "Tokyo",
  price_per_day: 50
  )
equipment.user = user
equipment.remote_photo_url = url_surfboard
equipment.save!

equipment = Equipment.new(
  category: "Water",
  brand: "Great Ocean",
  product_name: "Snorkelling",
  size: "M size",
  location: "Bali",
  price_per_day: 20
  )
equipment.user = user
equipment.remote_photo_url = url_snorkelling
equipment.save!

equipment = Equipment.new(
  category: "Land",
  brand: "Beachbuggy",
  product_name: "Beachbuggy",
  size: "for 2 people",
  location: "Potsdam",
  price_per_day: 250
  )
equipment.user = user
equipment.remote_photo_url = url_car
equipment.save!

equipment = Equipment.new(
  category: "Land",
  brand: "Nike",
  product_name: "Beerbike",
  size: "for 12 people",
  location: "Berlin, Kreuzberg",
  price_per_day: 350
  )
equipment.user = user
equipment.remote_photo_url = url_bicycle
equipment.save!


equipment = Equipment.new(
  category: "Land",
  brand: "Golf",
  product_name: "Golf Clubs",
  size: "Adult",
  location: "Berlin, Mitte",
  price_per_day: 50
  )
equipment.user = user
equipment.remote_photo_url = url_golf
equipment.save!

equipment = Equipment.new(
  category: "Groups",
  brand: "Sports Love",
  product_name: "Football pitch",
  size: "for 20 people",
  location: "Paris",
  price_per_day: 300
  )
equipment.user = user
equipment.remote_photo_url = url_football
equipment.save!

equipment = Equipment.new(
  category: "Groups",
  brand: "Tug of War",
  product_name: "The War",
  size: "for 40 people",
  location: "Hannover",
  price_per_day: 30
  )
equipment.user = user
equipment.remote_photo_url = url_tug
equipment.save!

equipment = Equipment.new(
  category: "Groups",
  brand: "Banana sports",
  product_name: "Jeu de Paume",
  size: "for 4 people",
  location: "Berlin, Alexanderplatz",
  price_per_day: 30
  )
equipment.user = user
equipment.remote_photo_url = url_paume
equipment.save!
