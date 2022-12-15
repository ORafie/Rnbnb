# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:
# user = User.create!(email: "flats@yahoo.com", password: "password")
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

user = User.create(email: 'asd@com.com', password: 'password')

file = URI.open("https://cdn4.site-media.eu/images/1024/3443091/GorkiApartmentsPenthouse2010.jpg")
flat = Flat.new(
  flat_type: "flat",
  title: "beautiful Flat",
  price: "100",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 3,
  rating: 9.5,
  user_id: user.id,
  address: "333 West 56th Street, New York City")
flat.photo.attach(io: file, filename: "flat.png", content_type: "image/png")
flat.save

file = URI.open("https://cdn.roompot.com/assets/imgs/ferienparks/niederlande/zeeland/roompot-beach-resort/beach-house/beach-house-6a/556942/unterkunft/945x630/1853588.jpg")
flat = Flat.new(
  flat_type: "house",
  title: "Beach Side Mansion",
  price: "1000",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 15,
  rating: 9.8,
  user_id: user.id,
  address: "Avenida de Reforma 13, Mexico City")
flat.photo.attach(io: file, filename: "house.png", content_type: "image/png")
flat.save

file = URI.open("https://cdn-datahub.visitfinland.com/images/74d96030-d2a2-11eb-a8b5-0d99be0b7375-Katkavaara%20igloo.JPG?s=1200")
flat = Flat.new(
  flat_type: "igloo",
  title: "Cold Igloo",
  price: "10",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 2,
  rating: 5.5,
  user_id: user.id,
  address: "Rue de Geneve 38, Lausanne")
flat.photo.attach(io: file, filename: "igloo.png", content_type: "image/png")
flat.save

file = URI.open("https://images.adsttc.com/media/images/5c5c/8a24/284d/d1d5/4a00/00ce/newsletter/-_Featured_Image.jpg?1549568538")
flat = Flat.new(
  flat_type: "roof-house",
  title: "Cool Roof",
  price: "150",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 5,
  rating: 9.5,
  user_id: user.id,
  address: "Berliner Strasse 17, Berlin")
flat.photo.attach(io: file, filename: "roof.png", content_type: "image/png")
flat.save

file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/de/ce/01/rangerwood-machan-jungle.jpg?w=700&h=-1&s=1")
flat = Flat.new(
  flat_type: "tree",
  title: "Innovative Tree Housing",
  price: "101",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 1,
  rating: 1.5,
  user_id: user.id,
  address: "Bennelong Point, Sydney")
flat.photo.attach(io: file, filename: "tree.png", content_type: "image/png")
flat.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/5783ea38440243fc31872a6e/1468531341109-BSJ617E9FE6T6O1MTS9R/image-asset.jpeg?format=1000w")
flat = Flat.new(
  flat_type: "submarine",
  title: "Yellow Submarine Room",
  price: "110",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 20,
  rating: 8.5,
  user_id: user.id,
  address: "Ocean Drive, Miami Beach")
flat.photo.attach(io: file, filename: "submarine.png", content_type: "image/png")
flat.save

p "Created #{Flat.count} Flats"
