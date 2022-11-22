# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Grannies"
Granny.destroy_all
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "For Now")
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "false")
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "false")
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "For Now")
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "For Now")
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "For Now")
