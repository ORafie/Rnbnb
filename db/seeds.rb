# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# user = User.create!(email: "flats@yahoo.com", password: "password")
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

user = User.create(email: 'asd@com.com', password: 'password')

Flat.create!([{
  flat_type: "flat",
  title: "beautiful Flat",
  price: "100",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 3,
  rating: 9.5,
  user_id: user.id,
  address: "333 West 56th Street, New York City"
},
{
  flat_type: "house",
  title: "Beach Side Mansion",
  price: "1000",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 15,
  rating: 9.8,
  user_id: user.id,
  address: "Avenida de Reforma 13, Mexico City"
},
{
  flat_type: "igloo",
  title: "Cold Igloo",
  price: "10",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  capacity: 2,
  rating: 5.5,
  user_id: user.id,
  address: "Rue de Geneve 38, Lausanne"
}])

p "Created #{Flat.count} Flats"
