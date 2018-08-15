Booking.destroy_all
Equipment.destroy_all
User.destroy_all

url_glider = "http://res.cloudinary.com/dyoy2poun/image/upload/v1534335446/or7tue10xsspqzvdtlic.jpg"
url_boat = "http://res.cloudinary.com/dyoy2poun/image/upload/v1534335495/iqcca0lpza8cvnnuifuh.jpg"
url_car = "http://res.cloudinary.com/dyoy2poun/image/upload/v1534337995/errfxvahmhcj7ndnotgt.jpg"
url_bicycle = "http://res.cloudinary.com/dyoy2poun/image/upload/v1534335550/xs9qts53qpnabgck14gw.jpg"
url_golf = "http://res.cloudinary.com/dyoy2poun/image/upload/v1534337193/hqbpanstvzhjhbwwe9jt.jpg"


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
  category: "Water",
  brand: "Golden Bomber",
  product_name: "Boat",
  size: "L size",
  location: "Berlin, Stadmitte",
  price_per_day: 5
  )
equipment.user = user
equipment.remote_photo_url = url_boat
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



