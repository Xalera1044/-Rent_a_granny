# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Grannies"
Granny.destroy_all
user = User.create(email: "a.n@mail.com", password: "123456")
Granny.create(first_name: "Laura", last_name: "Severus", age: "75", alive: "For Now", price_per_day: "150$", user_id:"1")
Granny.create(first_name: "Stephanie", last_name: "Lazarius", age: "89", alive: "Nope", price_per_day: "0$", user_id:"1")
Granny.create(first_name: "Maria", last_name: "Pouline", age: "96", alive: "Nope", price_per_day: "0$", user_id:"1")
Granny.create(first_name: "Elizabeth", last_name: "Adisson", age: "79", alive: "For Now", price_per_day: "1500$", user_id:"1")
Granny.create(first_name: "Sevda", last_name: "Bailey", age: "67", alive: "Yes", price_per_day: "190$", user_id:"1")
Granny.create(first_name: "Paula", last_name: "Hardley", age: "62", alive: "Yes", price_per_day: "260$", user_id:"1")
