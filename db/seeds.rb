# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_a = User.create!(username: "blei", name: "Belinda", password: "hi")
user_b = User.create!(username: "sdrangel", name: "Shane", password: "testing")
puts "done making users"


essay_a = Essay.create!(title: "Hello World")
essay_b = Essay.create!(title: "My little pony")
puts "done making essays"

# Where Watson API should go 
response_a = Response.create!(paragraph: "I always liked organes", essay_id: essay_a.id, user_id: user_a.id)
response_b = Response.create!(paragraph: "But apples are better", essay_id: essay_b.id, user_id: user_b.id)

puts "done making responses"