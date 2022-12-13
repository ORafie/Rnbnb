# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# user = User.create!(email: "flats@yahoo.com", password: "password")
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.create!([{
  flat_type: "flat",
  title: "beatifull flat",
  price: "100",
  description: "some words",
  capacity: 3,
  rating: 9.5,
  user_id: 2
},
{
  flat_type: "house",
  title: "big house",
  price: "1000",
  description: "some words about the house",
  capacity: 15,
  rating: 9.8,
  user_id: 2
},
{
  flat_type: "igloo",
  title: "cold igloo",
  price: "10",
  description: "a word about igloo",
  capacity: 2,
  rating: 5.5,
  user_id: 2
}])
p "Created #{Flat.count} Flats"
